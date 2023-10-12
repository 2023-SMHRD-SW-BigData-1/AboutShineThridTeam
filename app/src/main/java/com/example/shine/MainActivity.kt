package com.example.shine

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.FrameLayout
import android.widget.Toast
import com.google.android.material.bottomnavigation.BottomNavigationView

class MainActivity : AppCompatActivity() {


        lateinit var fl : FrameLayout
        lateinit var bnv : BottomNavigationView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        fl = findViewById(R.id.fl)
        bnv = findViewById(R.id.bnv)


        bnv.setOnItemSelectedListener { item->

            // item => 내가 클릭한 항목에 대한 정보 가져오는 매개변수

            // when문은 (이 값)과 일치 시 실행
            when(item.itemId){
               R.id.tap1 ->{
                   Toast.makeText(this@MainActivity, "홈 클릭",Toast.LENGTH_SHORT).show()

               }
                R.id.tap2 ->{
                    Toast.makeText(this@MainActivity, "게시판 클릭",Toast.LENGTH_SHORT).show()

                }
                R.id.tap3 ->{
                    Toast.makeText(this@MainActivity, "채팅 클릭",Toast.LENGTH_SHORT).show()

                }
                R.id.tap4 ->{
                    Toast.makeText(this@MainActivity, "마페 클릭",Toast.LENGTH_SHORT).show()

                }
            }

            //이벤트 종료 감지해서 다음 이벤트 준비하는 결과값 : true
            true


        }

    }
}