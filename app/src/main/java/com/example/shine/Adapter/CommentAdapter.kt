package com.example.shine.Adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.R
import com.example.shine.VO.CommentVO

class CommentAdapter(val context : Context, val layout : Int, val commentList : ArrayList<CommentVO>)
    : RecyclerView.Adapter<CommentAdapter.ViewHolder>(){

    //1
    val inflater = LayoutInflater.from(context)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): CommentAdapter.ViewHolder {
        var view = inflater.inflate(layout,parent,false)
        return  ViewHolder(view)
    }
    //2
    inner class ViewHolder(view : View) : RecyclerView.ViewHolder(view){
        val cimg : ImageView
        val ctv_writer : TextView
        val ctv_date : TextView
        val ctv_comment : TextView


        init{
            cimg = view.findViewById(R.id.cimg)
            ctv_writer = view.findViewById(R.id.ctv_writer)
            ctv_date = view.findViewById(R.id.ctv_date)
            ctv_comment = view.findViewById(R.id.ctv_comment)


        }
    }
    //3
    override fun onBindViewHolder(holder: CommentAdapter.ViewHolder, position: Int) {

        holder.ctv_date.text = commentList[position].date
        holder.ctv_writer.text = commentList[position].writer
        holder.ctv_comment.text = commentList[position].comment
        holder. cimg.setImageResource(commentList[position].img)


    }
    //4
    override fun getItemCount(): Int {
        return  commentList.size
    }


}