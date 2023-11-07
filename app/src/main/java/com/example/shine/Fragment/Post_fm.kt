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
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.Adapter.BoardAdapter
import com.example.shine.BoardWriteActivity
import com.example.shine.R
import com.example.shine.VO.CommuVO
import org.json.JSONArray
import org.json.JSONException

class post_fm : Fragment() {

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

            val request = StringRequest(Request.Method.GET, apiUrl,
                { response ->
                    // 서버로부터의 응답을 JSON 파싱하고 데이터를 게시글 목록에 추가
                    val boardList = parseBoardList(response)

                    val adapter = BoardAdapter(requireContext(), R.layout.board_list, boardList)
                    rvBoard.adapter = adapter
                },
                { error ->

                }
            )

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
                //val date = jsonObject.getString("date")
                //val img = jsonObject.getInt("mtFile")

                val board = CommuVO(userNick,commuTitle,commuText)
                boardList.add(board)
            }
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        return boardList
    }

}