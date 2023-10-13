package com.example.shine

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.provider.MediaStore
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.MultiAutoCompleteTextView
import androidx.activity.result.contract.ActivityResultContracts
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale

class BoardWriteActivity : AppCompatActivity() {


    lateinit var imgAdd : ImageView
    lateinit var etTitle : EditText
    lateinit var ctContent : MultiAutoCompleteTextView
    lateinit var btnUpload : Button

    //lateinit var  reqQueue: RequestQueue

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_board_write)

        imgAdd = findViewById(R.id.imgAdd)
        etTitle = findViewById(R.id.etTitle)
        ctContent = findViewById(R.id.ctContent)
        btnUpload = findViewById(R.id.btnUpload)

        val boardRef

       // reqQueue= Volley.newRequestQueue(this)

        imgAdd.setOnClickListener {
            //갤러리는 내부 설치 어플 -> 암묵적(묵시적)인텐트 사용 - action
            // 갤러리 사진 선택 후 가지고 돌아옴        //mediastore
            val intent = Intent(Intent.ACTION_PICK, MediaStore.Images.Media.INTERNAL_CONTENT_URI)

            launcher.launch(intent)


        }

        btnUpload.setOnClickListener {

            val title = etTitle.text.toString()
            val content = ctContent.text.toString()
            val currentTime = Calendar.getInstance().time

            val time = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.KOREA).format(currentTime)


        }


    }
                    //laucher를 담아서 laucher변수로 사용도와줌
                                            // resiter의 자료형 . 안에 startactivityforresult(
    val launcher = registerForActivityResult(ActivityResultContracts.StartActivityForResult()){

                            // 내가보낸 요청에 따른 결과값 맞는지
                        if(it.resultCode == RESULT_OK){
                            // 현재 함수 : it / 받아오는 데이터 : data / 실제 결과값 : data

                            // Resource : res폴더에 저장되어 있는 이미지의 id값을 통해서 view setting
                            // URI : Intent를 실행시키면 결과값으로 uri 타입을 받아오는 곳
                            imgAdd.setImageURI(it.data?.data)


                        }



                    }

















}