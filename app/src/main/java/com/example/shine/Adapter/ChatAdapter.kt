package com.example.shine.Adapter

import com.example.shine.VO.ChatVO

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.R


class ChatAdapter(val context : Context, val layout : Int, val chatList : ArrayList<ChatVO>)
    : RecyclerView.Adapter<ChatAdapter.ViewHolder>(){

    //1

    val inflater = LayoutInflater.from(context)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ChatAdapter.ViewHolder {
        var view = inflater.inflate(layout,parent,false)
        return  ViewHolder(view)
    }
    //2
    inner class ViewHolder(view : View) : RecyclerView.ViewHolder(view){


        val tv_time : TextView
        val tv_name : TextView
        val img_profile : ImageView
        val tv_msg: TextView


        init{
            tv_time = view.findViewById(R.id.tv_time)
            tv_name = view.findViewById(R.id.tv_name)
            img_profile = view.findViewById(R.id.img_profile)
            tv_msg = view.findViewById(R.id.tv_msg)


        }
    }
    //3
    override fun onBindViewHolder(holder: ChatAdapter.ViewHolder, position: Int) {
7
        holder.tv_time.text = chatList[position].time
        holder.tv_name.text = chatList[position].name
        holder.tv_msg.text = chatList[position].content
        holder.img_profile.setImageResource(chatList[position].img)

    }
    //4
    override fun getItemCount(): Int {
        return  chatList.size
    }


}