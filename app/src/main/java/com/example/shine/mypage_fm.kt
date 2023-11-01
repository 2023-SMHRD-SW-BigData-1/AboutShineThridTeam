package com.example.shine

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.android.volley.toolbox.JsonRequest
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.VO.ShineMember
import com.google.gson.Gson
import org.json.JSONArray
import org.json.JSONException
import org.json.JSONObject


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

        // Volley Request의 경우 Activity의 RequestQueue에 추가 해야 함
        // 따라서 RequestQueue 변수 reqQueue를 얻어오려면 context 대신 requireActivity()를 사용
        val reqQueue: RequestQueue = Volley.newRequestQueue(requireContext())



        tv_modify.setOnClickListener {

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

        val jsonObjectRequest = JsonObjectRequest(Request.Method.POST,
            "http://172.30.1.46:8582/api/userinfo", null,
            Response.Listener<JSONObject> { response ->
                try {
                    // JSON 응답을 파싱
                        val userNick = response.getString("userNick")
                        val userEmail = response.getString("userEmail")
                        val userPhone = response.getString("userPhone")
                        val userAdd = response.getString("userAdd")

                    tv_nickname.text = "$userNick"
                    tv_email.text =  "$userEmail"
                    tv_phone.text = "$userPhone"
                    tv_add.text = "$userAdd"

                } catch (e: Exception) {
                    e.printStackTrace()
                }
            },
            Response.ErrorListener { error ->
                // 에러 처리
                Log.e("UserInfoError", error.message.toString())
            })


        reqQueue.add(jsonObjectRequest)
        return mypageV
    }
}

