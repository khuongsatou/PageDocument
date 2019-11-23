
#pragma once
//hoài
class SanPham
{
public:
	char* TenSanPham;
	int Soluong;
	int SoLuongNhap;
	int SoLuongBan;
	char* NgayNhapHang;
	int DonGia;
protected:
	char *maloaisp;
private:
	char* MaSP;
	char* MaKM;

public:
	SanPham(){}
	~SanPham(){}
	friend class ChiTietHD;
	friend class KhuyenMai;
};


class LoaiSP :public SanPham
{
public:
	char * MaLoaiSP;
	char * TenLoaiSP;
	int SoLuong;

public:
	LoaiSP(){}
	~LoaiSP(){}

};


class KhuyenMai
{
private:
	char* MakM, NgaybatDau, NgayKetThuc;
	float UuDai;
public:
	KhuyenMai(){}
	~KhuyenMai(){}

};


//khương
class Khach
{
private:
	char * MakH;
public:
	char *TenKH, NgSinh, DChi, SDT;

public:
	Khach(){}
	~Khach(){}
	friend class HoaDon;
};

class ChiTietHD
{
private:
	char* MaHD;
public:
	char* MaKh, MaSp, NgayLapHD;
	int Soluong, ThanhTien;

public:
	ChiTietHD(){}
	~ChiTietHD(){}


};


class HoaDon
{
private:
	char* MaHd;
public:
	char* TrangThai, NgLapHD;
	int Soluong, TongGia;
public:
	HoaDon(){}
	~HoaDon(){}
	friend class ChiTietHD;

};


//đạt
class Nhanvien
{
public:
	char* NHANVIEN;
	char* MANV;
	char* HONV;
	char* TENLOT;
	char* TENNV;
	char* SDT;
	char* PHAI;
	char* DCHI;
protected:
	char* maloainv;
public:
	Nhanvien(){}
	~Nhanvien(){}
	friend class BienLai;
	friend class THANHVIEN;
	friend class Loainv;
	friend class HoaDon;
};
class Loainv : public Nhanvien
{
public:
	char* maloainv, tenloainv;
public:
	Loainv(){}
	~Loainv(){}
};

class BienLai
{
private:
	char* MABL;
public:
	int SOTIEN;
	char* NGAYLAP;
	char* TRANGTHAIBL;
	char* MA_KHACH;
	char* MANV;
public:
	BienLai(){}
	~BienLai(){}
};

class THANHVIEN
{
private:
	char* MA_TV;
	char* TENTV;
	char* DIACHITV;
	char* MANV_QL;
public:
	THANHVIEN(){}
	~THANHVIEN(){}
};
