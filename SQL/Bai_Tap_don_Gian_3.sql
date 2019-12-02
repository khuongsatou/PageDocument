--2.1 TRUY VẤN CƠ BẢN
--2.1.1 Truy vấn đơn giản
--1. Tìm các nhân viên làm việc ở phòng số 4
go
	select *
	from nhanvien
	where nhanvien.phg=4
go
--2. Tìm các nhân viên có mức lương trên 30000
go
	select*
	from NHANVIEN
	where NHANVIEN.LUONG>30000
go

--3. Tìm các nhân viên có mức lương trên 25,000 ở phòng 4 hoặc các nhân
--viên có mức lương trên 30,000 ở phòng 5
go
	select *
	from nhanvien
	where NHANVIEN.LUONG>25000 and NHANVIEN.PHG=4 or NHANVIEN.LUONG>30000 and NHANVIEN.PHG=5
go

--4. Cho biết họ tên đầy đủ của các nhân viên ở TP HCM
go
	select HONV+ ' ' +TENLOT+ ' ' +TENNV as 'Họ Và Tên'
	from NHANVIEN 
	where Nhanvien.DCHI like N'%TP.HCM'

	select *
	from NHANVIEN
go


--5. Cho biết họ tên đầy đủ của các nhân viên có họ bắt đầu bằng ký tự 'N'
go
	select HONV+ ' ' +TENLOT+ ' ' +TENNV as 'Họ Và Tên'
	from NHANVIEN
	where NHANVIEN.HONV like N'N%'
go
--6. Cho biết ngày sinh và địa chỉ của nhân viên Dinh Ba Tien
go
	select NGSINH,DCHI
	from NHANVIEN
	where HONV = N'Đinh' and TENLOT=N'Bá' and TENNV=N'Tiến'
go

--7. Cho biết các nhân viên có năm sinh trong khoảng 1960 đến 1965
go
	select *
	from NHANVIEN
	where Year(NGSINH) Between 1960 and 1965
go
--8. Cho biết các nhân viên và năm sinh của nhân viên
go
	select TENNV,Year(NGSINH) as 'Năm sinh'
	from NHANVIEN
go
--9. Cho biết các nhân viên và tuổi của nhân viên
go	
	select TENNV,Year(getdate())-Year(NGSINH) as 'Tuổi'
	from NHANVIEN
go
--2.1.2 Truy vấn có sử dụng phép kết
--10. Với mỗi phòng ban, cho biết tên phòng ban và địa điểm phòng
go
	select PHONGBAN.TENPHG,DIADIEM_PHG.DIADIEM
	from PHONGBAN,DIADIEM_PHG
	where PHONGBAN.MAPHG=DIADIEM_PHG.MAPHG
go
--11. Tìm tên những người trưởng phòng của từng phòng ban
go
	select HONV+ ' ' +TENLOT+ ' ' +TENNV as 'Họ Và Tên Trưởng Phòng'
	from PHONGBAN,NHANVIEN
	where PHONGBAN.TRPHG=NHANVIEN.MANV
go

--12. Tìm tên và địa chỉ của tất cả các nhân viên của phòng "Nghiên cứu".
go
	select TENNV,DCHI
	from PHONGBAN,NHANVIEN
	where PHONGBAN.MAPHG = NHANVIEN.PHG and TENPHG like N'Nghiên cứu'

	select*
	from phongban
	
go
--13. Với mỗi đề án ở Hà Nội, cho biết tên đề án, tên phòng ban, họ tên và
-- ngày nhận chức của trưởng phòng của phòng ban chủ trì đề án đó.
go
	--Ý tưởng 
	select TENDA,TENPHG,HONV,TENNV
	from NHANVIEN,PHONGBAN,DEAN
	where NHANVIEN.MANV = PHONGBAN.TRPHG and PHONGBAN.MAPHG = DEAN.PHONG and DEAN.DDIEM_DA like N'Hà Nội'

	select*
	from phongban
	select*
	from DEAN
go
--14. Tìm tên những nữ nhân viên và tên người thân của họ
go
	select TENNV,TENTN
	from NHANVIEN,THANNHAN
	where NHANVIEN.MANV = THANNHAN.MA_NVIEN and NHANVIEN.PHAI like N'Nữ'
go
--15. Với mỗi nhân viên, cho biết họ tên nhân viên và họ tên người quản lý
--trực tiếp của nhân viên đó.
go
	select nv.HONV+ ' ' +nv.TENLOT+ ' ' +nv.TENNV as 'Họ Và Tên nv',ql.HONV+ ' ' +ql.TENLOT+ ' ' +ql.TENNV as 'Họ Và Tên Quản Lí'
	from NHANVIEN nv,NHANVIEN ql
	where nv.MA_NQL=ql.MANV
go
--16. Với mỗi nhân viên, cho biết họ tên của nhân viên đó, họ tên người
--trưởng phòng và họ tên người quản lý trực tiếp của nhân viên đó.
go
	select nv.HONV+ ' ' +nv.TENLOT+ ' ' +nv.TENNV as 'Họ Và Tên nv',ql.HONV+ ' ' +ql.TENLOT+ ' ' +ql.TENNV as 'Họ Và Tên Quản Lí',
	tp.HONV+ ' ' +tp.TENLOT+ ' ' +tp.TENNV as 'Họ Và Tên Trưởng Phòng'
	from NHANVIEN nv,NHANVIEN ql,NHANVIEN tp,PHONGBAN pb
	where nv.MA_NQL = ql.MANV and tp.manv = pb.TRPHG and nv.phg = tp.phg
	






	--làm lại
	select nv.HONV+ ' ' +nv.TENLOT+ ' ' +nv.TENNV as 'Họ Và Tên nv',ql.HONV+ ' ' +ql.TENLOT+ ' ' +ql.TENNV as 'Họ Và Tên Quản Lí',
	tp.HONV+ ' ' +tp.TENLOT+ ' ' +tp.TENNV as 'Họ Và Tên Trưởng Phòng'
	from NHANVIEN nv,NHANVIEN ql,NHANVIEN tp , PHONGBAN pb
	where nv.MA_NQL=ql.MANV and tp.MANV= pb.TRPHG and pb.MAPHG=nv.PHG








go
--17. Tên những nhân viên phòng số 5 có tham gia vào đề án "Sản phẩm X"
--và nhân viên này do "Nguyễn Thanh Tùng" quản lý trực tiếp.
go
	select nv.HONV , nv.TENLOT,nv.TENNV
	from NHANVIEN nv, NHANVIEN ql,DEAN da
	where nv.MA_NQL= ql.MANV and nv.PHG = da.PHONG and nv.PHG = 5 and ql.HONV = N'Nguyễn' and ql.TENLOT=N'Thanh' and ql.TENNV=N'Tùng' and
	da.TENDA like N'Sản Phẩm X'
go
--18. Cho biết tên các đề án mà nhân viên Đinh Bá Tiến đã tham gia.
go
	select DEAN.TENDA
	from NHANVIEN,PHANCONG,DEAN
	where NHANVIEN.MANV = PHANCONG.MA_NVIEN and PHANCONG.MADA= DEAN.MADA and HONV = N'Đinh' and TENLOT=N'Bá' and TENNV=N'Tiến'
go--Xong Lần 1--
--2.2 GOM NHÓM
--19. Cho biết số lượng đề án của công ty
go
	select count(*)
	from dean
go
--20. Cho biết số lượng đề án do phòng 'Nghiên Cứu' chủ trì
go
	select count(*)
	from PHONGBAN,DEAN
	where PHONG=MAPHG and TENPHG like N'Nghiên cứu'

	--dean
	select *
	from dean
	--phancong
	select *
	from PHANCONG
	--nhanvien
	select*
	from NHANVIEN

go
--21. Cho biết lương trung bình của các nữ nhân viên
go
	select avg(LUONG) as 'Lương Trung Bình của các NV nữ'
	from NHANVIEN
	where phai like N'Nữ'
go
--22. Cho biết số thân nhân của nhân viên 'Đinh Bá Tiến'
go
	select count(*) as 'Số thân nhân của tiến'
	from NHANVIEN,THANNHAN
	where MANV=MA_NVIEN and HONV = N'Đinh' and TENLOT=N'Bá' and TENNV=N'Tiến'
go
--23. Với mỗi đề án, liệt kê tên đề án và tổng số giờ làm việc một tuần của
--tất cả các nhân viên tham dự đề án đó.
go
	select dean.TENDA,sum(PHANCONG.THOIGIAN) as 'Tổng giờ làm'
	from PHANCONG,DEAN
	where PHANCONG.MADA = DEAN.MADA
	group by DEAN.TENDA
go
--24. Với mỗi đề án, cho biết có bao nhiêu nhân viên tham gia đề án đó
go
	select MADA, count(*)
	from PHANCONG,NHANVIEN
	where MANV=MA_NVIEN
	group by MADA

go
--25. Với mỗi nhân viên, cho biết họ và tên nhân viên và số lượng thân nhân
--của nhân viên đó.
go
	select HONV+' '+TENNV as 'Họ Và Tên',count(*) as 'Số lượng thân nhân'
	from NHANVIEN,THANNHAN
	where MANV = MA_NVIEN
	group by HONV,TENNV

go
--26. Với mỗi nhân viên, cho biết họ tên của nhân viên và số lượng đề án mà
--nhân viên đó đã tham gia.
go
	select honv,tennv,count(*)
	from NHANVIEN,PHANCONG
	where MANV=MA_NVIEN
	group by honv,tennv
go
--27. Với mỗi nhân viên, cho biết số lượng nhân viên mà nhân viên đó quản
--lý trực tiếp.
go
	select MA_NQL,count(*)
	from NHANVIEN
	where MA_NQL is not null
	group by MA_NQL
go
--28. Với mỗi phòng ban, liệt kê tên phòng ban và lương trung bình của
--những nhân viên làm việc cho phòng ban đó.
go
	select TENPHG,AVG(LUONG)
	from PHONGBAN,NHANVIEN
	where maphg=PHG
	group by TENPHG
go
--29. Với các phòng ban có mức lương trung bình trên 30,000, liệt kê tên
--phòng ban và số lượng nhân viên của phòng ban đó.
go
	select TENPHG,COUNT(*) as 'Số lượng nhân viên làm việc'
	from PHONGBAN,NHANVIEN
	where MAPHG=PHG
	group by TENPHG
	having avg(LUONG)>30000
go
--30. Với mỗi phòng ban, cho biết tên phòng ban và số lượng đề án mà
--phòng ban đó chủ trì
go	
	select TENPHG,count(*)
	from PHONGBAN,DEAN
	where maphg=phong
	group by TENPHG
	--dean
	select*
	from DEAN
go
--31. Với mỗi phòng ban, cho biết tên phòng ban, họ tên người trưởng
--phòng và số lượng đề án mà phòng ban đó chủ trì
go
	select TENPHG,HONV,TENLOT,TENNV,count(*) as 'Số lượng đề án'
	from PHONGBAN,NHANVIEN,DEAN
	where MANV=TRPHG and MAPHG=PHONG
	group by TENPHG,HONV,TENLOT,TENNV
go
--32. Với mỗi phòng ban có mức lương trung bình lớn hơn 40,000, cho biết
--tên phòng ban và số lượng đề án mà phòng ban đó chủ trì.
go
	select TENPHG,count(*)
	from PHONGBAN,NHANVIEN,DEAN
	where MAPHG=PHG and MAPHG=PHONG
	group by TENPHG
	having AVG(LUONG)>40000
go
--33. Cho biết số đề án diễn ra tại từng địa điểm
go
	select DDIEM_DA,count(*) as 'Số đề án'
	from DEAN
	group by DDIEM_DA

	--dean
	select*
	from DEAN
go
--34. Với mỗi đề án, cho biết tên đề án và số lượng công việc của đề án
--này.
go
	select DEAN.TENDA,count(TEN_CONG_VIEC) as 'Số lượng CV'
	from DEAN,CONGVIEC
	where dean.MADA = CONGVIEC.MADA
	group by DEAN.TENDA

	select*
	from CONGVIEC
go
--35. Với mỗi công việc trong đề án có mã đề án là 30, cho biết số lượng
--nhân viên được phân công .
go
	select CONGVIEC.TEN_CONG_VIEC,count(*) as 'Số lượng nv phân công'
	from CONGVIEC,PHANCONG
	where CONGVIEC.MADA = PHANCONG.MADA and CONGVIEC.MADA = 30
	group by CONGVIEC.TEN_CONG_VIEC
go
--36. Với mỗi công việc trong đề án có mã đề án là 'Dao Tao', cho biết số
--lượng nhân viên được phân công.
go
	select CONGVIEC.TEN_CONG_VIEC,count(*) as 'Số lượng nv phân công'
	from CONGVIEC,PHANCONG,DEAN
	where CONGVIEC.MADA = PHANCONG.MADA and CONGVIEC.MADA = DEAN.MADA and DEAN.TENDA like N'%Đào Tạo'
	group by CONGVIEC.TEN_CONG_VIEC
go
--END--