--1. Tìm các nhân viên làm việc ở phòng số 4
go
select *
from nhanvien
where phg=4
go
--2. Tìm các nhân viên có mức lương trên 30000
go
select *
from nhanvien
where LUONG>30000
go
--3. Tìm các nhân viên có mức lương trên 25,000 ở phòng 4 hoặc các nhân
--viên có mức lương trên 30,000 ở phòng 5
go
select *
from nhanvien
where luong>25000 and phg=4 or luong>30000 and phg=5
go



--4. Cho biết họ tên đầy đủ của các nhân viên ở TP HCM
go
select honv+' '+tenlot+' '+TENNV as 'Họ Và Tên'
from nhanvien
where DCHI like N'%Tp HCM'
go

--5. Cho biết họ tên đầy đủ của các nhân viên có họ bắt đầu bằng ký tự 'N'
go
	select HONV+' '+TENLOT+' '+TENNV as 'Họ Và Tên' 
	from NHANVIEN 
	where HONV like N'[N]%'
go
--6. Cho biết ngày sinh và địa chỉ của nhân viên Dinh Ba Tien
go
	select NGSINH,DCHI
	from nhanvien
	where HONV like N'Đinh' and TENLOT like N'Bá' and TENNV like N'Tiên'
go
--7. Cho biết các nhân viên có năm sinh trong khoảng 1960 đến 1965
go
	select *
	from NHANVIEN
	where Year(NGSINH) between 1960 and 1965
go
--8. Cho biết các nhân viên và năm sinh của nhân viên
go
	select HONV+' '+TENLOT+' '+TENNV as 'Họ Và Tên' ,Year(NGSINH) as 'Năm Sinh'
	from NHANVIEN
go
--9. Cho biết các nhân viên và tuổi của nhân viên
go
	select HONV+' '+TENLOT+' '+TENNV as 'Họ Và Tên' ,Year(Getdate())-Year(NGSINH) as 'Tuổi'
	from NHANVIEN
go