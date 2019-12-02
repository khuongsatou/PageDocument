create procedure cau1(@mahd varchar(10), @ngaylap date, @nvlap varchar(10))
as 
	begin
		 if not exists (select * 
						from NHANVIEN
						where MANV = @nvlap)
		 print 'nhan vien khong ton tai'
		 else
			insert into HOADON(MA_HOA_DON,NGAYLAP,NVLAP)
			values (@mahd, @ngaylap, @nvlap)
	end
go
alter procedure cau2
as
	begin
		 update NHANVIEN
		 set LUONG = 
			 20 * (select count(*)
					from HOADON
					where HOADON.NVLAP = NHANVIEN.MANV)
		update NHANVIEN
		set LUONG = luong + 500
		where NVQUANLY is null

		update NHANVIEN
		set LUONG = luong + 200
		where NVQUANLY is not null
	end

go
create function cau3(@manv varchar(10))
returns int
as
	begin
			return (select count(*)
					from HOADON
					where NVLAP = @manv)
	end
go
create function cau4()
returns table
	return
		(
			select top 2 bangtam.HANG_SAN_XUAT
			from 
					(select SANPHAM.HANG_SAN_XUAT, sum(soluong) as 'soluong'
					from CHITIETHD, SANPHAM
					where CHITIETHD.MASP = SANPHAM.MA_SAN_PHAM
					group by SANPHAM.HANG_SAN_XUAT)
					as bangtam
			order by bangtam.soluong desc
		)
go


sp_bindrule 'cau5', 'sanpham.so_luong_ton_kho'