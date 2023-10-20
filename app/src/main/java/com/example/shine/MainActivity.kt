package com.example.shine

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.FrameLayout
import android.widget.ImageView
import com.google.android.material.bottomnavigation.BottomNavigationView
import com.google.firebase.crashlytics.buildtools.reloc.org.apache.commons.logging.Log
import com.google.firebase.database.core.Tag
import com.google.firebase.messaging.FirebaseMessaging
import com.google.android.gms.tasks.OnCompleteListener
import com.google.android.gms.tasks.Task
import android.widget.Toast

class MainActivity : AppCompatActivity() {

        private val TAG = "MainActivity"

        lateinit var fl : FrameLayout
        lateinit var bnv : BottomNavigationView
        lateinit var alarm : ImageView
        lateinit var logout : ImageView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)




        fl = findViewById(R.id.fl)
        bnv = findViewById(R.id.bnv)
        alarm = findViewById(R.id.imgAlarm)
        logout = findViewById(R.id.imgLogout)





        alarm.setOnClickListener {
            val intent = Intent(this,AlarmActivity::class.java)
            startActivity(intent)

        }

        logout.setOnClickListener {
            val intent = Intent(this,FirstActivity::class.java)
            startActivity(intent)
        }

        bnv.setOnItemSelectedListener { item ->

            // item => 내가 클릭한 항목에 대한 정보 가져오는 매개변수

            // when문은 (이 값)과 일치 시 실행
            when (item.itemId) {

                R.id.tap1 -> {
                    // fragment 추가/삭제/교체 // 어디에 frag, 어떤 frag
                    supportFragmentManager.beginTransaction().replace(R.id.fl, main_fm()).commit()
                    Toast.makeText(this@MainActivity, "홈 클릭", Toast.LENGTH_SHORT).show()

                }

                R.id.tap2 -> {
                    supportFragmentManager.beginTransaction().replace(R.id.fl, post_fm()).commit()
                    Toast.makeText(this@MainActivity, "게시판 클릭", Toast.LENGTH_SHORT).show()

                }

                R.id.tap3 -> {
                    supportFragmentManager.beginTransaction().replace(R.id.fl, chat_fm()).commit()
                    Toast.makeText(this@MainActivity, "채팅 클릭", Toast.LENGTH_SHORT).show()

                }

                R.id.tap4 -> {
                    supportFragmentManager.beginTransaction().replace(R.id.fl, mypage_fm()).commit()
                    Toast.makeText(this@MainActivity, "마페 클릭", Toast.LENGTH_SHORT).show()

                }
            }

            //이벤트 종료 감지해서 다음 이벤트 준비하는 결과값 : true
            true
        }
            // Firebase Cloud Messaging 토큰 가져오기
            FirebaseMessaging.getInstance().token.addOnCompleteListener(OnCompleteListener { task ->
                if (!task.isSuccessful) {
                    val exception = task.exception
                    android.util.Log.w("TAG", "Fetching FCM registration token failed", exception)
                    return@OnCompleteListener
                }

                // FCM 토큰 가져오기
                val token = task.result

//                // Log 및 toast
//                val msg = getString(R.string.msg_token_fmt, token)
//                android.util.Log.d("TAG", "msg")
//                Toast.makeText(baseContext, msg, Toast.LENGTH_SHORT).show()
            })




    }
}