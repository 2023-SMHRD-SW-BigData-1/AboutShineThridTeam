package com.example.shine


import android.util.Log
import com.google.firebase.database.core.Tag
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage


class MyPushService : FirebaseMessagingService() {


    //class MyFirebaseMessagingService : FirebaseMessagingService() {
        override fun onMessageReceived(message: RemoteMessage) {
            super.onMessageReceived(message)

            // 수신한 메시지를 처리한다.
            // 클라우드 서버에서 메시지 전송 시 자동 호출되며, 메시지를 처리하여 알림을 보낼 수 있습니다.
        }

        override fun onNewToken(token: String) {
            Log.d("yea", "Refreshed token: $token")
            super.onNewToken(token)
            // token을 서버로 전송한다.
            // 클라우드 서버에 등록될 때 호출되며, token은 앱을 고유하게 식별하기 위한 키 역할을 합니다.
        }
    }


