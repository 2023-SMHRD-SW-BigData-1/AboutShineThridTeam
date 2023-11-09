package com.example.shine.Fragment

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.android.volley.AuthFailureError
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.Adapter.BoardAdapter
import com.example.shine.BoardWriteActivity
import com.example.shine.R
import com.example.shine.VO.CommuVO
import com.example.shine.VO.LoginMember
import com.example.shine.VO.ParamsVO
import com.google.gson.Gson
import org.json.JSONArray
import org.json.JSONException
import java.nio.charset.Charset

class post_fm : Fragment() {

    lateinit var board : CommuVO
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var postV = inflater.inflate(R.layout.fragment_post_fm, container, false)

        var btnWrite: Button = postV.findViewById(R.id.btnWrite)
        var rvBoard: RecyclerView = postV.findViewById(R.id.rvBoard)

        val requestQueue = Volley.newRequestQueue(requireContext())



        btnWrite.setOnClickListener {
            val intent = Intent(context, BoardWriteActivity::class.java)
            startActivity(intent)
        }



        var preferences =  requireContext().getSharedPreferences("Mypreferences", Context.MODE_PRIVATE)
        var savedToken = preferences.getString("token", null)
        var savedNickNm = preferences.getString("userNickNm",null)

        val apiUrl = "http://172.30.1.46:8582/commu/search"


        Log.v("test", "포스트화면")

        val request = object : StringRequest(
            Request.Method.POST,
            apiUrl,
            { response ->

                // 서버로부터의 응답을 JSON 파싱하고 데이터를 게시글 목록에 추가
                val boardList: ArrayList<CommuVO> = parseBoardList(response)

                Log.d("ppost", response.toString())

                    // 날짜를 기준으로 최신순으로 정렬
                    boardList.sortByDescending { it.commuCreateAt }

//                    // 로그로 정렬된 boardList 출력
//                    for (board in boardList) {
//                        Log.d("Sorted BoardList", "Title: ${board.commuTitle}, CreateAt: ${board.commuCreateAt}")
//                    }

                val layoutManager = LinearLayoutManager(requireContext())
                rvBoard.layoutManager = layoutManager

                val adapter = BoardAdapter(requireContext(), R.layout.board_list, boardList)
                rvBoard.adapter = adapter

            },
            { error ->

            }
        ) {
            @Throws(AuthFailureError::class)
            override fun getHeaders(): Map<String, String> {
                val headers = HashMap<String, String>()
                headers["Authorization"] = "Bearer $savedToken"
                return headers
            }

            override fun getBodyContentType(): String {
                return "application/json; charset=utf-8"
            }

        }

        requestQueue.add(request)



        return postV
    }

    fun parseBoardList(response: String): ArrayList<CommuVO> {
        val boardList = ArrayList<CommuVO>()

        // JSON 형식의 응답을 파싱하여 boardList에 추가
        try {
            val jsonArray = JSONArray(response)
            for (i in 0 until jsonArray.length()) {
                val jsonObject = jsonArray.getJSONObject(i)

                val commuTitle = jsonObject.getString("commuTitle")
                val userNick = jsonObject.getString("userNick")
                val commuText = jsonObject.getString("commuText")
                val date = jsonObject.getString("commuCreateAt")
                val commuNO = jsonObject.getString("commuNo")
              // val img = jsonObject.getString("commuImgPath")

                board = CommuVO(userNick,commuTitle,commuText,date,"",commuNO)
                boardList.add(board)
            }
        } catch (e: JSONException) {
            Log.d("error","e")
            e.printStackTrace()
        }

        return boardList
    }

}