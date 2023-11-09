package com.example.shine.Fragment

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.Adapter.ChatAdapter
import com.example.shine.R
import com.example.shine.VO.ChatVO


class chat_fm : Fragment() {
    lateinit var chatList : ArrayList<ChatVO>

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var chatV = inflater.inflate(R.layout.fragment_chat_fm, container, false)
        var rv : RecyclerView = chatV.findViewById(R.id.rv_chat)

        chatList = ArrayList()
        chatList.add(ChatVO(R.drawable.person, "정세연","안녕하세연","2023-11-08"))
        chatList.add(ChatVO(R.drawable.person, "정윤지","태양광 판매하고 싶어요","2023-11-08"))
        chatList.add(ChatVO(R.drawable.person, "김민준","거래 원해요","2023-11-08"))
        chatList.add(ChatVO(R.drawable.person, "정병인","smp아세여?","2023-11-08"))
        chatList.add(ChatVO(R.drawable.person, "박충희","안녕하세요","2023-11-07"))
        chatList.add(ChatVO(R.drawable.person, "장환익","오늘 거래량 어떠셨나요","22023-11-07"))
        chatList.add(ChatVO(R.drawable.person, "박예은","???","2023-10-31"))
        chatList.add(ChatVO(R.drawable.person, "박형준","안녕하세욤","2023-10-31"))

        val adapter = ChatAdapter(requireContext(), R.layout.chat, chatList)
        rv.adapter = adapter
        rv.layoutManager = LinearLayoutManager(requireContext())

        return chatV
    }


}