package com.example.shine

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.shine.Adapter.BoardAdapter
import com.example.shine.VO.BaordVO
import java.util.Calendar


class post_fm : Fragment() {


    lateinit var boardList : ArrayList<BaordVO>
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var postV = inflater.inflate(R.layout.fragment_post_fm, container, false)

        var btnWrite : Button = postV.findViewById(R.id.btnWrite)
        var rvBoard : RecyclerView = postV.findViewById(R.id.rvBoard)

        val today = Calendar.getInstance()
        val year = today.get(Calendar.YEAR)
        val month = today.get(Calendar.MONTH)+1
        val day = today.get(Calendar.DAY_OF_MONTH)

        val date= "$year-$month-$day"

        boardList = ArrayList<BaordVO>()
        boardList.add(BaordVO(R.drawable.ditto, "전력거래합니다","박충희",date))

        val adapter = BoardAdapter(requireContext(), R.layout.board_list, boardList)
        rvBoard.adapter = adapter
        rvBoard.layoutManager = LinearLayoutManager(requireContext())

        btnWrite.setOnClickListener {

            val intent = Intent(context, BoardWriteActivity::class.java)
            startActivity(intent)

        }


        return postV
    }


}