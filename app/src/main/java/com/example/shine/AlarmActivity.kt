package com.example.shine

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
//import com.example.shine.Adapter.AlarmAdapter
import com.example.shine.VO.AlarmVO
import org.json.JSONArray
import org.json.JSONObject

class AlarmActivity : AppCompatActivity() {
//    lateinit var rv : RecyclerView
//    var queue : RequestQueue? =null
//    lateinit var  request : StringRequest //실제 요청
//
//
//    // MovieVO가 저장되는 ArrayList 만들기
//    var AlarmList : ArrayList<AlarmVO> = ArrayList()
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_alarm)}}

//        rv = findViewById(R.id.rv)
//
//        if(queue==null) queue = Volley.newRequestQueue(this@AlarmActivity)
//
//
//        val adapter = AlarmAdapter(applicationContext,R.layout.alarm_list, AlarmList)
//        rv.adapter = adapter
//        rv.layoutManager = LinearLayoutManager(this@AlarmActivity)
//
//        request = StringRequest(
//            Request.Method.GET,
//
//            //<고쳐야해영ㅇ>>
//            "http://kobifs.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101",
//            {
//                    response ->
//                // 맨처음으로 받아온 값이 뭔지?
//                Log.d("json",response) // json 전체를 다 가지고옴
//                // json Object 타입으로 가져오고있음
//                val jsonObject = JSONObject(response)
//                // 처음 response는 String타입 -> json 타입으로 변경해줘야함
//
//                /////////<고쳐야행ㅇ>
//                // boxOfficeReuslt가 가진 키값을 String 자료형으로 가져와서 로그찍음
//                Log.d("json", jsonObject.getString("boxOfficeResult"))
//                val jsonObject2 = JSONObject(jsonObject.getString("boxOfficeResult"))
//                val jsonarray = JSONArray(jsonObject2.getString("dailyBoxOfficeList"))
//
//
//
//                Log.d("json",jsonarray.toString())
//
//                //jsonarray[0]~ jsonarray[9] ==> array탸입을 object로 바꾸기
//                for(i in 0 until jsonarray.length()) {
//                    val alarm = jsonarray[i] as JSONObject
//
//                    val title = alarm.getString("movieNm")
//                    val date= alarm.getString("audiCnt")
//                    val comment = alarm.getString("openDt")
//
//                    // 위에 5개 변수를 하나의 묶음으로 관리
//                    val vo = AlarmVO(title,date,comment)
//                    // 영화 1개의 데이터 ArrayList에 저장
//                    AlarmList.add(vo)
//                }
//                //Log.d("json", audiCnt)
//                adapter.notifyDataSetChanged() //새로고침
//
//            },
//            { //응답실패
//                    error->
//                Toast.makeText(this@AlarmActivity, "응답실패" , Toast.LENGTH_SHORT).show()
//            }
//        )
//        queue?.add((request))
//
//
//    }
//
//
//
//
//
//
//
//
//
//
//    }
