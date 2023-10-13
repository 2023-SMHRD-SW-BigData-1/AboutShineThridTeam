package com.example.shine

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button


class post_fm : Fragment() {


    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var postV = inflater.inflate(R.layout.fragment_post_fm, container, false)

        var btnWrite : Button = postV.findViewById(R.id.btnWrite)

        btnWrite.setOnClickListener {
                                //fragment 올려진 activity정보 가져오기  -> context 이용
            val intent = Intent(context, BoardWriteActivity::class.java)
            startActivity(intent)
        }


        return postV
    }


}