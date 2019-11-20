package com.nvk.doanailatrieuphu.Activity;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.nvk.doanailatrieuphu.R;

import java.util.ArrayList;

public class TroGiupKhanGia extends AppCompatActivity {

    private BarChart mbarChart;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tro_giup_khan_gia);
        mbarChart = findViewById(R.id.char1);
        mbarChart.getDescription().setEnabled(false);

        setdata();
        mbarChart.setFitBars(true);
    }
    private void setdata()
    {
        ArrayList<BarEntry> yBarChart = new ArrayList<>();
        //kasjdfka
        float random = (float)(Math.random()*100);
        float r2 = 100-random;
        float random_2= (float)(Math.random()*100%(r2 + 1));
        float r3 = 100-(random+random_2);
        float random_3= (float)(Math.random()*100%(r3+1));
        float r4 = 100-(random+random_2+random_3);
        float random_4= r4+2;


        yBarChart.add(new BarEntry(1,(int)random));
        yBarChart.add(new BarEntry(2,(int)random_2));
        yBarChart.add(new BarEntry(3,(int)random_3));
        yBarChart.add(new BarEntry(4,(int)random_4));



        BarDataSet set = new BarDataSet(yBarChart,"DataSet");
        set.setColors(ColorTemplate.MATERIAL_COLORS);
        set.setDrawValues(true);

        BarData data = new BarData(set);
        mbarChart.setData(data);
        mbarChart.invalidate();
        mbarChart.animateY(500);
    }

    public void Back_cau_hoi(View view) {
        finish();
    }
}
