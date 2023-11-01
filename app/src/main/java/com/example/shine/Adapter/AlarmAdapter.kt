package com.example.shine.Adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.VO.AlarmVO

//class AlarmAdapter(val context : Context, val layout : Int, val AlarmList : ArrayList<AlarmVO>)
//    : RecyclerView.Adapter<AlarmAdapter.ViewHolder>(){
//
//    //1 xml코드를 눈에보이는 View형태로 바꿔주는 작업 : inflate
//    // inflate   => inflater  => context
//    // inflater를 이용해서 inflate 하기
//
//    val inflater = LayoutInflater.from(context)
//
//    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): AlarmAdapter.ViewHolder {
//        var view = inflater.inflate(layout,parent,false)
//        return  ViewHolder(view) // inflate 작업을 한 view를 ViewHolder클래스로 전달
//    }
//    //2
//    inner class ViewHolder(view : View) : RecyclerView.ViewHolder(view){
//        //onCreateViewHolder가 inflate한 view를 가지고 findViewById 진행
//
//        val tvTitle : TextView
//        val tvComment : TextView
//        val tvDate : TextView
//
//
//        init{
//            tvTitle = view.findViewById(R.id.tvTitle)
//            tvComment = view.findViewById(R.id.tvAlarm)
//            tvDate = view.findViewById(R.id.tvDate)
//
//
//        }
//    }
//    //3 inner class에서 찾아온 TextView와 Activity에서 보내준 데이터를 합쳐서
//    //   RecyclerView에 반영
//    override fun onBindViewHolder(holder:AlarmAdapter.ViewHolder, position: Int) {
//
//        holder.tvTitle.text = AlarmList[position].title
//        holder.tvComment.text = AlarmList[position].comment
//        holder.tvDate.text = AlarmList[position].date
//
//
//    }
//    //4
//    override fun getItemCount(): Int {
//        return  AlarmList.size
//    }
//
//
//}