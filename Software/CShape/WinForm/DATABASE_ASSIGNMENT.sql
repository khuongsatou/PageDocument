create database QLNhaTro
go
use QLNhaTro
go
-- TẠO BẢNG LOẠI NHÀ
create table LOAINHA
(
	MALOAINHA INT IDENTITY,
	TENLOAINHA NVARCHAR(30),
	CONSTRAINT PK_LOAINHA PRIMARY KEY (MALOAINHA)
)
GO
-- TẠO BẢNG NGƯỜI DÙNG
CREATE TABLE NGUOIDUNG
(
	MANGUOIDUNG VARCHAR(10),
	TENNGUOIDUNG NVARCHAR(50),
	GIOITINH NVARCHAR(5),
	DIENTHOAI VARCHAR(12),
	DIACHI NVARCHAR(50),
	QUAN NVARCHAR(15),
	EMAIL NVARCHAR(50),
	TRANGTHAI INT
	CONSTRAINT PK_NGUOIDUNG PRIMARY KEY (MANGUOIDUNG),
	CONSTRAINT CK_PHAI CHECK (GIOITINH IN ('Nam',N'Nữ')),
)
--TẠO BẢNG NHÀ TRỌ
GO
CREATE TABLE NHATRO
(
	MANHATRO VARCHAR(10),
	LOAIHINH INT,
	DIENTICH FLOAT,
	GIAPHONG FLOAT,
	DIACHI NVARCHAR(50),
	QUAN NVARCHAR(15),
	MOTA NVARCHAR(255),
	NGAYDANGTIN DATE,
	NGUOILIENHE VARCHAR(10),
	TRANGTHAI INT
	CONSTRAINT PK_NHATRO PRIMARY KEY (MANHATRO),
	CONSTRAINT CK_DIENTICH CHECK (DIENTICH>0),
	CONSTRAINT CK_GIAPHONG CHECK (GIAPHONG>0)
)
GO
-- TAO BANG DANH GIA
CREATE TABLE DANHGIA
(
	MANHATRO VARCHAR(10),
	MANGUOIDUNG VARCHAR(10),
	[LIKE/DISLIKE] BIT,
	NOIDUNG_DANHGIA NVARCHAR(255),
	TRANGTHAI INT
	CONSTRAINT PK_DANHGIA PRIMARY KEY (MANHATRO,MANGUOIDUNG)
)
GO
-- TAO KHOA NGOAI GIUA CAC BANG
--GIUA BANG NHA TRO VA LOAI NHA TRO
ALTER TABLE NHATRO
ADD CONSTRAINT FK_NHATRO_LOAINHA FOREIGN KEY (LOAIHINH)
REFERENCES LOAINHA(MALOAINHA)
GO
--GIUA BANG NHA TRO VA NGUOI DUNG
ALTER TABLE NHATRO
ADD CONSTRAINT FK_NHATRO_NGUOIDUNG FOREIGN KEY (NGUOILIENHE)
REFERENCES NGUOIDUNG(MANGUOIDUNG)
GO
--GIUA BANG DANH GIA VA BANG NGUOI DUNG
ALTER TABLE DANHGIA
ADD CONSTRAINT FK_DANHGIA_NGUOIDUNG FOREIGN KEY (MANGUOIDUNG)
REFERENCES NGUOIDUNG(MANGUOIDUNG)
GO
--GIUA BANG DANH GIA VA BANG NHA TRO
ALTER TABLE DANHGIA
ADD CONSTRAINT FK_DANHGIA_NHATRO FOREIGN KEY (MANHATRO)
REFERENCES NHATRO(MANHATRO)
--tHEM DỮ LIỆU CHO BẢNG LOAI NHA
GO
insert into Loainha(TENLOAINHA)
values (N'Căn hộ chung cư'),(N'Nhà riêng'),(N'Phòng trọ khép kín')

--Thêm dữ liệu cho bảng người dùng
GO
insert into NGUOIDUNG(MANGUOIDUNG,TENNGUOIDUNG,GIOITINH,
	DIENTHOAI ,DIACHI ,QUAN ,EMAIL ,TRANGTHAI)
values ('ND101',N'Nguyễn Văn Nam','Nam','0902311677',N'1342/25 Huỳnh Tấn Phát',
		N'Quận 7','namnguyen@gmail.com',1),
		('ND102',N'Lê Thanh Sang','Nam','0952311677',N'340/25/3 Trần Hưng Đạo',
		N'Quận 5','tsang1311@gmail.com',1),
		('ND103',N'Phạm Thị Hồng Mơ',N'Nữ','0126338712',N'771 An Dương Vương',
		N'Quận 6','hoadaquy1984@gmail.com',1),
		('ND104',N'Trương Văn Mạnh','Nam','0915778236',N'588/20/3 Trường Chinh',
		N'Quận Tân Bình','manhtv@gmail.com',1),
		('ND105',N'Hồ Thị Kim Chi',N'Nữ','0982311407',N'380 Nguyễn Duy Trinh',
		N'Quận 2','kimchi@gmail.com',1),
		('ND106',N'Mai Thị Vân Anh',N'Nữ','0915321677',N'220/15 Lê Văn Thịnh',
		N'Quận 2','mtvanh@gmail.com',1),
		('ND107',N'Đào Lâm Xuyên','Nam','0122511852',N'207/15/3 Lê Văn Việt',
		N'Quận 9','xuyenit@gmail.com',1),
		('ND108',N'Nguyễn Thanh Hùng','Nam','0909331522',N'D6 Khang Việt Land',
		N'Quận 9','hungbds@gmail.com',1),
		('ND109',N'Nguyễn Trà','Nam','0906131474',N'670/22 Quang Trung',
		N'Gò Vấp','tramy@gmail.com',1),
		('ND110',N'Nguyễn Đình Vũ Lâm','Nam','0909121422',N'125 Hồ Tùng Mậu',
		N'Quận 1','vlam@gmail.com',1)

--Them dữ liệu cho bảng nhà
GO
INSERT INTO NHATRO(MANHATRO,LOAIHINH,DIENTICH ,
	GIAPHONG,DIACHI,QUAN,MOTA,NGAYDANGTIN,NGUOILIENHE,TRANGTHAI)
values ('130NT222',2,50,9000000,N'134/25 Phan Đình Phùng',N'Phú Nhuận',
		N'Gần Ngã tư Phú Nhuận, gần bệnh viện, trường học, tiện di chuyển về trung tâm TP',
		'07/20/2018', 'ND101',1),
		('1130NT223',2,120,18000000,N'26/4 Nguyễn Thái Học',N'Quận 1',
		N'Trung tâm Q1, tiện mở văn phòng, an ninh, yên tĩnh',
		'01/15/2018', 'ND103',1),
		('1130NT224',2,76,7000000,N'866/20/7 Phan Văn Trị',N'Gò Vấp',
		N'Gần bệnh viện, trường học,cổng nội bộ an ninh, yên tĩnh ',
		'03/04/2018', 'ND104',1),
		('1130NT222',2,88,15000000,N'250/15 Nguyễn Đình Chiểu',N'Quận 3',
		N'Gần chợ Bà Chiểu, gần bệnh viện, trường học, thuận tiện mở shop mua bán, an ninh',
		'11/09/2018', 'ND102',1),
		('1130VS100',1,70,12000000,N'A6 Block C Sun Avanue',N'Quận 2',
		N'Dự án Novaland Quận 2, gần bệnh viện, trường học, tiện di chuyển về trung tâm TP',
		'12/06/2018', 'ND107',1),
		('1130VS122',1,65,7000000,N'F2 Chung cư Nguyễn Thiện Thuật',N'Quận 5',
		N'Gần Trung tâm Q1, Q3, an ninh, yên tĩnh, gần bệnh viện, trường học',
		'10/15/2018', 'ND105',1),
		('1130VS116',1,60,6500000,N'C3 Chung cư Hoàng Kim Thế Gia',N'Bình Tân',
		N'Gần Ngã tư Bốn Xã, gần bệnh viện, trường học, tiện di chuyển về bến xe miền Tây, Q5,Q6',
		'07/22/2018', 'ND101',1),
		('1130NT310',3,25,2000000,N'550/10/12 Nguyễn Kiệm',N'Phú Nhuận',
		N'Gần Ngã tư Phú Nhuận, gần bệnh viện, trường học, tiện di chuyển về trung tâm TP',
		'05/23/2018', 'ND106',1),
		('1130NT322',3,40,3000000,N'273/5/21 Lê Văn Lương',N'Quận 7',
		N'Gần Trung tâm Q7, gần bệnh viện, trường học, tiện di chuyển về Q1',
		'07/20/2018', 'ND110',1),
		('1130NT315',3,28,2800000,N'208/32/17 Phan Đăng Lưu',N'Phú Nhuận',
		N'Gần Ngã tư Phú Nhuận, gần bệnh viện, trường học, tiện di chuyển về trung tâm TP',
		'12/16/2018', 'ND109',1)
--Thêm dữ liệu vào bảng đánh giá
GO
INSERT INTO DANHGIA(MANGUOIDUNG, MANHATRO, NOIDUNG_DANHGIA,[LIKE/DISLIKE], TRANGTHAI)
VALUES ('ND101','1130NT223',N'Nhà đẹp, thoáng mát, giá thuê hơi cao',1,1),
		('ND106','1130NT223',N'Giá thuê hợp lý, nhà đẹp, chủ nhà lịch sự, thiện chí',1,1),
		('ND102','1130NT224',N'Nhà đẹp, khu dân cư an ninh, điểm trừ di chuyển hơi xa về trung tâm thành phố',1,1),
		('ND109','1130VS100',N'Căn hộ thiết kế đẹp, giá trị tốt, chủ đầu tư uy tín',1,1),
		('ND103','1130VS100',N'Tiện ích tốt, không gian sống tuyệt vời',1,1),
		('ND108','1130VS100',N'Phí dịch vụ tiện ích hơi cao, hàng xóm không thân thiện',0,1),
		('ND101','1130NT315',N'Phòng trọ hơi chật, khu nhà trọ an ninh, sạch sẽ, giá hợp lý',1,1),
		('ND106','1130NT315',N'Chủ nhà trọ hơi khó tính, không được nấu ăn trong phòng, phòng hơi nóng và bí',0,1),
		('ND102','1130NT322',N'Phòng trọ rộng rãi, thoáng mát, khu dân cư an ninh, có chỗ để xe và được nấu ăn',1,1),
		('ND105','1130NT322',N'Chủ phòng trọ thân thiện, có thể ở ghép tối đa 3 người, sạch sẽ, an ninh',1,1)



