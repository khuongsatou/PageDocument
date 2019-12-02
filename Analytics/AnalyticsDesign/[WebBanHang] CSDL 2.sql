CREATE DATABASE WebBanHang;
GO

USE WebBanHang;
GO

--- Create tables ---
CREATE TABLE SanPham (
	MaSP varchar(10) PRIMARY KEY NOT NULL,
	TenSP nvarchar(100),
	ThongTin nvarchar(MAX),
	GiaTien int,
	SoLuongTonKho int,
	MaLoaiSP varchar(10),
	AnhMinhHoa nvarchar(MAX),
	TrangThai bit DEFAULT 1 NOT NULL
);

CREATE TABLE LoaiSanPham (
	MaLoaiSP varchar(10) PRIMARY KEY NOT NULL,
	TenLoaiSP nvarchar(100) NOT NULL,
	TrangThai bit DEFAULT 1 NOT NULL
);

CREATE TABLE TaiKhoan (
	TenTaiKhoan varchar(20) PRIMARY KEY NOT NULL,
	MatKhau varchar(20) NOT NULL,
	Email nvarchar(100),
	SDT varchar(20),
	DiaChi nvarchar(MAX),
	HoTen nvarchar(100),
	LaAdmin bit DEFAULT 0 NOT NULL,
	AnhDaiDien nvarchar(MAX),
	TrangThai bit DEFAULT 1 NOT NULL
);

CREATE TABLE GioHang (
	TenTaiKhoan varchar(20) NOT NULL,
	MaSP varchar(10) NOT NULL,
	SoLuong int DEFAULT 1 NOT NULL,
	CONSTRAINT PK_GioHang PRIMARY KEY (TenTaiKhoan, MaSP)
);

CREATE TABLE HoaDon (
	MaHD varchar(10) PRIMARY KEY NOT NULL,
	TenTaiKhoan varchar(20) NOT NULL,
	NgayMua datetime,
	DiaChiGiaoHang nvarchar(MAX),
	SDTGiaoHang varchar(20),
	TongTien int,
	TrangThai bit DEFAULT 1 NOT NULL
);

CREATE TABLE CTHoaDon (
	MaHD varchar(10) NOT NULL,
	MaSP varchar(10) NOT NULL,
	SoLuong int,
	DonGia int,
	CONSTRAINT PK_CTHoaDon PRIMARY KEY (MaHD, MaSP)
);

--- Create foreign key constraints
ALTER TABLE SanPham
ADD FOREIGN KEY (MaLoaiSP) REFERENCES LoaiSanPham(MaLoaiSP);

ALTER TABLE GioHang
ADD FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)

ALTER TABLE GioHang
ADD FOREIGN KEY (TenTaiKhoan) REFERENCES TaiKhoan(TenTaiKhoan)

ALTER TABLE HoaDon
ADD FOREIGN KEY (TenTaiKhoan) REFERENCES TaiKhoan(TenTaiKhoan)

ALTER TABLE CTHoaDon
ADD FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD)

ALTER TABLE CTHoaDon
ADD FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)

--- Insert values ---
--- into table TaiKhoan ---
INSERT INTO TaiKhoan (TenTaiKhoan, MatKhau, Email, SDT, DiaChi, HoTen, LaAdmin, AnhDaiDien, TrangThai) VALUES ('admin', 'admin', N'admin@webbanhang.com', '01234567890', N'Tp.Hồ Chí Minh', N'Nguyễn Văn Ad Min', 1, NULL, 1);
INSERT INTO TaiKhoan (TenTaiKhoan, MatKhau, Email, SDT, DiaChi, HoTen, LaAdmin, AnhDaiDien, TrangThai) VALUES ('test1', '123456', N'test@gmail.com', '0905123456', N'Hà Nội', N'Nguyễn Văn A', 0, NULL, 1);
INSERT INTO TaiKhoan (TenTaiKhoan, MatKhau, Email, SDT, DiaChi, HoTen, LaAdmin, AnhDaiDien, TrangThai) VALUES ('customer', '123456', N'customer@gmail.com', '0987654321', N'Huế', N'Trần Thị B', 0, NULL, 1);
--- into table LoaiSanPham ---
INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP, TrangThai) VALUES ('LSP001', N'Sách giáo khoa', 1)
INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP, TrangThai) VALUES ('LSP002', N'Sách tham khảo', 1)
INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP, TrangThai) VALUES ('LSP003', N'Sách nước ngoài', 1)
INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP, TrangThai) VALUES ('LSP004', N'Báo & Tạp chí', 1)
INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP, TrangThai) VALUES ('LSP005', N'Tiểu thuyết & Tự truyện', 1)
INSERT INTO LoaiSanPham (MaLoaiSP, TenLoaiSP, TrangThai) VALUES ('LSP006', N'Khác', 1)
--- into SanPham ---
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP001', N'Tuổi trẻ đáng giá bao nhiêu', N'Rosie Nguyễn', 45000, 40, 'LSP005', 'SP001.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP002', N'Bứt phá điểm thi THPT Quốc gia môn Hóa học', N'Nguyễn Đức Dũng', 51000, 15, 'LSP002', 'SP002.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP003', N'Khéo ăn khéo nói sẽ có được thiên hạ', N'Trác Nhã', 59000, 29, 'LSP006', 'SP003.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP004', N'Nhà giả kim', N'Paulo Coelho', 53000, 1, 'LSP003', 'SP004.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP005', N'Để yên cho bác sĩ "Hiền"', N'BS. Ngô Đức Hùng', 52000, 36, 'LSP004', 'SP005.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP006', N'Mình là cá, việc của mình là bơi ', N'Takeshi Furukawa', 57000, 9, 'LSP003', 'SP006.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP007', N'Đời ngắn đừng ngủ dài', N'Robin Sharma', 42000, 7, 'LSP003', 'SP007.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP008', N'Bứt phá điểm thi THPT Quốc gia môn Toán', N'ThS. Đỗ Đường Hiếu', 51000, 0, 'LSP002', 'SP008.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP009', N'Cà phê cùng Tony ', N'Tony Buổi Sáng', 62000, 18, 'LSP006', 'SP009.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP010', N'Em sẽ đến cùng cơn mưa', N'Ichikawa Takuji', 56000, 64, 'LSP005', 'SP010.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP011', N'Quẳng gánh lo đi mà vui sống', N'Dale Carnegie', 45000, 120, 'LSP006', 'SP011.jpg', 1)
INSERT INTO SanPham (MaSP, TenSP, ThongTin, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES ('SP012', N'Mình nói gì khi nói về hạnh phúc?', N'Rosie Nguyễn', 36000, 46, 'LSP005', 'SP012.jpg', 1)