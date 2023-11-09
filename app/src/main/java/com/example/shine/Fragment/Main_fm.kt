package com.example.shine.Fragment

import android.content.Context
import android.graphics.Color
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TableRow
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.android.volley.AuthFailureError
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.toolbox.JsonArrayRequest
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import com.example.shine.R
import com.github.mikephil.charting.charts.BarChart
import com.github.mikephil.charting.charts.LineChart
import com.github.mikephil.charting.components.Description
import com.github.mikephil.charting.components.XAxis
import com.github.mikephil.charting.components.YAxis
import com.github.mikephil.charting.data.BarData
import com.github.mikephil.charting.data.BarDataSet
import com.github.mikephil.charting.data.BarEntry
import com.github.mikephil.charting.data.Entry
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet
import org.json.JSONArray
import org.json.JSONException
import java.util.Calendar


class main_fm : Fragment() {

    private var chartData = ArrayList<Entry>()
    private var linedata : LineData = LineData()
    private var lineDataSet = ArrayList<ILineDataSet>()

    private lateinit var barChart: BarChart
    private lateinit var lineChart: LineChart

    // [바 그래프]
    // 바 차트 설정
    private fun initBarChart(barChart: BarChart) {
        // 차트 회색 배경 설정 (default = false)
        barChart.setDrawGridBackground(false)
        // 막대 그림자 설정 (default = false)
        barChart.setDrawBarShadow(false)
        // 차트 테두리 설정 (default = false)
        barChart.setDrawBorders(false)

        val description = Description()
        // 오른쪽 하단 모서리 설명 레이블 텍스트 표시 (default = false)
        description.isEnabled = false
        barChart.description = description

        // X, Y 바의 애니메이션 효과
        barChart.animateY(1000)
        barChart.animateX(1000)

        // 바텀 좌표 값
        val xAxis: XAxis = barChart.xAxis
        // x축 위치 설정
        xAxis.position = XAxis.XAxisPosition.BOTTOM
        // 그리드 선 수평 거리 설정
        xAxis.granularity = 1f
        // x축 텍스트 컬러 설정
        xAxis.textColor = Color.DKGRAY
        // x축 선 설정 (default = true)
        xAxis.setDrawAxisLine(false)
        // 격자선 설정 (default = true)
        xAxis.setDrawGridLines(false)

        //죄측
        val leftAxis: YAxis = barChart.axisLeft
        leftAxis.labelCount = 0
        leftAxis.setDrawLabels(false) // y축 레이블 숨기기
        leftAxis.setDrawGridLines(false) // Y축의 그리드 라인 제거

        //우측
        val rightAxis: YAxis = barChart.axisRight
        rightAxis.labelCount = 0
        rightAxis.setDrawLabels(false)
        rightAxis.setDrawGridLines(false) // Y축의 그리드 라인 제거

        //범례
        barChart.legend.isEnabled = false


    }


    private fun setData(barChart: BarChart, response: JSONArray) {
        // Zoom In / Out 가능 여부 설정
        barChart.setScaleEnabled(false)

        val valueList = ArrayList<BarEntry>()

        // 바 색상 설정 (ColorTemplate.LIBERTY_COLORS) - 원하는 색상으로 변경
        val colors = intArrayOf(
            Color.rgb(255, 204, 0),
            Color.rgb(255, 183, 77),
            Color.rgb(255, 165, 0),
            Color.rgb(255, 140, 0),
            Color.rgb(255, 120, 0)
        )

        try {
            for (i in 7 until response.length()) {
                val jsonObject = response.getJSONObject(i)

                val value = jsonObject.getInt("power") // y 값
                valueList.add(BarEntry(i.toFloat(), value.toFloat()))
            }

            val barDataSet = BarDataSet(valueList, "API Data")
            barDataSet.colors = colors.toList()

            val data = BarData(barDataSet)
            barChart.data = data
            barChart.invalidate()
        } catch (e: JSONException) {
            e.printStackTrace()
        }
    }
    // [라인 그래프]
    // 라인 차트 설정 및 초기화
    private fun initLineChart(lineChart: LineChart) {
        lineChart.setDrawGridBackground(false)
        lineChart.setBackgroundColor(Color.WHITE)
        lineChart.legend.isEnabled = false

        val xAxis = lineChart.xAxis
        xAxis.setDrawLabels(true)
        xAxis.axisMaximum = 6f  // x축 최대값
        xAxis.axisMinimum = 0f  // x축 최소값
        xAxis.labelCount = 7 // x축 라벨 수
        xAxis.textColor = Color.YELLOW
        xAxis.position = XAxis.XAxisPosition.BOTTOM
        xAxis.setDrawLabels(false)
        xAxis.setDrawAxisLine(false)

        val yLAxis = lineChart.axisLeft
        yLAxis.axisMaximum = 10f // y축 최대값
        yLAxis.axisMinimum = 0f   // y축 최소값

        val yRAxis = lineChart.axisRight
        yRAxis.setDrawLabels(false)
        yRAxis.setDrawAxisLine(false)
        yRAxis.setDrawGridLines(false)


        val entries = ArrayList<Entry>()

        // x, y 좌표값을 추가
        entries.add(Entry(0f, 2f))
        entries.add(Entry(1f, 4f))
        entries.add(Entry(2f, 6f))
        entries.add(Entry(3f, 8f))
        entries.add(Entry(4f, 10f))
        entries.add(Entry(5f, 8f))
        entries.add(Entry(6f, 660f))

        val dataSet = LineDataSet(entries, "Sample Data")

        lineChart.data = LineData(dataSet)

        lineChart.description.isEnabled = false

    }

    // 라인 차트 데이터 설정
    private fun initLineChartData() {
        ////---------------------------------------------------------------
        // 임의의 데이터 생성 (X, Y 값)
        val dataPoints = listOf(
            Pair(0f, 1f),    // (,1)
            Pair(1f, 2f),
            Pair(2f, 3f),
            Pair(3f, 4f),
            Pair(4f, 2f),
            Pair(5f, 8f),
            Pair(6f, 5f)
        )

        for ((x, y) in dataPoints) {
            chartData.add(Entry(x, y))
        }
        val set = LineDataSet(chartData, "LineGraph")
        set.color = Color.parseColor("#FFA500")  // 주황색
        set.valueTextColor = Color.parseColor("#FFA500")  // 텍스트 컬러를 주황색으로 변경
        set.setCircleColor(Color.parseColor("#FFA500")) // 마커 색상 주황색

        set.setDrawValues(false)
        set.highLightColor = Color.TRANSPARENT

        lineDataSet.add(set)
        linedata = LineData(lineDataSet)

        set.lineWidth = 2f
        set.setDrawValues(false)
        set.highLightColor = Color.TRANSPARENT


        lineChart.data = linedata

        lineChart.invalidate()
    }



    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var mainV = inflater.inflate(R.layout.fragment_main_fm, container, false)

        var tv_ipptNm : TextView =mainV.findViewById(R.id.tv_Ippt) // 발전소 이름
        var tv_date : TextView =mainV.findViewById(R.id.tv_date) // 날짜
        var tv_total : TextView =mainV.findViewById(R.id.tv_total) // 총 수익금
        var tv_power : TextView =mainV.findViewById(R.id.tv_power) // 현 총 발전량
        var tv_smp: TextView =mainV.findViewById(R.id.tv_smp) // smp
        var tv_rec : TextView =mainV.findViewById(R.id.tv_rec) // rec
        var tv_PrePower : TextView =mainV.findViewById(R.id.tv_PrePower) // 예측 총 발전량
        var tv_PreTotal : TextView =mainV.findViewById(R.id.tv_PreTotal) //예측 총 수익금
        var tr : TableRow = mainV.findViewById(R.id.tr)
        var tv_d : TextView =mainV.findViewById(R.id.tv_d)
        var tv_w : TextView =mainV.findViewById(R.id.tv_w)

        val reqQueue: RequestQueue = Volley.newRequestQueue(requireContext())


        val today = Calendar.getInstance()
        val year = today.get(Calendar.YEAR)
        val month = today.get(Calendar.MONTH)+1
        val day = today.get(Calendar.DAY_OF_MONTH)
        val date= "$year"+"년"+"$month"+"월"+"$day"+"일"


        tv_date.text = date


        var preferences =  requireContext().getSharedPreferences("Mypreferences", Context.MODE_PRIVATE)
        var savedToken = preferences.getString("token", null)
        var savedNickNm = preferences.getString("userNickNm",null)



        val chartRe = object : JsonArrayRequest(

            Request.Method.POST,// 요청메서드
            "http://172.30.1.46:8582/power/info/time",null,

            { response ->

                Log.d("time", response.toString())

                try {


                    setData(barChart, response)

                    val dataPoints = ArrayList<Pair<Float, Float>>() //ㄹㅏ인

                    for (i in 0 until response.length()) {
                        val jsonObject = response.getJSONObject(i)

                        val xValue = jsonObject.getDouble("xValue").toFloat() // 시간
                        val yValue = jsonObject.getDouble("powerGenpred").toFloat() // 예측데이터값

                        dataPoints.add(Pair(xValue, yValue))
                    }


                } catch (e: Exception) {
                    e.printStackTrace()
                }
            },
            {
                    error ->
                Log.d("err", error.toString())

            }
        )
        {
            @Throws(AuthFailureError::class)
            override fun getHeaders(): Map<String, String> {
                val headers = HashMap<String, String>()
                headers["Authorization"] = "Bearer $savedToken"
                return headers
            }
            override fun getParams(): Map<String, String> {
                val params = HashMap<String, String>()

                params["searchOne"] = savedNickNm!!
                return params
            }

            override fun getBodyContentType(): String {
                return "application/json; charset=utf-8"
            }

        }
        reqQueue.add(chartRe)


        val selectRe = object : JsonArrayRequest(
            Request.Method.POST,// 요청메서드
            "http://172.30.1.46:8582/power/info/day",null,

            { response ->

                Log.d("mainddd", response.toString())

                try {

                    val jsonObject = response.getJSONObject(0)

                    val ipptNm = jsonObject.getString("ipptNm") // 발전소 이름
                    val Money = jsonObject.getString("powerMoney") // 총 수익금
                    val Qsum = jsonObject.getString("powerSum") // 하루 총 발전량
                    val prePower = jsonObject.getString("powerGenpred") // 예상 발전량
                    val preMoney = jsonObject.getString("powerGenpredMoney") // 예상 발전량 예측금액

                    tv_ipptNm.text = "$ipptNm"
                    tv_date.text = date
                    tv_total.text = "$Money" + "원"
                    tv_power.text = " $Qsum"
                    tv_PrePower.text = "$prePower"
                    tv_PreTotal.text = "$preMoney"

                } catch (e: Exception) {
                    e.printStackTrace()
                }
            },
            {
                    error ->
                Log.d("err", error.toString())

            }
        )
        {
            @Throws(AuthFailureError::class)
            override fun getHeaders(): Map<String, String> {
                val headers = HashMap<String, String>()
                headers["Authorization"] = "Bearer $savedToken"
                return headers
            }
            override fun getParams(): Map<String, String> {
                val params = HashMap<String, String>()

                params["searchOne"] = savedNickNm!!


                return params
            }

            override fun getBodyContentType(): String {
                return "application/json; charset=utf-8"
            }


        }
        reqQueue.add(selectRe)


        barChart = mainV.findViewById(R.id.chart)
        initBarChart(barChart)


        lineChart = mainV.findViewById(R.id.chart2)
        initLineChart(lineChart)  // 라인 그래프 설정 초기화
        initLineChartData()

        return mainV
    }


}




