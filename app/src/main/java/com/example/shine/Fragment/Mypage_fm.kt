package com.example.shine.Fragment

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.android.volley.AuthFailureError
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.toolbox.JsonArrayRequest
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.Volley
import com.example.shine.MypageModifyActivity
import com.example.shine.R
import com.example.shine.VO.ParamsVO
import com.google.gson.Gson
import org.json.JSONArray
import org.json.JSONObject
import java.nio.charset.Charset


class mypage_fm : Fragment() {




    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?


    ): View? {
       var mypageV = inflater.inflate(R.layout.fragment_mypage_fm, container, false)

//        var MemberItem : ArrayList<ShineMember> = ArrayList()

        var tv_mypost : TextView = mypageV.findViewById(R.id.tv_mypost)
        var tv_modify : TextView = mypageV.findViewById(R.id.tv_modify)

        var tv_nickname : TextView = mypageV.findViewById(R.id.tvNickname)
        var tv_email : TextView = mypageV.findViewById(R.id.tvEmail)
        var tv_phone : TextView = mypageV.findViewById(R.id.tvPhone)
        var myphoto : ImageView = mypageV.findViewById(R.id.imgMyphoto)
        var tv_add : TextView = mypageV.findViewById(R.id.tv_add)
        var imgMod : ImageView = mypageV.findViewById(R.id.imgMO)
        var imgMY : ImageView = mypageV.findViewById(R.id.imgMY)

        // Volley Request의 경우 Activity의 RequestQueue에 추가 해야 함
        // 따라서 RequestQueue 변수 reqQueue를 얻어오려면 context 대신 requireActivity()를 사용
        val reqQueue: RequestQueue = Volley.newRequestQueue(requireContext())



        tv_modify.setOnClickListener {

            val intent = Intent(context, MypageModifyActivity::class.java)
            startActivity(intent)
        }


        imgMod.setOnClickListener {
            val intent = Intent(context, MypageModifyActivity::class.java)
            startActivity(intent)
        }


        tv_mypost.setOnClickListener{

            val myPostFragment = mypost_fm()
            // fragment끼리 바꿔줄때 사용
           parentFragmentManager.beginTransaction().replace(R.id.fl, myPostFragment)
            .addToBackStack(null) // 이전 Fragment를 스택에 추가하여 뒤로 가기 버튼으로 이동 가능
            .commit()
        }

        imgMY.setOnClickListener {
            val myPostFragment = mypost_fm()
            parentFragmentManager.beginTransaction().replace(R.id.fl, myPostFragment)
                .addToBackStack(null) // 이전 Fragment를 스택에 추가하여 뒤로 가기 버튼으로 이동 가능
                .commit()
        }


        var preferences =  requireContext().getSharedPreferences("Mypreferences", Context.MODE_PRIVATE)
        var savedToken = preferences.getString("token", null)
        var savedNickNm = preferences.getString("userNickNm",null)

        tv_nickname.text = "$savedNickNm"


        val selectRe = object : JsonArrayRequest(
            Request.Method.POST,
            "http://172.30.1.46:8582/user/info", null,

            { response ->

                Log.d("user", response.toString())

                try {

                    val jsonObject = response.getJSONObject(0)

                    // JSON 응답을 파싱

                        val userEmail = jsonObject.getString("userEmail")
                        val userPhone = jsonObject.getString("userPhone")
                        val userAdd = jsonObject.getString("userAdd")

                    tv_nickname.text = "$savedNickNm"
                    tv_email.text =  "$userEmail"
                    tv_phone.text = "$userPhone"
                    tv_add.text = "$userAdd"

                } catch (e: Exception) {
                    e.printStackTrace()
                }
            },
            { error ->
                // 에러 처리
                Log.e("UserInfoError", error.message.toString())

            })    {
            @Throws(AuthFailureError::class)
            override fun getHeaders(): Map<String, String> {
                val headers = HashMap<String, String>()
                headers["Authorization"] = "Bearer $savedToken"
                return headers
            }
            override fun getParams(): Map<String, String> {
                val params = HashMap<String, String>()

                return params
            }
            override fun getBody(): ByteArray {
                val lm = ParamsVO(savedNickNm.toString(), "")
                val json = Gson().toJson(lm)
                return json.toByteArray(Charset.forName("UTF-8"))
            }
            override fun getBodyContentType(): String {
                return "application/json; charset=utf-8"
            }


        }


        reqQueue.add(selectRe)
        return mypageV
    }
}


