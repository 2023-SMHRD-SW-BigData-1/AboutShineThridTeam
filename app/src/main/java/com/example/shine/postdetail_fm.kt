package com.example.shine

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.Adapter.ChatAdapter
import com.example.shine.Adapter.CommentAdapter
import com.example.shine.VO.BaordVO
import com.example.shine.VO.ChatVO
import com.example.shine.VO.CommentVO
import java.util.Calendar

class postdetail_fm : Fragment() {

    lateinit var commentList : ArrayList<CommentVO>


    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var postdetailV = inflater.inflate(R.layout.fragment_postdetail_fm, container, false)

        val bundle = arguments
        val title = bundle?.getString("title", )
        val writer = bundle?.getString("writer", )
        val date = bundle?.getString("date", )
        val img = bundle?.getInt("img",0)
        //글 내용 가져오기
        //val content = bundle?.getString("content")

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

        tv_title.text = title
        tv_writer.text = writer
        if (img != null) {
            img_img.setImageResource(img)
        }
        //tv_content.text = content
        tv_date.text = date


        commentList = ArrayList()
        val adapter = CommentAdapter(requireContext(), R.layout.comment, commentList)
        rv.adapter = adapter
        rv.layoutManager = LinearLayoutManager(requireContext())

        btn.setOnClickListener {
            var inputComment = et_comment.text.toString()
           //작성자, 작성자프로필 가져오기
            commentList.add(CommentVO(0,"예시작성자",inputComment,todaydate))

            adapter.notifyDataSetChanged()
        }


        return postdetailV

    }


}