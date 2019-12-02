--10. Với mỗi phòng ban, cho biết tên phòng ban và địa điểm phòng
go
	select PHONGBAN.MAPHG,PHONGBAN.TENPHG,DIADIEM_PHG.DIADIEM
	from phongban ,DIADIEM_PHG
	where PHONGBAN.MAPHG = DIADIEM_PHG.MAPHG
	group by PhongBAn.MAPHG,DIADIEM_PHG.DIADIEM,PHONGBAN.TENPHG
go
--11. Tìm tên những người trưởng phòng của từng phòng ban
go
	select HONV +' '+ TENLOT+' '+TENNV as 'Họ Và tên của Trưởng Phòng'
	from NHANVIEN ,PHONGBAN
	where NHANVIEN.manv = PHONGBAN.TRPHG
go
--12. Tìm tên và địa chỉ của tất cả các nhân viên của phòng "Nghiên cứu".
go
	select TENNV,DCHI
	from NHANVIEN,PHONGBAN
	where NHANVIEN.PHG = PHONGBAN.MAPHG and TENPHG like N'%Nghiên cứu'
	
	--select *
	--from NHANVIEN
	--where NHANVIEN.PHG=5
go

--13. Với mỗi đề án ở Hà Nội, cho biết tên đề án, tên phòng ban, họ tên và
--ngày nhận chức của trưởng phòng của phòng ban chủ trì đề án đó.
go
	select DEAN.TENDA, PHONGBAN.TENPHG,HONV +' '+ TENLOT+' '+TENNV as 'Họ Và tên',PHONGBAN.NG_NHANCHUC
	from NHANVIEN,PHONGBAN,DEAN
	where NHANVIEN.PHG = PHONGBAN.MAPHG and PHONGBAN.MAPHG = DEAN.PHONG and DEAN.DDIEM_DA like N'Hà Nội'
go

--14. Tìm tên những nữ nhân viên và tên người thân của họ
go
	select *
	from NHANVIEN,THANNHAN
	where NHANVIEN.MANV = THANNHAN.MA_NVIEN and NHANVIEN.PHAI like N'Nữ'

go
--15. Với mỗi nhân viên, cho biết họ tên nhân viên và họ tên người quản lý
--trực tiếp của nhân viên đó
go
	select nv1.manv,nv1.HONV +' '+ nv1.TENLOT+' '+nv1.TENNV as 'Họ Và tên nv',nv2.MANV,
	nv2.HONV +' '+ nv2.TENLOT+' '+nv2.TENNV as 'Họ Và tên QL'
	from NHANVIEN nv1, NHANVIEN nv2
	where  nv1.MA_NQL = nv2.MANV

go


--16. Với mỗi nhân viên, cho biết họ tên của nhân viên đó, họ tên người
--trưởng phòng và họ tên người quản lý trực tiếp của nhân viên đó.
go
	--select nv1.manv,nv1.HONV +' '+ nv1.TENLOT+' '+nv1.TENNV as 'Họ Và tên nv',nv2.MANV,
	--nv2.HONV +' '+ nv2.TENLOT+' '+nv2.TENNV as 'Họ Và tên QL',
	--nv2.MANV
	--from NHANVIEN nv1, NHANVIEN nv2,PHONGBAN pb
	--where  nv1.MA_NQL = nv2.MANV

go

--17. Tên những nhân viên phòng số 5 có tham gia vào đề án "Sản phẩm X"
--và nhân viên này do "Nguyễn Thanh Tùng" quản lý trực tiếp.
go
--select nv1.HONV +' '+ nv1.TENLOT+' '+nv1.TENNV as 'Họ Và tên'
--from NHANVIEN nv1,DEAN,NHANVIEN nv2
--where nv1.PHG = DEAN.PHONG and nv1.MA_NQL=nv2.MANV and nv1.PHG=5 and dean.TENDA like N'Sản phẩm X' and nv2.HONV =N'Nguyễn' and
--nv2.HONV=N'Thanh' and nv2.TENNV = N'Tùng'

select *
from DEAN

select *
from NHANVIEN

select *
from PHONGBAN
select *
from PHANCONG
go

--18. Cho biết tên các đề án mà nhân viên Đinh Bá Tiến đã tham gia.
select DEAN.TENDA
from NHANVIEN ,DEAN
where NHANVIEN.PHG = DEAN.PHONG and NHANVIEN.HONV = N'Đinh' and NHANVIEN.TENLOT=N'Bá' and NHANVIEN.TENNV=N'Tiên'