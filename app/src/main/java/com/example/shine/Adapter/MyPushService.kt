package com.example.shine.Adapter


import android.R
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Intent
import android.media.RingtoneManager
import android.os.Build
import android.util.Log
import androidx.core.app.NotificationCompat
import com.example.shine.MainActivity
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage


class MyPushService : FirebaseMessagingService() {

         override fun onNewToken(token: String) {
        super.onNewToken(token)
        Log.d("yea", "token: ${token}")
//         sendRegistrationToServer(token)
        }


        override fun onMessageReceived(message: RemoteMessage) {
            super.onMessageReceived(message)

            Log.d("Test",message.toString())
            Log.d("yea", "From: ${message.from}")

            Log.d("yea", "MessageSize: ${message.data.size}")
            Log.d("yea", "Message: ${message.notification?.body}")


//            val getMessageContent = message.notification?.body
//            val getMessageTitle = message.notification?.title

            val mapMessage: MutableMap<String,String> = HashMap<String,String>()

           // mapMessage.put("title",getMessageTitle.toString())
            mapMessage.put("key","패널 이상 감지 1건")



            sendNotification(mapMessage);

        }

        private fun sendNotification(data: Map<String, String>?) {
            val noti_id = 1
            var getMessage: String? = ""
            val intent = Intent(this, MainActivity::class.java)
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)
            intent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP)
            intent.putExtra("notification_id", 0)
            // Push로 받은 데이터를 그대로 다시 intent에 넣어준다.
            if (data != null && data.size > 0) {
                for (key in data.keys) {
                    getMessage = data[key]
                    intent.putExtra(key, getMessage)
                }
            }
            val pendingIntent = PendingIntent.getActivity(
                this, 0, intent, PendingIntent.FLAG_ONE_SHOT or PendingIntent.FLAG_IMMUTABLE
            )

            val channelId = "channelId"
            val defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)
            val notificationBuilder: NotificationCompat.Builder =
                NotificationCompat.Builder(this, channelId)
                    .setSmallIcon(R.drawable.alert_dark_frame)
                    .setContentTitle("SHINE 알림")
                    .setContentText(getMessage)
                    .setAutoCancel(true)
                    .setSound(defaultSoundUri)
                    .setContentIntent(pendingIntent)
            val notificationManager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager

            // Notification 채널을 설정합니다.
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                val channel = NotificationChannel(
                    channelId,
                    "Channel human readable title",
                    NotificationManager.IMPORTANCE_DEFAULT
                )
                notificationManager.createNotificationChannel(channel)
            }
            notificationManager.notify(noti_id, notificationBuilder.build())


        }}


