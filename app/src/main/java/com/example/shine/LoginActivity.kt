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
import com.google.gson.Gson

class LoginActivity : AppCompatActivity() {


    lateinit var  loginEmail : EditText
    lateinit var  loginPw : EditText
    lateinit var  btn_login: Button

    lateinit var  reqQueue: RequestQueue
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)

        loginEmail = findViewById(R.id.loginEmail)
        loginPw = findViewById(R.id.loginPw)
        btn_login = findViewById(R.id.btn_login)

        reqQueue = Volley.newRequestQueue(this@LoginActivity)

        btn_login.setOnClickListener {


            val inputEmail = loginEmail.text.toString()
            val inputPw = loginPw.text.toString()

            val request = object: StringRequest(
                Request.Method.POST,// 요청메서드
                "http://172.30.1.46:8582/shine/login",
                {
                        response ->
                    Log.d("response", response.toString()) // "식별", 넘어오는 값
                    Toast.makeText(this,"로그인 성공", Toast.LENGTH_SHORT).show()
                    if(response=="Success"){
                        //loginactivity로 전환
                        var intent = Intent(this,MainActivity::class.java)
                        startActivity(intent)
                    }else{
                        Toast.makeText(this,"로그인 실패", Toast.LENGTH_SHORT).show()
                    }
                },
                {
                        error ->
                    Log.d("error", error.toString())
                    Toast.makeText(this,"error발생", Toast.LENGTH_SHORT).show()
                }
            ){

                override fun getParams(): MutableMap<String,String> {
                    val params: MutableMap<String,String> = HashMap<String,String>()

                    val smv:ShineMember = ShineMember("",inputEmail,"","",inputPw,"")
                    params.put("ShineMember", Gson().toJson(smv)) // json 형태의 문자로 바꿔줘야 통신 할때 편함 => gson라이브러리가 해줌 -> 설치

                    return params


                }
            }

            reqQueue.add(request)


        }







    }
}