CREATE DATABASE QuanLyDeAn;

-- Tạo bảng Nhân Viên
create table NHANVIEN
(
	HONV nvarchar(15),
	TENLOT nvarchar(15),
	TENNV nvarchar(15),
	MANV char(9),
	NGSINH datetime,
	DCHI nvarchar(30),
	PHAI nvarchar(3),
	LUONG float,
	MA_NQL  char(9),
	PHG  int,
	PRIMARY KEY (MANV)
)

-- Tạo bảng Đề Án
create table DEAN
(
	TENDA nvarchar(15),
	MADA int,
	DDIEM_DA nvarchar(15),
	PHONG int,
	PRIMARY KEY (MADA)
)

-- Tạo bảng Công Việc
create table CONGVIEC
(
	MADA int,
	STT int,
	TEN_CONG_VIEC nvarchar(50),
	PRIMARY KEY (MADA, STT)
)

-- Tạo bảng Phòng Ban
create table PHONGBAN
(
	TENPHG nvarchar(15),
	MAPHG int,
	TRPHG char(9),
	NG_NHANCHUC datetime,
	PRIMARY KEY (MAPHG)
)

-- Tạo bảng Phân Công
create table PHANCONG
(
	MA_NVIEN  char(9),
	MADA int,
	STT int,
	THOIGIAN float,
	PRIMARY KEY (MA_NVIEN, MADA, STT)
)

-- Tạo bảng Thân Nhân
create table THANNHAN
(
	MA_NVIEN char(9),
	TENTN nvarchar(15),
	PHAI char(3),
	NGSINH datetime,
	QUANHE  nvarchar(15),
	PRIMARY KEY (MA_NVIEN, TENTN)
)

-- Tạo bảng Địa Điểm Phòng
create table DIADIEM_PHG
(
	MAPHG  int,
	DIADIEM nvarchar(15),
	PRIMARY KEY (MAPHG, DIADIEM)
)

-- Tạo khóa ngọai FK_NHANVIEN_NHANVIEN
alter table NHANVIEN 
	add constraint FK_NHANVIEN_NHANVIEN
		foreign key (MA_NQL)
			references NHANVIEN(MANV)

-- Tạo khóa ngọai FK_NHANVIEN_PHONGBAN
alter table NHANVIEN 
	add constraint FK_NHANVIEN_PHONGBAN
		foreign key (PHG)
			references PHONGBAN(MAPHG)

-- Tạo khóa ngọai FK_PHONGBAN_NHANVIEN
alter table PHONGBAN 
	add constraint FK_PHONGBAN_NHANVIEN
		foreign key (TRPHG)
			references NHANVIEN(MANV)

-- Tạo khóa ngọai FK_DEAN_PHONGBAN
alter table DEAN 
	add constraint FK_DEAN_PHONGBAN
		foreign key (PHONG)
			references PHONGBAN(MAPHG)

-- Tạo khóa ngọai FK_CONGVIEC_DEAN
alter table CONGVIEC 
	add constraint FK_CONGVIEC_DEAN
		foreign key (MADA)
			references DEAN(MADA)

-- Tạo khóa ngọai FK_PHANCONG_CONGVIEC
alter table PHANCONG 
	add constraint FK_PHANCONG_CONGVIEC
		foreign key (MADA, STT)
			references CONGVIEC(MADA, STT)

-- Tạo khóa ngọai FK_PHANCONG_NHANVIEN
alter table PHANCONG 
	add constraint FK_PHANCONG_NHANVIEN
		foreign key (MA_NVIEN)
			references NHANVIEN(MANV)

-- Tạo khóa ngọai FK_DIADIEM_PHG_PHONGBAN
alter table THANNHAN 
	add constraint FK_THANNHAN_NHANVIEN
		foreign key (MA_NVIEN)
			references NHANVIEN(MANV)

-- Tạo khóa ngọai FK_DIADIEM_PHG_PHONGBAN
alter table DIADIEM_PHG 
	add constraint FK_DIADIEM_PHG_PHONGBAN
		foreign key (MAPHG)
			references PHONGBAN(MAPHG)

-- Thêm dữ liệu cho NHANVIEN với MA_NQL = NULL và PHG = NULL
insert into NHANVIEN values (N'Đinh', N'Bá', N'Tiên','009', '02/11/1960', N'119 Cống Quỳnh, Tp HCM', N'Nam', '30000', NULL, NULL)
insert into NHANVIEN values (N'Nguyễn', N'Thanh', N'Tùng', '005', '08/20/1962', N'222 Nguyễn Văn Cừ, Tp HCM', N'Nam', '40000', NULL, NULL) 
insert into NHANVIEN values (N'Bùi', N'Ngọc', N'Hằng', '007', '3/11/1954', N'332 Nguyễn Thái Học, Tp HCM', N'Nam', '25000', NULL, NULL) 
insert into NHANVIEN values (N'Lê', N'Quỳnh', N'Như', '001', '02/01/1967', N'291 Hồ Văn Huê,  Tp HCM', N'Nữ', '43000', NULL, NULL)
insert into NHANVIEN values (N'Nguyễn', N'Mạnh', N'Hùng', '004', '03/04/1967', N'95 Bà Rịa, Vũng Tàu', N'Nam', '38000', NULL, NULL)
insert into NHANVIEN values (N'Trần', N'Thanh', N'Tâm', '003', '05/04/1957', N'34 Mai Thị Lự, Tp HCM', N'Nam', '25000', NULL, NULL)
insert into NHANVIEN values (N'Trần', N'Hồng', N'Quang', '008', '09/01/1967', N'80 Lê Hồng Phong, Tp HCM', N'Nam', '25000', NULL, NULL)
insert into NHANVIEN values (N'Phạm', N'Văn', N'Vinh', '006', '01/01/1965', N'45 Trưng Vương, Hà Nội', N'Nữ', '55000', NULL, NULL)

-- Update MA_NQL cho  NHANVIEN
update NHANVIEN set MA_NQL = '005' where MANV = '009'
update NHANVIEN set MA_NQL = '006' where MANV = '005'
update NHANVIEN set MA_NQL = '001' where MANV = '007'
update NHANVIEN set MA_NQL = '006' where MANV = '001'
update NHANVIEN set MA_NQL = '005' where MANV = '004'
update NHANVIEN set MA_NQL = '005' where MANV = '003'
update NHANVIEN set MA_NQL = '001' where MANV = '008'

-- Thêm dữ liệu cho PHONGBAN
insert into PHONGBAN values (N'Nghiên cứu',  '5',  '005',  '05/22/1978')
insert into PHONGBAN values (N'Điều hành',  '4',  '008',  '01/01/1985')
insert into PHONGBAN values (N'Quản lý',  '1',  '006',  '06/19/1971')

-- Update PHG cho NHANVIEN
update NHANVIEN set PHG = '5' where MANV = '009'
update NHANVIEN set PHG = '5' where MANV = '005'
update NHANVIEN set PHG = '4' where MANV = '007'
update NHANVIEN set PHG = '4' where MANV = '001'
update NHANVIEN set PHG = '5' where MANV = '004'
update NHANVIEN set PHG = '5' where MANV = '003'
update NHANVIEN set PHG = '4' where MANV = '008'
update NHANVIEN set PHG = '1' where MANV = '006'


-- Thêm dữ liệu cho DIADIEM_PHG
insert into DIADIEM_PHG values ('1',  N'TP HCM')
insert into DIADIEM_PHG values ('4',  N'Hà Nội')
insert into DIADIEM_PHG values ('5',  N'Vũng Tàu')
insert into DIADIEM_PHG values ('5',  N'NHA TRANG')
insert into DIADIEM_PHG values ('5',  N'TP HCM')

-- Thêm dữ liệu cho DEAN
insert into DEAN values (N'Sản phẩm X',  '1',  N'Vũng Tàu',  '5')
insert into DEAN values (N'Sản phẩm Y',  '2',  N'Nha Trang',  '5') 
insert into DEAN values (N'Sản phẩm Z',  '3',  N'TP HCM',  '5')
insert into DEAN values (N'Tin học hoá',  '10',  N'Hà Nội',  '4') 
insert into DEAN values (N'Cáp quang',  '20',  N'TP HCM',  '1')
insert into DEAN values (N'Đào tạo',  '30',  N'Hà Nội',  '4')

-- Thêm dữ liệu cho THANNHAN
insert into THANNHAN values ('005',  N'Trinh',  N'Nữ',  '04/05/1976',  N'Con gái')
insert into THANNHAN values ('005',  N'Khang',  N'Nam',  '10/25/1973',  N'Con trai') 
insert into THANNHAN values ('005',  N'Phương',  N'Nữ',  '05/03/1948',  N'Vợ chồng')
insert into THANNHAN values ('001',  N'Minh',  N'Nam',  '02/29/1932',  N'Vợ chồng')
insert into THANNHAN values ('009',  N'Tiến',  N'Nam',  '01/01/1978',  N'Con trai')
insert into THANNHAN values ('009',  N'Châu',  N'Nữ',  '12/30/1978',  N'Con gái')
insert into THANNHAN values ('009',  N'Phương',  N'Nữ',  '05/05/1957',  N'Vợ chồng')

-- Thêm dữ liệu cho CONGVIEC
insert into CONGVIEC values ('1',  '1',  N'Thiết kế sản phẩm X')
insert into CONGVIEC values ('1',  '2',  N'Thử nghiệm sản phẩm X')
insert into CONGVIEC values ('2',  '1',  N'Sản xuất sản phẩm Y')
insert into CONGVIEC values ('2',  '2',  N'Quảng cáo sản phẩm Y')
insert into CONGVIEC values ('3',  '1',  N'Khuyến mãi sản phẩm Z')
insert into CONGVIEC values ('10',  '1',  N'Tin học hoá phòng nhân sự')
insert into CONGVIEC values ('10',  '2',  N'Tin học hoá phòng kinh doanh') 
insert into CONGVIEC values ('20',  '1',  N'Lắp đặt cáp quang')
insert into CONGVIEC values ('30',  '1',  N'Đào tạo nhân viên Marketing')
insert into CONGVIEC values ('30',  '2',  N'Đào tạo chuyên viên thiết kế')

-- Thêm dữ liệu cho PHANCONG
insert into PHANCONG values ('009',  '1',  '1',  '32')
insert into PHANCONG values ('009',  '2',  '2',  '8')
insert into PHANCONG values ('004',  '3',  '1',  '40')
insert into PHANCONG values ('003',  '1',  '2',  '20.0')
insert into PHANCONG values ('003',  '2',  '1',  '20.0')
insert into PHANCONG values ('008',  '10',  '1',  '35')
insert into PHANCONG values ('008',  '30',  '2',  '5')
insert into PHANCONG values ('001',  '30',  '1',  '20')
insert into PHANCONG values ('001',  '20',  '1',  '15')
insert into PHANCONG values ('006',  '20',  '1',  '30')
insert into PHANCONG values ('005',  '3',  '1',  '10')
insert into PHANCONG values ('005',  '10',  '2',  '10')
insert into PHANCONG values ('005',  '20',  '1',  '10')
insert into PHANCONG values ('007',  '30',  '2',  '30')
insert into PHANCONG values ('007',  '10',  '2',  '10')


--2.Cho biết các thông tin chi tiết của nhân viên.

--3.Cho biết tên các nhân viên ở phong sô 5.

--4.Cho biết tên phòng mà nhân viên tên Khoa trực thuộc .

--5.Cho biết tên của trưởng phong nghiên cứu .

--6.Cho biết mức lương trung bình của từng phòng ban .

--7.Cho biết tên các phòng có mức lương trung bình cao nhất .

--8.Cho biết tên các nhân viên không tham gia đồ án nào .

--9.Cho biết tên các nhân viên tham gia tất cả các đề án.

--10.Cho biết tên Nhân Viên tham gia trên 3 đề án ở TPHCM .

--11.Cho biết tên Nhân Viên có mức lương cao nhất ở phong quản lý .

--12.Hãy xóa các đề án ở Vũng Tàu .

--13.Tăng lương cho các nhân viên ở phòng quản lý 10%.

--14.Đối với các nhân vien tham gia trên 3 đề án , hãy tăng 10% lương cho họ 
