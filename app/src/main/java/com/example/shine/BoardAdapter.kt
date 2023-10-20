package com.example.shine

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class BoardAdapter(val context: Context, val layout : Int, val boardList: ArrayList<BaordVO>)
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

            init{
                tvTitle = view.findViewById(R.id.tvTitle)
                tvWriter  = view.findViewById(R.id.tvWriter)
                tvTime = view.findViewById(R.id.tvTime)
            }
        }

    //3. ViewHolder를 생성해서 찾아온 뷰를 제어(데이터+디자인)=> setText, setImageResource
        override fun onBindViewHolder(holder: ViewHolder, position: Int) {

            holder.tvTitle.text = boardList.get(position).title
            holder.tvWriter.text = boardList.get(position).writer
            holder.tvTime.text = boardList.get(position).time
        }


    //4.
    //RecyclerView에 Adapter적용하기
    //+레이아웃 설정
    // //이벤트달아줄게 있으면 코드작성
    override fun getItemCount(): Int {
        return  boardList.size
    }

}

