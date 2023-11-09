package com.example.shine.Adapter

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.shine.Fragment.postdetail_fm
import com.example.shine.R
import com.example.shine.VO.CommuVO
import java.net.URL
import java.util.concurrent.Executors

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
        lateinit var tv_con : TextView

        init{
            tvTitle = view.findViewById(R.id.tvTitle)
            tvWriter  = view.findViewById(R.id.tvWriter)
            tvTime = view.findViewById(R.id.tvTime)
            tv_con = view.findViewById(R.id.tv_con)
            img = view.findViewById(R.id.img)
        }
    }

    //3.
    override fun onBindViewHolder(holder: ViewHolder, position: Int) {

        holder.tvTitle.text = boardList[position].commuTitle
        holder.tvWriter.text = boardList[position].userNick
        //holder.tv_con.text = boardList[position].commuText
        holder.tvTime.text = boardList[position].commuCreateAt


        // val url = "https://cdn.pixabay.com/photo/2021/08/03/07/03/orange-6518675_960_720.jpg"

//        Glide.with(context)
//            .load(url) // 불러올 이미지 url
//            .into(holder.img) // 이미지를 넣을 뷰

        holder.itemView.setOnClickListener {
            val selectedBoard = boardList[position] // Selected board item
            val fragment = postdetail_fm()

            val bundle = Bundle()
            bundle.putString("commuNo", selectedBoard.commuNO)
            bundle.putString("commuTitle", selectedBoard.commuTitle)
            bundle.putString("userNick", selectedBoard.userNick)
            bundle.putString("commuText", selectedBoard.commuText)
            bundle.putString("commuCreateAt", selectedBoard.commuCreateAt)
            //bundle.putString("imgUrl", "https://www.google.com/imgres?imgurl=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F0111243650C215621C&tbnid=zw1Wo4lFall7sM&vet=12ahUKEwiH5qeS47GCAxXaYfUHHXozANUQMygLegUIARCEAQ..i&imgrefurl=https%3A%2F%2Fbitna.net%2F1116&docid=yBtvHQyBNvKcdM&w=903&h=602&q=%EB%AA%B0%EB%94%94%EB%B8%8C&ved=2ahUKEwiH5qeS47GCAxXaYfUHHXozANUQMygLegUIARCEAQ") // Pass the image URL to the next fragment

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

    object ImageLoader {
        fun load(url : String, view : ImageView){

            val executors = Executors.newSingleThreadExecutor()
            var image : Bitmap? = null

            executors.execute {
                try {
                    image = BitmapFactory.decodeStream(URL(url).openStream())
                    view.setImageBitmap(image)
                }catch (e : Exception){
                    e.printStackTrace()
                }
            }
        }
    }

}

