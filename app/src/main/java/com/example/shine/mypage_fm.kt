package com.example.shine

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.fragment.app.Fragment


class mypage_fm : Fragment() {

//    private var _binding : FragmentABinding? = null
//    private val binding get() = _binding!!



    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?


    ): View? {
       var mypageV = inflater.inflate(R.layout.fragment_mypage_fm, container, false)


        var tv_mypost : TextView = mypageV.findViewById(R.id.tv_mypost)
        var tv_modify : TextView = mypageV.findViewById(R.id.tv_modify)
        var tv_nickname : TextView = mypageV.findViewById(R.id.tvNickname)
        var tv_email : TextView = mypageV.findViewById(R.id.tvEmail)
        var tv_phone : TextView = mypageV.findViewById(R.id.tvPhone)
        var myphoto : ImageView = mypageV.findViewById(R.id.imgMyphoto)

        val args = arguments
        if (args != null) {
            val text = args.getString("email")
            // text 값을 사용하거나 처리
        }


//        if(intent.resultcode == RESULT_OK){
//            var email = intent.data!!.getStringExtra("email")
//            tv_nickname.text = email
//        }

//        tv_nickname.text = email


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
//
//        _binding = FragmentABinding.inflate(inflater, container, false)
//        binding.textView.text = arguments?.getString("Key")

        return mypageV
    }



}