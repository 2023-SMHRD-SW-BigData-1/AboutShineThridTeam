package com.example.shine.Adapter

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.R
import com.example.shine.VO.BaordVO
import com.example.shine.Fragment.postdetail_fm
import com.example.shine.VO.CommuVO

class BoardAdapter(val context: Context, val layout : Int, val boardList: ArrayList<CommuVO>)
    : RecyclerView.Adapter<BoardAdapter.ViewHolder>(){

        val inflater = LayoutInflater.from(context)

   //1.
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
            var view = inflater.inflate(layout,parent,false)
            return  ViewHolder(view)
        }
    //2.
        inner class ViewHolder(view : View) : RecyclerView.ViewHolder(view){

        lateinit var tvTitle : TextView
        lateinit var tvWriter : TextView
        lateinit var tvTime : TextView
        lateinit var img : ImageView


            init{
                tvTitle = view.findViewById(R.id.tvTitle)
                tvWriter  = view.findViewById(R.id.tvWriter)
                tvTime = view.findViewById(R.id.tvTime)
                img = view.findViewById(R.id.img)
            }
        }

    //3.
        override fun onBindViewHolder(holder: ViewHolder, position: Int) {

        holder.tvTitle.text = boardList[position].commuTitle
        holder.tvWriter.text = boardList[position].userNick
//        holder.tvTime.text = boardList[position].date
       // holder.img.setImageResource(boardList[position].img)

        holder.itemView.setOnClickListener {
            val selectedBoard = boardList[position] // 선택된 게시물 정보
            val fragment = postdetail_fm()

            val bundle = Bundle()
            bundle.putString("commuTitle", selectedBoard.commuTitle)
            bundle.putString("userNick", selectedBoard.userNick)
            bundle.putString("commuText",selectedBoard.commuText)
            //bundle.putString("date",selectedBoard.date)
            //bundle.putInt("img",selectedBoard.img)

            fragment.arguments = bundle

            val fragmentManager = (context as AppCompatActivity).supportFragmentManager
            val transaction = fragmentManager.beginTransaction()
            transaction.replace(R.id.fl, fragment)
            transaction.addToBackStack(null)
            transaction.commit()
        }
    }


    //4.

    override fun getItemCount(): Int {
        return  boardList.size
    }

}

