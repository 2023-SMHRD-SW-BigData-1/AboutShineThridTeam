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
import com.android.volley.toolbox.Volley
import com.example.shine.Adapter.BoardAdapter
import com.example.shine.Adapter.CommentAdapter
import com.example.shine.R
import com.example.shine.VO.CommentVO
import com.example.shine.VO.CommuVO
import com.example.shine.VO.ParamsVO
import com.google.gson.Gson
import org.json.JSONArray
import org.json.JSONException
import java.nio.charset.Charset
import java.util.Calendar

class postdetail_fm : Fragment() {
    lateinit var  comment : CommentVO
    lateinit var commentList : ArrayList<CommentVO>


    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {

        commentList = ArrayList()
        var postdetailV = inflater.inflate(R.layout.fragment_postdetail_fm, container, false)
        val reqQueue = Volley.newRequestQueue(requireContext())

        val bundle = arguments
        val num = bundle?.getString("commuNo")
        val title = bundle?.getString("commuTitle")
        val writer = bundle?.getString("userNick" )
        val date = bundle?.getString("commuCreateAt")
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

//        <댓글>
//        댓글조회

        var preferences =  requireContext().getSharedPreferences("Mypreferences", Context.MODE_PRIVATE)
        var savedToken = preferences.getString("token", null)
        var savedNickNm = preferences.getString("userNickNm",null)


        val selectRe = object: StringRequest(
            Request.Method.POST,// 요청메서드
            "http://172.30.1.46:8582/commu/replysearch",

            { response ->


                val commentList: ArrayList< CommentVO> = parseCommentList(response)

                Log.d("comment", response.toString())

                val layoutManager = LinearLayoutManager(requireContext())
                rv.layoutManager = layoutManager

                val adapter = CommentAdapter(requireContext(), R.layout.comment, commentList)
                rv.adapter = adapter
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
               override fun getParams(): Map<String, String> {
                val params = HashMap<String, String>()

                params["searchOne"] = savedNickNm!!

                Log.d("MyApp", "searchOne parameter: ${params["searchOne"]}")

                return params
            }
            override fun getBodyContentType(): String {
                return "application/json; charset=utf-8"
            }
            override fun getBody(): ByteArray {
                val lm = ParamsVO(num.toString(), "")
                val json = Gson().toJson(lm)
                return json.toByteArray(Charset.forName("UTF-8"))
            }

        }
        reqQueue.add(selectRe)


        //댓글작성
        btn.setOnClickListener {


            var inputComment = et_comment.text.toString()


            commentList.add(CommentVO(savedNickNm!!, inputComment))


        }
//            val insertRe = object : StringRequest(
//                Request.Method.POST,// 요청메서드
//                "http://172.30.1.46:8582/commu/replysearch",
//
//                { response ->
//
//
//                    val commentList: ArrayList<CommentVO> = parseCommentList(response)
//
//                    Log.d("comment", response.toString())
//
////                    val layoutManager = LinearLayoutManager(requireContext())
////                    rv.layoutManager = layoutManager
////
////                    val adapter = CommentAdapter(requireContext(), R.layout.comment, commentList)
////                    rv.adapter = adapter
////
//                    val adapter = CommentAdapter(requireContext(), R.layout.comment, commentList)
//                    rv.adapter = adapter
//                    rv.layoutManager = LinearLayoutManager(requireContext())
//                },
//                { error ->
//                    Log.d("Rpyerr", error.toString())
//
//                }
//            ) {
//                override fun getHeaders(): MutableMap<String, String> {
//                    val headers = HashMap<String, String>()
//                    headers["Authorization"] = "Bearer $savedToken" // 여기에 토큰을 추가
//                    return headers
//                }
//
//                override fun getParams(): Map<String, String> {
//                    val params = HashMap<String, String>()
//
//                    params["userNick"] = savedNickNm!!
//                    params["replyText"] = inputComment
//
//                    return params
//                }
//
//                override fun getBodyContentType(): String {
//                    return "application/json; charset=utf-8"
//                }
//
//
//            }
//            reqQueue.add(insertRe)

        return postdetailV

    }
    fun parseCommentList(response: String): ArrayList<CommentVO> {
        val commentList = ArrayList<CommentVO>()

        // JSON 형식의 응답을 파싱하여 boardList에 추가
        try {
            val jsonArray = JSONArray(response)
            for (i in 0 until jsonArray.length()) {
                val jsonObject = jsonArray.getJSONObject(i)

                val userNick = jsonObject.getString("userNick")
                val reply = jsonObject.getString("replyText")


               comment = CommentVO(userNick,reply)
                commentList.add(comment)
            }
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        return  commentList
    }


}

