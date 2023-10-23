package com.example.shine

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView


class mypage_fm : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
       var mypageV = inflater.inflate(R.layout.fragment_mypage_fm, container, false)

        var tv_mypost : TextView = mypageV.findViewById(R.id.tv_mypost)
        var tv_modify : TextView = mypageV.findViewById(R.id.tv_modify)


        tv_modify.setOnClickListener {

            val intent = Intent(context, MypageModifyActivity::class.java)
            startActivity(intent)
        }

        tv_mypost.setOnClickListener{

            val myPostFragment = mypost_fm()
            // fragment끼리 바꿔줄때 사용
           parentFragmentManager.beginTransaction().replace(R.id.fl, myPostFragment)
            .addToBackStack(null) // 이전 Fragment를 스택에 추가하여 뒤로 가기 버튼으로 이동할 수 있도록 합니다.
            .commit()
        }

        return mypageV
    }


}