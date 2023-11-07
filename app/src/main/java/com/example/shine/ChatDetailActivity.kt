package com.example.shine

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import androidx.recyclerview.widget.RecyclerView

class ChatDetailActivity : AppCompatActivity() {


    lateinit var rv_mes : RecyclerView
    lateinit var btn_submit: Button
    lateinit var edt_mes: EditText
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_chat_detail)}}


