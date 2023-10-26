package com.example.shine

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.FrameLayout
import android.widget.ImageView
import com.google.android.material.bottomnavigation.BottomNavigationView
//import com.google.firebase.crashlytics.buildtools.reloc.org.apache.commons.logging.Log
//import com.google.firebase.database.core.Tag
//import com.google.firebase.messaging.FirebaseMessaging
//import com.google.android.gms.tasks.OnCompleteListener
import com.google.android.gms.tasks.Task
import android.widget.Toast
//import com.google.firebase.iid.FirebaseInstanceId
import com.google.firebase.messaging.FirebaseMessaging

class MainActivity : AppCompatActivity() {

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

       // val Email = intent.getStringExtra("email")

        supportFragmentManager.beginTransaction().replace(R.id.fl, main_fm()).commit()
        //supportFragmentManager.beginTransaction().replace(R.id.fl, mypage_fm()).commit()

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
                    // fragment 추가/삭제/교체시 사용  // 어디에 frag, 어떤 frag
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


        FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
            if (!task.isSuccessful) {
                Log.w("FCM", "Fetching FCM registration token failed", task.exception)
                return@addOnCompleteListener
            }

            // FCM 토큰 얻기
            val token = task.result

//            val token = task.result?.token
            Log.d("FCM", "FCM Token: $token")
        }





    }
}

