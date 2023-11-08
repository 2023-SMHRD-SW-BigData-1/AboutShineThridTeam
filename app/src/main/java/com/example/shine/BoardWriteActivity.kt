package com.example.shine

import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.drawable.BitmapDrawable
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.provider.ContactsContract.Data
import android.provider.MediaStore
import android.util.Log
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.Toast
import androidx.core.graphics.drawable.toDrawable
import com.android.volley.AuthFailureError
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.Fragment.post_fm
import com.example.shine.Fragment.postdetail_fm
import com.example.shine.VO.CommuVO
import com.google.gson.Gson
import okhttp3.Callback
import okhttp3.MediaType
import okhttp3.RequestBody
import retrofit2.Call
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.create
import java.io.ByteArrayOutputStream
import java.nio.charset.Charset

class BoardWriteActivity : AppCompatActivity() {

    lateinit var imgAdd: ImageView
    lateinit var etTitle: EditText
    lateinit var etContent: EditText
    lateinit var btnUpload: Button
    lateinit var btnGellery: Button
    lateinit var reqQueue: RequestQueue
    lateinit var mtFile : ByteArray
    // val imgUrl = "C:/Users/smhrd/Desktop/royal2/Directory/upload/filein"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_board_write)

        imgAdd = findViewById(R.id.imgAdd)
        etTitle = findViewById(R.id.etTitle2)
        etContent = findViewById(R.id.etContent)
        btnUpload = findViewById(R.id.btnUpload)
        btnGellery = findViewById(R.id.btnGellery)


        reqQueue = Volley.newRequestQueue(this@BoardWriteActivity)



        imgAdd.setOnClickListener {
            val intent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)
            startActivityForResult(intent, 1)
            // data = imgUpload()

        }

        btnGellery.setOnClickListener {
            val intent = Intent(Intent.ACTION_PICK, MediaStore.Images.Media.INTERNAL_CONTENT_URI)
            startActivityForResult(intent, 2)
        }


        btnUpload.setOnClickListener {
            val title = etTitle.text.toString()
            val content = etContent.text.toString()

            if (imgAdd.drawable == null) {
                Toast.makeText(this, "Please select an image", Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }



            val savedToken = getSharedPreferences("Mypreferences", Context.MODE_PRIVATE).getString("token", null)
            val savedNickNm = getSharedPreferences("Mypreferences", Context.MODE_PRIVATE).getString("userNickNm", null)

            if (savedToken == null || savedNickNm == null) {
                Toast.makeText(this, "Authentication information not found", Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            val imageBitmap = (imgAdd.drawable as BitmapDrawable).bitmap
            val lm = CommuVO(savedNickNm, title, content)
            val json = Gson().toJson(lm)

            val url = "http://172.30.1.46:8582/commu/registration"
            // val imgUrl = "C:/Users/smhrd/Desktop/royal2/Directory/upload/filein"
            // retrofit
            val requestFile = RequestBody.create(MediaType.parse("image/*"), mtFile)

            val retrofit = Retrofit.Builder()
                .baseUrl(url).addConverterFactory(GsonConverterFactory.create())
                .build()

            val apiService = retrofit.create(ApiService::class.java)
            val call = apiService.uploadImage(requestFile)
            call.enqueue(object : retrofit2.Callback<ImageUploadResponse>{
                override fun onResponse(
                    call: Call<ImageUploadResponse>,
                    response: retrofit2.Response<ImageUploadResponse>
                ) {
                    if(response.isSuccessful){
                        val uploadResponse = response.body()
                        val imageUrl = uploadResponse?.imgUrl
                    }
                }

                override fun onFailure(call: Call<ImageUploadResponse>, t: Throwable) {
                    TODO("Not yet implemented")
                }
            })



            // Volley
            val stringRequest = object : StringRequest(
                Request.Method.POST,
                url,
                Response.Listener { response ->
                    Log.d("Commres", response)
                    Toast.makeText(this, "글 작성 성공", Toast.LENGTH_SHORT).show()
                },
                Response.ErrorListener { error ->
                    Log.e("Commerr", error.toString())
                    Toast.makeText(this, "글 작성 실패", Toast.LENGTH_SHORT).show()
                }) {
                @Throws(AuthFailureError::class)
                override fun getHeaders(): Map<String, String> {
                    val headers = HashMap<String, String>()
                    headers["Authorization"] = "Bearer $savedToken"
                    return headers
                }



                override fun getParams(): Map<String, String> {
                    val params = HashMap<String, String>()
                    params["title"] = title
                    params["content"] = content
                    params["userNick"] = savedNickNm
                   //  Log.d("adminMulti", savedNickNm)
                     //data = imgUpload()
                    params["mtFile"] = mtFile.toString()
                    Toast.makeText(this@BoardWriteActivity, mtFile.toString(), Toast.LENGTH_SHORT).show()
                    // params["mtFile"] = mtFile
                    // Log.d("adminMulti", data.toString())
                    //  val dataPart = DataPart("img.jpg", mtFile,"image/jpeg")
                    // params["mtFile"] = dataPart
                    // Log.d("mtFileName", dataPart.toString())
                    return params
                }

                override fun getBodyContentType(): String {
                    return "application/json; charset=utf-8"
                }


                override fun getBody(): ByteArray {
                    return json.toByteArray(Charset.forName("UTF-8"))
                }
            }

            reqQueue.add(stringRequest)
        }
    }

    // 이미지 업로드
    fun imgUpload(imgBitmap : Bitmap?) : ByteArray{

        val baos = ByteArrayOutputStream()
        imgBitmap?.compress(Bitmap.CompressFormat.JPEG, 100, baos)

        mtFile = baos.toByteArray()
        return mtFile
    }


    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if (resultCode == RESULT_OK) {
            when (requestCode) {
                1 -> {
                    val imageBitmap = data?.extras?.get("data") as Bitmap?
                    if (imageBitmap != null) {

                        imgAdd.setImageBitmap(imageBitmap)
                        mtFile = imgUpload(imageBitmap)
                    }
                }
                2 -> {
                    val imageUri = data?.data
                    if (imageUri != null) {
                        imgAdd.setImageURI(imageUri)
                    }
                }
            }
        }
    }



}
