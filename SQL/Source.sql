go
	--Tạo CSDL QLBH
	create database QLBH
go
	--Tạo Table
---- KHACHHANG(MAKH,TENKH,DIACHI,DT,EMAIL)	
-- --VATTU(MAVT,TENVT,DVT,GIAMUA,SLTON)	
-- --HOADON(MAHD,NGAY,MAKH,TONGTG)	
-- --CHITIETHOADON(MAHD,MAVT,SL,KHUYENMAI,GIABAN)
	create table KhachHang(MAKH int,TENKH nvarchar(50),DIACHI nvarchar(50),DT nvarchar(50),EMAIL nvarchar(50))	
	create table VatTu(MAVT int,TENVT nvarchar(50),DVT nvarchar(50),GiaMua float,SlTon float)	
	create table HoaDon(MAHD int,TENKH nvarchar(50),MAKH int,TongTG float)	
	create table ChiTietHoaDon(MAHD int,MAVT int,SL nvarchar(50),KhuyenMai nvarchar(50),GiaBan float)
	--tạo khóa chính
	alter table KhachHang alter column MAKH int not null
	alter table KhachHang add constraint PK_KhachHang primary key(MAKH)

	alter table VatTu alter column MaVT int not null 
	alter table VatTu add constraint PK_VatTu primary key(MaVt)

	alter table HoaDon alter column MAHD int not null
	alter table HoaDon add constraint PK_HOADON primary key(mahd)

	alter table ChiTietHoaDon alter column MAHD int not null
	alter table ChiTietHoaDon alter column MAVT int not null

	alter table CHiTietHoaDOn add constraint PK_CHiTietHoaDon primary key(MAHD,MAVT)

	--Tạo Khóa Ngoại
	alter table CHiTietHoaDon add constraint FK_ChiTietHoaDon_HoaDon foreign key(MAHD) references HoaDon(MAHD)
	alter table ChiTietHoaDon add constraint FK_ChiTietHoaDon_VatTu Foreign key(MAVT) references VatTu(MAVT)



	alter table HoaDon add constraint fk_HoaDon_KhachHang foreign key(makh) references KhachHang(makh)
	
	-- Check email có @
	go
	alter table KhachHang add constraint ck_KhachHang_email check(email like '%@%')
	
	go
	alter table KhachHang drop constraint ck_KhachHang_email

	go
	select* from KhachHang
	go

	go
	insert into KhachHang(MAKH,EMAIL)
	values(3,'khuong@gmail.com')
	
go
	select*
	from hoadon
	alter table HoaDon drop column TenKH
	alter table HoaDon add Ngay date
	alter table HoaDon add constraint ck_HoaDon_Ngay check (day(Ngay) = day(getdate()))

	alter table HoaDon drop constraint ck_HoaDon_Ngay

	alter table ChiTietHoaDon add constraint ck_ChiTietHoaDon check(giaban >= vattu.giamua)

