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
import com.github.mikephil.charting.data.Entry
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet
import com.github.mikephil.charting.formatter.IndexAxisValueFormatter
import com.github.mikephil.charting.formatter.ValueFormatter
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet


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

    // 바 차트 데이터 설정
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
        entries.add(Entry(6f, 6f))

        val dataSet = LineDataSet(entries, "Sample Data")

        lineChart.data = LineData(dataSet)

        lineChart.description.isEnabled = false

    }

    // 라인 차트 데이터 설정
    private fun initLineChartData() {
        // 임의의 데이터 생성 (X, Y 값)
        val dataPoints = listOf(
            Pair(0f, 1f),
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

        barChart = mainV.findViewById(R.id.chart)
        initBarChart(barChart)
        setData(barChart)


        lineChart = mainV.findViewById(R.id.chart2)
        initLineChart(lineChart)  // 라인 그래프 설정 초기화
        initLineChartData()       // 라인 그래프 데이터 초기화

        return mainV
    }


}



