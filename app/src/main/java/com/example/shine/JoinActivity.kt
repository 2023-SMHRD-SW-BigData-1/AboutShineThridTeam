package com.example.shine

import android.content.ContextParams
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
import java.util.Queue

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
                "http://172.30.1.46:8582/shine/join", // 요청경로
                {
                    res ->
                    Log.d("JoinRes", res.toString())

                },
                {
                    err->
                    Log.d("JoinErr", err.toString())
                    Toast.makeText(this,"error발생",Toast.LENGTH_SHORT).show()

                }

            ){// 요청 파라미터 담아서 보내기 위한
                // StringRequest객체의  getParams라는 메서드 원하는것(6가지)만 보내기 위해 재정의(override!)
                override fun getParams(): MutableMap<String,String> {
                    //(map , list) -> interface
                    //(hashmap, arraylist) -> class --> 실제 구현하는 애
                    // -> 변수로 담을 땐 더 유연하게 쓰기 위해 interface(상위)로 업캐스팅해서 사용

                    //MutableMap 자체로는 객체 생성 x
                    val params:MutableMap<String,String> = HashMap<String,String>()
                    val sm:ShineMember = ShineMember(inputName,inputEmail,inputNickname,inputAddress,inputPW,inputPhone)
                                          // andmemer -> json
                                          // json 형태의 문자로 바꿔줘야 통신 할때 편함
                                          // => gson라이브러리가 해줌 -> 설치
                    params.put("ShineMember", Gson().toJson(sm))

                    return  params


                }

            }
            // queue안에 request객체 추가 해줘야만 서버로 요청&응답 가능
            reqQueue.add(request)


        }

    }
}