package com.example.shine

import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.VO.LoginMember
import com.google.gson.Gson
import io.jsonwebtoken.Claims
import io.jsonwebtoken.Jwts
import io.jsonwebtoken.security.Keys
import org.json.JSONObject
import java.nio.charset.Charset
import android.util.Base64

//import com.blacklog.fragmentdata.databinding.ActivityMainBinding
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
                "http://172.30.1.46:8582/auth/login",

                {
                        response ->
                    Log.d("Logres", response.toString()) // "식별", 넘어오는 값

                    var jsonResponse = JSONObject(response)
                    var token = jsonResponse.getString("token")
                    // JWT 토큰을 디코드하여 아이디 추출
                    val userNickNm = decodeJwtToken(token)

                    // 서버에서 받아온 토큰 정보를 SharedPreferences 기능을 사용하여 저장
                    val preferences = getSharedPreferences("Mypreferences", Context.MODE_PRIVATE)
                    val editor = preferences.edit()
                    editor.putString("token", "$token")
                    editor.putString("userNickNm","$userNickNm")
                    editor.apply()

                    Log.d("token", "token: $token")
                    Log.d("userNickNm", "userNickNm: $userNickNm")

                    if(response==response){
                        val intent = Intent(this,MainActivity::class.java)
                        startActivity(intent)
                        Toast.makeText(this,"로그인 성공", Toast.LENGTH_SHORT).show()

                    }else {
                        Toast.makeText(this,"일치하지 않아요", Toast.LENGTH_SHORT).show()
                    }
                },
                {
                        error ->
                    Log.d("Logerr", error.toString())
                    Toast.makeText(this,"로그인 실패", Toast.LENGTH_SHORT).show()
                }
            ) {
                override fun getBodyContentType(): String {
                    return "application/json; charset=utf-8"
                }

                override fun getBody(): ByteArray {
                    val lm = LoginMember(inputEmail, inputPw)
                    val json = Gson().toJson(lm)
                    return json.toByteArray(Charset.forName("UTF-8"))
                }
            }
            reqQueue.add(request)
        }
    }


//                override fun getParams(): MutableMap<String,String> {
//                    val params: MutableMap<String,String> = HashMap<String,String>()
//
//                    val lm: LoginMember = LoginMember(inputEmail,inputPw)
//
//                    params.put("securedUsername", inputEmail)
//                    params.put("securedPassword", inputPw)
//                    return params


//                }


    fun decodeJwtToken(jwtToken: String): String? {
        val signingKey = "lLz0wjFXoLhdj4xfGX4gc192O29JBRkcSF9DmPkyYVOn6gCAUa"
        val signingKeyBytes: ByteArray = Base64.decode(signingKey, Base64.DEFAULT)

        try {
            val claims: Claims = Jwts.parserBuilder()
                .setSigningKey(Keys.hmacShaKeyFor(signingKeyBytes))
                .build()
                .parseClaimsJws(jwtToken)
                .body



            // 아이디 값을 가져오기
            val userId = claims["userNickNm"] as String

            return userId
        } catch (e: Exception) {
            // JWT 디코드 중 오류 발생 시 처리
            e.printStackTrace()
            return null
        }
    }

}