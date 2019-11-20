<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\QuanTriVien;
class QuanTriVienController extends Controller
{
    public function getLogin(){
        return View('login');
    }
    public function postLogin(Request $request){
        // $quanTriVien = new QuanTriVien();
        // $quanTriVien->ten_dang_nhap = $request->input('ten_dang_nhap');
        // $quanTriVien->mat_khau = $request->input('mat_khau');
        // $quanTriVien->ho_ten = 'Nguyễn Văn Khuong';
        // $quanTriVien->save();
        // echo $request->ten_dang_nhap.'<br>';
        // echo $request->mat_khau.'<br>';

        $quanTriVien = new QuanTriVien($request->all());
        $quanTriVien->save();
        $result = QuanTriVien::all();
        return response()->json($result);

    }

    public function getUpload(Request $request){
        return View('upload');
    }

    public function postUpload(Request $request){
        //kiểm tra tồn tại
        if($request->hasFile('myFile')){
            $name = $request->file('myFile')->getClientOriginalName();
            //$extension = $request->file('myFile')->getClientOriginalExtension();
            $request->file('myFile')->move(
                'img',//nơi cần lưu
                $name
            );
            echo 'Upload Thành Công';
        }else{
            echo 'Chưa có file';
        }
    }

}
