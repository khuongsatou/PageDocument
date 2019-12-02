go
	select * from hoadon
	select * from vattu
go
-- --4.THÊM RÀNG BUỘC NGÀY TẠO HÓA ĐƠN LÀ NGÀY HIỆN HÀNH
go
	insert into hoadon values(1,1,10,'1/5/2019')

go
-- --6.XÓA HÓA ĐƠN LẬP NGÀY 27/12/2018: DELETE
	insert into hoadon values(4,10,12,'12/27/2020')
	alter table hoadon nocheck constraint all
	alter table hoadon check constraint all

	delete from hoadon where Ngay='12/27/2018'

	--bảng->cột-> điều kiện
	insert into VatTu values(3,N'giấy cứng','kg',124,14)
	update VatTu set dvt='bao' where dvt='kg'

	update VatTu set dvt='bao' where dvt='kg'

	update VatTu set GiaMua=GiaMua*1.1 where dvt='bao'
go
----1.	Hiển danh sách tất cả các khách hàng gồm mã khách hàng,
---- tên khách hàng, địa chỉ, điện thoại, và địa chỉ E-mail.
	select* from KhachHang
go
----2.	Hiển danh sách các khách hàng có địa chỉ là “TAN BINH”
---- gồm mã khách hàng, tên khách hàng, địa chỉ, điện thoại, 
---- và địa chỉ E-mail.
go
	insert into KhachHang values(4,N'hah',N'Bình Chánh','0122793','hah2a@gmail.com')
	select*
	from KhachHang
	where DIACHI like '%Tân bình%'
go
----3.	Hiển danh sách các khách hàng có địa chỉ là 
----“BINH CHANH” gồm mã khách hàng, tên khách hàng, địa chỉ, 
----điện thoại, và địa chỉ E-mail.
go
	select*
	from KhachHang
	where DIACHI like '%Bình Chánh%'
go
----4.	Hiển danh sách các khách hàng gồm các thông tin 
----mã khách hàng, tên khách hàng, địa chỉ và địa chỉ E-mail 
----của những khách hàng chưa có số điện thoại
go
	select*
	from KhachHang
	where DT is null
go
----5.	Hiển danh sách các khách hàng chưa có số điện thoại 
----và cũng chưa có địa chỉ Email gồm mã khách hàng, tên khách 
----hàng, địa chỉ.
go
	select*
	from KhachHang
	where dt is null and EMAIL is null

	alter table khachHang nocheck constraint all
	insert into KhachHang(MAKH) values(5)

go
--7.	Hiển danh sách tất cả các vật tư gồm mã vật tư, tên vật
-- tư, đơn vị tính và giá mua.
go
	select mavt,TENVT,dvt,GiaMua
	from VatTu
go
--8.	Hiển danh sách các vật tư có đơn vị tính là “CAI” 
--gồm mã vật tư, tên vật tư và giá mua.
go
	select*
	from VatTu
	where DVT like '%cai%'

	insert into VatTu(mavt,dvt) values (5,'cai')
go

--9.	Hiển danh sách các vật tư gồm mã vật tư, tên vật tư, 
--đơn vị tính và giá mua mà có giá mua trên 25000.
go
	select MAVT,TENVT,DVT,GiaMua
	from VatTu
	where GiaMua >25000
	insert into VatTu(mavt,dvt,GiaMua) values (8,'cm',20000)
go
--10.	Hiển danh sách các vật tư là “GẠCH” (bao gồm các 
--loại gạch) gồm mã vật tư, tên vật tư, đơn vị tính và 
--giá mua . 
go
	select MAVT,TENVT,DVT,GiaMua
	from VatTu
	where TENVT like N'%Gach%'

	insert into VatTu(mavt,TENVT,dvt,GiaMua) values (10,'Gach men','km',90000)
go

go
	--11.	Hiển danh sách các vật tư gồm mã vật tư, tên vật tư, 
--đơn vị tính và giá mua mà có giá mua nằm trong khoảng từ 
--20000 đến 40000.
go
	select MAVT,TENVT,DVT,GiaMua
	from VatTu
	where GiaMua between 20000 and 40000
go

--12.	Tạo query để lấy ra các thông tin gồm Mã hoá đơn, 
--ngày lập hoá đơn, tên khách hàng, địa chỉ khách hàng và 
--số điện thoại.
go
	select HoaDon.MAHD,Ngay,TENKH,DIACHI,DT
	from KhachHang,HoaDon
	where KhachHang.MAKH= HoaDon.MAKH 

	select*
	from HoaDon

	select*
	from KhachHang
	
	insert into KhachHang values(10,N'hahđfd',N'Bình Chánh','0122793d','a@gmail.com')

go
--13.	Tạo query để lấy ra các thông tin gồm Mã hoá đơn, 
--tên khách hàng, địa chỉ khách hàng và số điện thoại 
--của ngày 25/5/2000.
go
	select*
	from HoaDon,KhachHang
	where HoaDon.MAKH = KhachHang.MAKH and HoaDon.Ngay = '5/25/2000'
	insert into HoaDon(MAHD,MAKH,Ngay) values (7,3,'6/30/2000')

	alter table hoadon nocheck constraint all
go
--14.	Tạo query để lấy ra các thông tin gồm Mã hoá đơn, 
--ngày lập hoá đơn, tên khách hàng, địa chỉ khách hàng và 
--số điện thoại của những hoá đơn trong tháng 6/2000.
go
	select*
	from HoaDon,KhachHang
	where HoaDon.MAKH = KhachHang.MAKH and  month(HoaDon.Ngay) = '6' and year(HoaDon.Ngay) ='2000'

go

--15.	Tạo query để lấy ra các thông tin gồm Mã hoá đơn, 
--ngày lập hoá đơn, tên khách hàng, địa chỉ khách hàng và 
--số điện thoại.
go
	select*
	from HoaDon,KhachHang
	where HoaDon.MAKH= KhachHang.MAKH
go

--16.	Lấy ra danh sách những khách hàng (tên khách hàng, 
--địa chỉ, số điện thoại) đã mua hàng trong tháng 6/2000.
go
	select*
	from KhachHang,HoaDon
	where KhachHang.MAKH = HoaDon.MAKH and MONTH(Ngay) = '6' and YEAR(Ngay) = '2000'

go

--17(*).	Lấy ra danh sách những khách hàng không mua hàng 
--trong tháng 6/2000 gồm các thông tin tên khách hàng, 
--địa chỉ, số điện thoại.
go
	--c2
	select*
	from KhachHang
	where MAKH not in(

	select MAKH
	from HoaDon
	where MONTH(Ngay) ='6' and YEAR(Ngay) ='2000')

go

--18.	Tạo query để lấy ra các thông tin gồm các thông tin 
--mã hóa đơn, ,mã vật tư, tên vật tư, đơn vị tính, giá bán, 
--giá mua, số lượng , trị giá mua (giá mua * số lượng), 
--trị giá bán , ( giá bán * số lượng).
go
	select MAHD , VatTu.MAVT,TENVT,GiaBan,GiaMua,SL,(GiaMua*SL) as N'Trị Gia Mua' 
	from VatTu ,ChiTietHoaDon
	where ChiTietHoaDon.MAVT = VatTu.MAVT
	
	insert into ChiTietHoaDon values(3,3,10,'10%',13000)
	update ChiTietHoaDon set GiaBan=100 where MAHD=2
	update ChiTietHoaDon set sl=140 where MAHD=3
	select*
	from ChiTietHoaDon
go
--19.	Tạo query để lấy ra các chi tiết hoá đơn gồm các thông 
--tin mã hóa đơn, ,mã vật tư, tên vật tư, đơn vị tính, giá 
--bán, giá mua, số lượng , trị giá mua (giá mua * số lượng), 
--trị giá bán , ( giá bán * số lượng) mà có giá bán lớn hơn
-- hoặc bằng giá mua.
go
	select ChiTietHoaDon.MAHD , VatTu.MAVT,TENVT,GiaBan,GiaMua,SL,(GiaMua*SL) as N'Trị Gia Mua',(GiaBan*SL) as N'Tri giá bán'
	from VatTu,ChiTietHoaDon
	where VatTu.MAVT = ChiTietHoaDon.MAVT and GiaBan>=GiaMua
go
--20.(*)	Tạo query để lấy ra các thông tin gồm mã hóa đơn, 
--,mã vật tư, tên vật tư, đơn vị tính, giá bán, giá mua, 
--số lượng , trị giá mua (giá mua * số lượng), trị giá bán ,
-- ( giá bán * số lượng) và cột khuyến mãi với khuyến mãi 
-- 10% cho những mặt hàng bán trong một hóa đơn lơn hơn 100.
go
	select MAHD , VatTu.MAVT,TENVT,GiaBan,GiaMua,SL,(GiaMua*SL) as N'Trị Gia Mua',(GiaBan*SL) as N'Tri giá bán',KhuyenMai = case when (sl>100) then 0.1 else 0 end
	from VatTu,ChiTietHoaDon
	where VatTu.MAVT = ChiTietHoaDon.MAVT
go

--21.	Tìm ra những mặt hàng chưa bán được.
go
	select*
	from VatTu
	where MAVT not in(

	select mavt
	from ChiTietHoaDon)
	


go

--22.	Tạo bảng tổng hợp gồm các thông tin: mã hóa đơn, 
--ngày hoá đơn, tên khách hàng, địa chỉ, số điện thoại, 
--tên vật tư, đơn vị tính, giá mua, giá bán, số lượng, 
--trị giá mua, trị giá bán. 

go
	select*
	from HoaDon,KhachHang,ChiTietHoaDon,VatTu
	where HoaDon.MAKH = KhachHang.MAKH and HoaDon.MAHD = ChiTietHoaDon.MAHD and ChiTietHoaDon.MAVT = VatTu.MAVT

go


--23.	Tạo bảng tổng hợp của tháng 5/2000 gồm các thông tin:
-- mã hóa đơn, ngày hoá đơn, tên khách hàng, địa chỉ, số điện
--  thoại, tên vật tư, đơn vị tính, giá mua, giá bán, số 
--  lượng, trị giá mua, trị giá bán. 
go
	select*
	from HoaDon,KhachHang,ChiTietHoaDon,VatTu
	where HoaDon.MAKH = KhachHang.MAKH and HoaDon.MAHD = ChiTietHoaDon.MAHD and ChiTietHoaDon.MAVT = VatTu.MAVT and MONTH(HoaDon.Ngay)=5 and YEAR(Ngay) =2000
go

--24.	Tạo bảng tổng hợp của tháng 6/2000 gồm các thông tin: 
--mã hóa đơn, ngày hoá đơn, tên khách hàng, địa chỉ, số điện 
--thoại, tên vật tư, đơn vị tính, giá mua, giá bán, số lượng,
-- trị giá mua, trị giá bán.
go
	select*
	from HoaDon,KhachHang,ChiTietHoaDon,VatTu
	where HoaDon.MAKH = KhachHang.MAKH and HoaDon.MAHD = ChiTietHoaDon.MAHD and ChiTietHoaDon.MAVT = VatTu.MAVT and MONTH(HoaDon.Ngay)=6 and YEAR(Ngay) =2000
	
	select*
	from HoaDon
	select*
	from VatTu
	select*
	from ChiTietHoaDon
	select*
	from KhachHang

	insert into HoaDon values(12,1,20,'6/25/2000')
	update HoaDon set Ngay='1/26/2000' where makh=1
go 

--25.	Tạo bảng tổng hợp của quý 1 năm 2000 gồm các thông tin:
-- mã hóa đơn, ngày hoá đơn, tên khách hàng, địa chỉ, số điện
--  thoại, tên vật tư, đơn vị tính, giá mua, giá bán, số 
--  lượng, trị giá mua, trị giá bán. 
go
	select *
	from HoaDon,KhachHang,ChiTietHoaDon,VatTu
	where HoaDon.MAKH = KhachHang.MAKH and HoaDon.MAHD = ChiTietHoaDon.MAHD and ChiTietHoaDon.MAVT = VatTu.MAVT and YEAR(Ngay) =2000 and (MONTH(Ngay) between 1 and 3)
	
go

--26.	Lấy ra danh sách các hoá đơn gồm các thông tin: 
--Số hoá đơn, ngày, tên khách hàng, địa chỉ khách hàng, 
--tổng trị giá của hoá đơn.
go
	select ChiTietHoaDon.MAHD, tenkh,DIACHI,sum(sl*GiaBan)
	from HoaDon, KhachHang ,ChiTietHoaDon
	where HoaDon.MAKH = KhachHang.MAKH and ChiTietHoaDon.MAHD = KhachHang.MAKH
	group by chitiethoadon.MAHD,TENKH,DIACHI

	select*
	from ChiTietHoaDon
go

--27.	Lấy ra hoá đơn có tổng trị giá lớn nhất gồm các thông 
--tin: Số hoá đơn, ngày, tên khách hàng, địa chỉ khách hàng,
-- tổng trị giá của hoá đơn.
go
	select ChiTietHoaDon.MAHD, tenkh,DIACHI,sum(sl*GiaBan)
	from HoaDon, KhachHang ,ChiTietHoaDon
	where HoaDon.MAKH = KhachHang.MAKH and ChiTietHoaDon.MAHD = HoaDon.MAHD
	group by ChiTietHoaDon.MAHD,TENKH,DIACHI
	having sum(sl*GiaBan) >= all(
								select SUM(sl*GiaBan)
								from HoaDon,ChiTietHoaDon,KhachHang
								where HoaDon.MAHD = ChiTietHoaDon.MAHD and KhachHang.MAKH = HoaDon.MAKH
								group by hoadon.mahd,ngay,tenkh,diachi
	)
go
--28.	Lấy ra hoá đơn có tổng trị giá lớn nhất trong tháng 
--5/2000 gồm các thông tin: Số hoá đơn, ngày, tên khách hàng,
-- địa chỉ khách hàng, tổng trị giá của hoá đơn.
go
	select ChiTietHoaDon.MAHD, tenkh,DIACHI,sum(sl*GiaBan)
	from HoaDon, KhachHang ,ChiTietHoaDon
	where HoaDon.MAKH = KhachHang.MAKH and ChiTietHoaDon.MAHD = HoaDon.MAHD and MONTH(Ngay) =5 and YEAR(Ngay)=2000
	group by ChiTietHoaDon.MAHD,TENKH,DIACHI
	having sum(sl*GiaBan) >= all(
								select SUM(sl*GiaBan)
								from HoaDon,ChiTietHoaDon,KhachHang
								where HoaDon.MAHD = ChiTietHoaDon.MAHD and KhachHang.MAKH = HoaDon.MAKH
								and MONTH(Ngay) =5 and YEAR(Ngay)=2000
								group by hoadon.mahd,ngay,tenkh,diachi
	)
go
----29.	Lấy ra hoá đơn có tổng trị giá nhỏ nhất gồm các thông
---- tin: Số hoá đơn, ngày, tên khách hàng, địa chỉ khách hàng,
----  tổng trị giá của hoá đơn.
go

	select*
	from VatTu
	select*
	from ChiTietHoaDon

	update VatTu set GiaMua= 100 where mavt=5
	update ChiTietHoaDon set GiaBan= 99 where GiaBan=1
	---- --3.THÊM RÀNG BUỘC GIÁ BÁN>=VATTU.GIAMUA
	alter trigger trig_ChiTietHoaDon_VatTu 
	on VatTu
	for insert,update
	as
		begin
		if not exists(select*
			from ChiTietHoaDon,inserted
			where ChiTietHoaDon.GiaBan >= inserted.giamua
		)
				print 'Gia Ban >= gia Mua'
		rollback transaction
		end

	--insert into ChiTietHoaDon values(4,5,112,'90%',1)
	insert into VatTu values(11,N'gạch gì đó',N'culong',1000000,100)
	update VatTu set GiaMua= -1 where mavt=11
	update VatTu set GiaMua= 1000000 where mavt=11
	select*
	from VatTu
	--dk chitiethoadon>=giamua
	--min vattu==100
	--min chitiethoadon =99

go
	----29.	Lấy ra hoá đơn có tổng trị giá nhỏ nhất gồm các thông
	---- tin: Số hoá đơn, ngày, tên khách hàng, địa chỉ khách hàng,
	----  tổng trị giá của hoá đơn.
	
	select ChiTietHoaDon.MAHD, tenkh,DIACHI,sum(sl*GiaBan)
	from HoaDon,KhachHang,ChiTietHoaDon
	where HoaDon.MAKH = KhachHang.MAKH and ChiTietHoaDon.MAHD = HoaDon.MAHD
	group by  ChiTietHoaDon.MAHD, tenkh,DIACHI
	having sum(sl*GiaBan) <=all(
								select sum(sl*GiaBan)
								from HoaDon,ChiTietHoaDon,KhachHang
								where HoaDon.MAHD = ChiTietHoaDon.MAHD and KhachHang.MAKH = HoaDon.MAKH
								group by hoadon.mahd,ngay,tenkh,diachi
					
	)

	

	
go
	----30.	Đếm xem mỗi khách hàng có bao nhiêu hoá đơn.
	select KhachHang.MAKH,TENKH,count(*)
	from KhachHang,HoaDon
	where KhachHang.MAKH = HoaDon.MAKH
	group by KhachHang.MAKH,TENKH

	select*
	from KhachHang

	select*
	from HoaDon

go
	----31.	Lấy ra các thông tin của khách hàng có số lượng hoá đơn mua hàng nhiều nhất.
	select KhachHang.MAKH,TENKH,count(*)
	from KhachHang,HoaDon
	where KhachHang.MAKH = HoaDon.MAKH
	group by KhachHang.MAKH,TENKH
	having count(*) >=all(
					select count(*)
					from KhachHang,HoaDon
					where KhachHang.MAKH = HoaDon.MAKH
					group by KhachHang.MAKH,TENKH
	)
go
	----32.	Lấy ra các thông tin của khách hàng có số lượng hàng mua nhiều nhất.
	select KhachHang.MAKH,TENKH,sum(sl)
	from KhachHang,HoaDon,ChiTietHoaDon
	where KhachHang.MAKH = HoaDon.MAKH and HoaDon.MAHD=ChiTietHoaDon.MAHD
	group by KhachHang.MAKH,TENKH
	having sum(sl) >=all(
					select sum(sl)
					from KhachHang,HoaDon,ChiTietHoaDon
					where KhachHang.MAKH = HoaDon.MAKH and HoaDon.MAHD=ChiTietHoaDon.MAHD
					group by KhachHang.MAKH,TENKH
	)


	alter table chitiethoadon alter column sl float

	select*
	from ChiTietHoaDon
go
	----33.	Lấy ra các thông tin về các mặt hàng mà được bán trong nhiều hoá đơn nhất.
	select ChiTietHoaDon.MAHD,TENVT,count(*)
	from ChiTietHoaDon,VatTu
	where ChiTietHoaDon.MAVT = VatTu.MAVT
	group by ChiTietHoaDon.MAHD,TENVT
	having count(*)>=all(
						select count(*)
						from ChiTietHoaDon,VatTu
						where ChiTietHoaDon.MAVT = VatTu.MAVT
						group by ChiTietHoaDon.MAHD,TENVT
	)



	select*
	from VatTu
	
	select*
	from ChiTietHoaDon
go

	----34.	Lấy ra các thông tin về các mặt hàng mà được bán nhiều nhất.
	select ChiTietHoaDon.MAVT,TENVT,count(*)
	from ChiTietHoaDon,VatTu
	where ChiTietHoaDon.MAVT = VatTu.MAVT
	group by ChiTietHoaDon.MAVT,TENVT
	having count(*)>=all(
						select count(*)
						from ChiTietHoaDon,VatTu
						where ChiTietHoaDon.MAVT = VatTu.MAVT
						group by ChiTietHoaDon.MAVT,TENVT
	)
go
	----35.	Lấy ra danh sách tất cả các khách hàng gồm Mã khách hàng, tên khách hàng, địa chỉ , số lượng hoá đơn đã mua (nếu khách hàng đó chưa mua hàng thì cột số lượng hoá đơn để trống)

select k.makh,tenkh,diachi, 
    case when (not exists (select makh from hoadon)) then 0
	else (select sum(sl) from hoadon h,ChiTietHoaDon c
    where h.mahd=c.mahd and k.makh=h.makh
	group by h.makh)
	end  as slmua
from khachhang k
go

----Câu 4: Tạo các function sau:
----1.	Viết  hàm tính doanh thu cuả năm.. với năm là tham số truyền  vào.
	alter function fun_doanhthu_nam(@nam int)
	returns int
	as
	begin
			return (
					select sum(tongtg)
					from HoaDon
					where YEAR(Ngay)=@nam)
	end

	select dbo.fun_doanhthu_nam(2000)
----2.	Viết  hàm tính doanh thu cuả tháng .. với tháng là tham số truyền  vào.
	alter function fun_doanhthu_thang(@thang int)
	returns int
	as
	begin
			return (
					select sum(tongtg)
					from HoaDon
					where month(Ngay)=@thang)
	end

	select dbo.fun_doanhthu_thang(1)
	
----3.	Viết hàm tính doanh thu của khách hàng với  mã khách hàng là tham số truyền vào.
	create function fun_doanhthu_makh(@makh int)
	returns int
	as
	begin
			return (
					select sum(tongtg)
					from HoaDon
					where  hoadon.makh=@makh)
	end

	select dbo.fun_doanhthu_thang(1)
----4.	Viết hàm tính tổng số lượng bán được cho từng mặt hàng theo tháng với  mã hàng và thàng nhập vào,  nếu tháng không nhập vào tức là tính tất cả các tháng.
	alter function fun_doanhthu_tungmathang (@mavt int,@thang int)
	returns int
	as
	begin
		declare @tinhtong int
		
			if not exists(
								select *
								from HoaDon
								where MONTH(ngay) = @thang
							
			)
				
								set @tinhtong=(select sum(sl)
												from ChiTietHoaDon
												
												)
			
			else
				set @tinhtong=
				(select sum(sl)
				from ChiTietHoaDon,HoaDon
				where ChiTietHoaDon.MAHD=HoaDon.MAHD and MONTH(ngay) = @thang and mavt=@mavt
				group by month(ngay)
				)
			return @tinhtong
		end			
	select dbo.fun_doanhthu_tungmathang (1,null)
----5.	Viết hàm tính lãi ((trị giá bán – trừ trị giá mua )* slố lượng bán được ) cho từng mặt hàng, với mã mặt hàng là tham số truyền vào. Nếu mã mặt hàng không truyền vào thì tính cho tất cả các mặt hàng.
go


----Câu 5: Tạo các procedure sau:
----1.	Lấy ra danh các khách hàng đã mua hàng trong ngày [ngày]…. Với [ngày] là tham số truyền vào.
	
	create proc sp_dskh(@ngay int)
	as
		begin
			select*
			from KhachHang,HoaDon
			where KhachHang.MAKH = HoaDon.MAHD and day(ngay)=@ngay
		end
	exec  sp_dskh 25
----2.	Lấy ra danh sách 5 khách hàng  có tổng trị giá các đơn hàng lớn nhất.
	create proc sp_dskhtonglonnhat
	as
		begin
			select top 5 TongTG ,KhachHang.MAKH,TENKH
			from HoaDon,KhachHang
			where HoaDon.MAKH = KhachHang.MAKH
			order by TongTG desc
		end

	exec sp_dskhtonglonnhat
		select*
		from HoaDon

----3.	Lấy ra danh sách 10 mặt hàng có số lượng bán lớn nhất.
	create proc sp_dskhtonglonnhat10
	as
		begin
			select top 10 sl ,TENVT
			from ChiTietHoaDon,VatTu
			where ChiTietHoaDon.MAVT = VatTu.MAVT
			order by sl desc
		end
	exec sp_dskhtonglonnhat10
----4.	Lấy ra danh sách 10 mặt hàng bán ra có lãi ít nhất.
	create proc sp_laiitnhat
	as
		begin
			select top 10 sl ,TENVT
			from ChiTietHoaDon,VatTu
			where ChiTietHoaDon.MAVT = VatTu.MAVT
			order by sl asc
		end

	select*
	from VatTu

	select*
	from ChiTietHoaDon
----5.	Tính giá trị cho cột khuyến mãi như sau: Khuyến mãi 5% nếu SL >100, 10% nếu SL>500.
	create proc sp_capnhatkm
	as
		begin
			select MAHD,SL,KhuyenMai = case when (sl>100 and sl<=500) then '5%' when (sl>500) then '10%' end 
			from  ChiTietHoaDon
			
		end
	update ChiTietHoaDon set SL=700 where MAHD=4
	exec sp_capnhatkm
----6.	Tính số lại số lượng tồn cho tất cả các mặt hàng. (SLTON = SLTON – tổng sl bán được)
	create proc sp_tongslban
	as
		begin
			select VatTu.MAVT,TENVT,slton=(SlTon-sum(sl))
			from VatTu,ChiTietHoaDon
			where VatTu.MAVT = ChiTietHoaDon.MAVT
			group by VatTu.MAVT,TENVT,SlTon
		end

		select*
		from ChiTietHoaDon
		select*
		from VatTu
----7.	Tính trị giá cho mỗi hoá đơn.
	create proc sp_trigia
	as
	begin
		select hoadon.mahd,TongTG=(sl*GiaBan)
		from HoaDon,ChiTietHoaDon
		where HoaDon.MAHD = ChiTietHoaDon.MAHD
		group by hoadon.MAHD,TongTG,sl,GiaBan
	end
----8.	Tạo ra table KH_VIP có cấu trúc giống với cấu trúc table KHACHHANG. Lưu các khách hàng có tổng trị giá của tất cả các đơn hàng >=10000000 vào table KH_VIP.
		
				create table KH_VIP
				(
				makh int primary key,
				tenkh nvarchar(50),
				diachi nvarchar(50),
				dt nvarchar(50),
				email nvarchar(50)
				)
				drop table KH_VIP

				drop proc KH_VIP
	select*
	from KH_VIP
	alter proc sp_tao_bang
	as
		begin
			declare @makh int
			declare @tenkh nvarchar(50)
			declare @diachi nvarchar(50)
			declare @dt nvarchar(50)
			declare @email nvarchar(50)

			select @makh=mahd,@tenkh=TENKH,@diachi=DIACHI,@dt=DT,@email=EMAIL
			from HoaDon,KhachHang
			where HoaDon.MAKH= KhachHang.MAKH and TongTG>=10000000
			group by MAHD,TongTG,TENKH,DIACHI,DT,EMAIL

			declare @i int
			set @i=0
			
	
			insert into KH_VIP values(@makh,@tenkh,@diachi,@dt,@email)
			
		end
		select*
		from HoaDon,KhachHang
		where HoaDon.MAKH= KhachHang.MAKH and TongTG>=10000000
		
		update HoaDon set TongTG=12000000 where makh=2

			select hoadon.mahd,TongTG=(sl*GiaBan)
			from HoaDon,ChiTietHoaDon
			where HoaDon.MAHD = ChiTietHoaDon.MAHD
			group by hoadon.MAHD,TongTG,sl,GiaBan

		
	exec  sp_tao_bang

	select*
	from KH_VIP