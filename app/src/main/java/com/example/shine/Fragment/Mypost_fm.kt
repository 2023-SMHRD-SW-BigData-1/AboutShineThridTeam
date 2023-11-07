package com.example.shine.Fragment

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.example.shine.R


class mypost_fm : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var mypostV = inflater.inflate(R.layout.fragment_mypost_fm, container, false)



        return mypostV
    }


}