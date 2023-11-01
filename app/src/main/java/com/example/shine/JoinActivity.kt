package com.example.shine

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.VO.ShineMember
import com.google.gson.Gson

class JoinActivity : AppCompatActivity() {

    lateinit var joinName: EditText
    lateinit var joinEmail: EditText
    lateinit var joinAddress : EditText
    lateinit var joinNickname :EditText
    lateinit var joinPW :EditText
    lateinit var joinPhone: EditText
    lateinit var btnJoin : Button

    lateinit var reqQueue: RequestQueue

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_join)

        joinName = findViewById(R.id.joinName)
        joinEmail = findViewById(R.id.joinEmail)
        joinAddress = findViewById(R.id.joinAddress)
        joinNickname =findViewById(R.id.joinNickname)
        joinPW =findViewById(R.id.joinPW)
        joinPhone = findViewById(R.id.joinPhone)
        btnJoin = findViewById(R.id.btn_Join)

        reqQueue =Volley.newRequestQueue(this@JoinActivity)


        btnJoin.setOnClickListener {

            //EditText에 작성된 6가지 가져오기
            val inputName = joinName.text.toString()
            val inputEmail = joinEmail.text.toString()
            val inputNickname = joinNickname.text.toString()
            val inputAddress = joinAddress.text.toString()
            val inputPW = joinPW.text.toString()
            val inputPhone = joinPhone.text.toString()


            // 서버로 요청할 수 있도록 만들어주는 객체
            // StringRequest 라는 객체 만들기 ==> volley 라이브러리 사용
            //                          (속성들 넣어줌)
            // object :  무명객체 ( 일회성의 객체 생성할때 쓰는 키워드)
            val request = object :StringRequest(
                Request.Method.POST, //요청 메서드
                "http://172.30.1.46:8582/auth/signup", // 요청경로
                {
                    res ->
                    Log.d("JoinRes", res.toString())
                    if(res==res){
                        Toast.makeText(this,"회원가입 성공",Toast.LENGTH_SHORT).show()
                        //loginactivity로 전환
                        val intent = Intent(this, LoginActivity::class.java)

                        startActivity(intent)
                    }else{
                        Toast.makeText(this,"회원가입 실패",Toast.LENGTH_SHORT).show()
                    }

                },
                {
                    err->
                    Log.d("JoinErr", err.toString())
                    Toast.makeText(this,"error발생",Toast.LENGTH_SHORT).show()

                }

            ){

                override fun getBodyContentType(): String {
                    return "application/json; charset=utf-8"
                }

                override fun getBody(): ByteArray {
                    val sm = ShineMember(inputName, inputEmail, inputNickname, inputAddress, inputPW, inputPhone)
                    val json = Gson().toJson(sm)
                    return json.toByteArray(Charsets.UTF_8)
                }
            }

            reqQueue.add(request)
        }

    }
}