package com.example.shine

import android.graphics.Color
import android.icu.text.AlphabeticIndex.Bucket.LabelType
import android.os.Bundle
import android.util.Range
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.github.mikephil.charting.charts.BarChart
import com.github.mikephil.charting.charts.LineChart
import com.github.mikephil.charting.components.Description
import com.github.mikephil.charting.components.Legend
import com.github.mikephil.charting.components.XAxis
import com.github.mikephil.charting.components.YAxis
import com.github.mikephil.charting.data.BarData
import com.github.mikephil.charting.data.BarDataSet
import com.github.mikephil.charting.data.BarEntry
import com.github.mikephil.charting.formatter.ValueFormatter


class main_fm : Fragment() {

    private lateinit var barChart: BarChart
    private lateinit var lineChart: LineChart

    // [막대 그래프]
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

    // 차트 데이터 설정
    private fun setData(barChart: BarChart) {

        // Zoom In / Out 가능 여부 설정
        barChart.setScaleEnabled(false)

        val valueList = ArrayList<BarEntry>()
        val title = ""

        // 임의 데이터
        for (i in 6 until 20) {
            valueList.add(BarEntry(i.toFloat(), i * 100f))
        }

        val barDataSet = BarDataSet(valueList, title)
        // 바 색상 설정 (ColorTemplate.LIBERTY_COLORS)
        barDataSet.setColors(
            Color.rgb(255, 204, 0), // 연한 주황색 1
            Color.rgb(255, 183, 77), // 연한 주황색 2
            Color.rgb(255, 165, 0), // 연한 주황색 3
            Color.rgb(255, 140, 0), // 연한 주황색 4
            Color.rgb(255, 120, 0)  // 연한 주황색 5
        )

        val data = BarData(barDataSet)
        barChart.data = data
        barChart.invalidate()
    }



    // [꺾은 선 그래프]





    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        var mainV = inflater.inflate(R.layout.fragment_main_fm, container, false)

        barChart = mainV.findViewById(R.id.chart)
        initBarChart(barChart)
        setData(barChart)




        return mainV
    }


}