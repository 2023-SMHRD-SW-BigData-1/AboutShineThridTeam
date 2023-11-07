package com.example.shine.Fragment

import android.content.Context
import android.graphics.drawable.BitmapDrawable
import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.android.volley.AuthFailureError
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.toolbox.StringRequest
import com.example.shine.Adapter.CommentAdapter
import com.example.shine.R
import com.example.shine.VO.CommentVO
import com.example.shine.VO.CommuVO
import com.google.gson.Gson
import java.nio.charset.Charset
import java.util.Calendar

class postdetail_fm : Fragment() {

    lateinit var commentList : ArrayList<CommentVO>
    lateinit var reqQueue: RequestQueue

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var postdetailV = inflater.inflate(R.layout.fragment_postdetail_fm, container, false)


        val bundle = arguments
        val title = bundle?.getString("commuTitle")
        val writer = bundle?.getString("userNick" )
        val date = bundle?.getString("date")
        val img = bundle?.getInt("img",0)
        val content = bundle?.getString("commuText")

        var tv_title : TextView = postdetailV.findViewById(R.id.title_tv)
        var tv_writer : TextView = postdetailV.findViewById(R.id.name_tv)
        var tv_date : TextView = postdetailV.findViewById(R.id.date_tv)
        var img_img : ImageView = postdetailV.findViewById(R.id.image_img)
        var tv_content : TextView = postdetailV.findViewById(R.id.content_tv)
        var rv :RecyclerView= postdetailV.findViewById(R.id.rv)
        var btn : Button = postdetailV.findViewById(R.id.btn)
        var et_comment : EditText = postdetailV.findViewById(R.id.et_comment)

        val today = Calendar.getInstance()
        val year = today.get(Calendar.YEAR)
        val month = today.get(Calendar.MONTH)+1
        val day = today.get(Calendar.DAY_OF_MONTH)
        val todaydate = "$year-$month-$day"

        //<글 디테일>
        tv_title.text = title
        tv_writer.text = writer
        if (img != null) {
            img_img.setImageResource(img)
        }
        tv_content.text = content
        tv_date.text = date


        commentList = ArrayList()
        val adapter = CommentAdapter(requireContext(), R.layout.comment, commentList)
        rv.adapter = adapter
        rv.layoutManager = LinearLayoutManager(requireContext())

        //<댓글>

        //댓글조회

        var preferences =  requireContext().getSharedPreferences("Mypreferences", Context.MODE_PRIVATE)
        var savedToken = preferences.getString("token", null)
        var savedNickNm = preferences.getString("userNickNm",null)

      //  commentList.add(CommentVO(savedNickNm!!,))


        val selectRe = object: StringRequest(
            Request.Method.POST,// 요청메서드
            "http://172.30.1.46:8582/commu/replySearch",

            { response ->
                try {
                    // JSON 응답을 파싱
                    val gson = Gson()
                    val commentArray = gson.fromJson(response, Array<CommentVO>::class.java).toList()

                    // 댓글 목록을 commentList에 추가
                    commentList.addAll(commentArray)

                    // 데이터가 업데이트되었음을 어댑터에 알림
                    adapter.notifyDataSetChanged()
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            },
            {
                    error ->
                Log.d("Rpyerr", error.toString())

            }
        ) {
            override fun getHeaders(): MutableMap<String, String> {
                val headers = HashMap<String, String>()
                headers["Authorization"] = "Bearer $savedToken" // 여기에 토큰을 추가
                return headers
            }

            override fun getBodyContentType(): String {
                return "application/json; charset=utf-8"
            }


        }
        reqQueue.add(selectRe)






        //댓글작성
        btn.setOnClickListener {


            var inputComment = et_comment.text.toString()


            commentList.add(CommentVO(savedNickNm!!,inputComment))

            val insertRe = object: StringRequest(
                Request.Method.POST,// 요청메서드
                "http://172.30.1.46:8582/commu/reply",

                {
                        response ->
                    Log.d("Rpyres", response.toString()) // "식별", 넘어오는 값

                },
                {
                        error ->
                    Log.d("Rpyerr", error.toString())

                }
            ) {
                override fun getHeaders(): MutableMap<String, String> {
                    val headers = HashMap<String, String>()
                    headers["Authorization"] = "Bearer $savedToken" // 여기에 토큰을 추가
                    return headers
                }

                override fun getBodyContentType(): String {
                    return "application/json; charset=utf-8"
                }


            }
            reqQueue.add(insertRe)
        }



            //adapter.notifyDataSetChanged()



        return postdetailV

    }


}