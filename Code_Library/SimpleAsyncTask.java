package com.example.demo_saplite;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.telecom.Call;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONObject;

import java.lang.ref.WeakReference;
import java.util.Random;

/*
* Tham số 1: tham sô truyền vào khi gọi excute Asynctask và nằm trong doInBackground
* Tham số 2: là tham số update lên UI trong progressUpdate
* THam số 3: Tham số trả về cho onPost để xử lý data khi hoàn tât
* */


public class SimpleAsyncTask extends AsyncTask<Void, Void, JSONObject> {
    private Context context;
    final JSONObject[] jsonObjects;
    ProgressDialog progressDialog;


    public SimpleAsyncTask(Context context, JSONObject jsonObject) {
        this.context = context;
        this.jsonObjects = new JSONObject[1];
        this.jsonObjects[0] = jsonObject;

    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
        progressDialog = new ProgressDialog(context);
        progressDialog.setTitle("Đang tải dữ liệu");
        progressDialog.setMessage("Làm ơn chờ...");
        progressDialog.show();


    }

    @Override
    protected JSONObject doInBackground(Void... voids) {
        final boolean [] flag = new boolean[1];

        //call API
        CallAPI.RequestGET("http://10.0.2.2:8000/api/linh-vuc", context, jsonObjects, flag);

        //Kiểm tra API đã được gọi hoàn tất chưa.
        while(flag[0] == false)
        {

        }

       return this.jsonObjects[0];
    }

    @Override
    protected void onPostExecute(JSONObject jsonObject) {

       //xử lý json
        //...............

        //tắt progressbar
        progressDialog.dismiss();




    }

}
