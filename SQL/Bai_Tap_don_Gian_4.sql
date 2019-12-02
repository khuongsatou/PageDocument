--2.2 GOM NHÓM
--19. Cho biết số lượng đề án của công ty
go
	select count(*)
	from DEAN
go
--20. Cho biết số lượng đề án do phòng 'Nghiên Cứu' chủ trì
go
	select count(*)
	from PHONGBAN,DEAN
	where MAPHG=PHONG and TENPHG like N'%Nghiên cứu'
go
--21. Cho biết lương trung bình của các nữ nhân viên
go
	select AVG(Luong)
	from NHANVIEN
	where PHAI like N'Nữ'
go
--22. Cho biết số thân nhân của nhân viên 'Đinh Bá Tiến'
go
	select count(*)
	from NHANVIEN,THANNHAN
	where NHANVIEN.MANV=THANNHAN.MA_NVIEN and HONV=N'Đinh' and TENLOT=N'Bá' and TENNV= N'Tiến'
go
--23. Với mỗi đề án, liệt kê tên đề án và tổng số giờ làm việc một tuần của
--tất cả các nhân viên tham dự đề án đó.
go
	select TENDA,sum(THOIGIAN)
	from DEAN,PHANCONG
	where dean.MADA = PHANCONG.MADA
	group by TENDA
go
--24. Với mỗi đề án, cho biết có bao nhiêu nhân viên tham gia đề án đó
go
	select TENDA,count(MA_NVIEN)
	from DEAN,PHANCONG
	where DEAN.MADA = PHANCONG.MADA
	group by TENDA
go
--25. Với mỗi nhân viên, cho biết họ và tên nhân viên và số lượng thân nhân
--của nhân viên đó.
go
	select HONV,TENNV,count(*)
	from NHANVIEN,THANNHAN
	where MANV= MA_NVIEN
	group by HONV,TENNV
go

--26. Với mỗi nhân viên, cho biết họ tên của nhân viên và số lượng đề án mà
--nhân viên đó đã tham gia.
go
	select HONV,TENNV,count(*)
	from NHANVIEN,PHANCONG
	where MANV=MA_NVIEN
	group by HONV,TENNV
go
--27. Với mỗi nhân viên, cho biết số lượng nhân viên mà nhân viên đó quản
--lý trực tiếp.
go
	select ql.MANV,count(*)
	from NHANVIEN nv,NHANVIEN ql
	where nv.MA_NQL=ql.MANV
	group by ql.MANV
go
--28. Với mỗi phòng ban, liệt kê tên phòng ban và lương trung bình của
--những nhân viên làm việc cho phòng ban đó.
go
	select MAPHG,tenphg,avg(luong)
	from NHANVIEN,PHONGBAN
	where MAPHG=PHG
	group by MAPHG,tenphg
go
--29. Với các phòng ban có mức lương trung bình trên 30,000, liệt kê tên
--phòng ban và số lượng nhân viên của phòng ban đó.
go
	select MAPHG,TENPHG,count(*)
	from PHONGBAN,NHANVIEN
	where MAPHG=PHG
	group by MAPHG,TENPHG
	having	avg(luong)>30000
go

--30. Với mỗi phòng ban, cho biết tên phòng ban và số lượng đề án mà
--phòng ban đó chủ trì
go
	select  TENPHG,count(*)
	from PHONGBAN,DEAN
	where PHONGBAN.MAPHG = DEAN.PHONG
	group by TENPHG

go
--31. Với mỗi phòng ban, cho biết tên phòng ban, họ tên người trưởng
--phòng và số lượng đề án mà phòng ban đó chủ trì
go
	select TENPHG,HONV,TENLOT,TENNV,count(*)
	from PHONGBAN,NHANVIEN,DEAN
	where MANV = TRPHG and PHONG=MAPHG
	group by TENPHG,HONV,TENLOT,TENNV

go
--32. Với mỗi phòng ban có mức lương trung bình lớn hơn 40,000, cho biết
--tên phòng ban và số lượng đề án mà phòng ban đó chủ trì.
go
	select TENPHG,count(*)
	from PHONGBAN , NHANVIEN , DEAN
	where MAPHG = phg and PHONG = MAPHG
	group by TENPHG
	having avg(Luong)>40000
go
--33. Cho biết số đề án diễn ra tại từng địa điểm
go
	select DDIEM_DA,count(*)
	from DEAN
	group by DDIEM_DA

go

--34. Với mỗi đề án, cho biết tên đề án và số lượng công việc của đề án
--này.
go
	select DEAN.MADA,TENDA,count(*)
	from DEAN,CONGVIEC
	where DEAN.MADA=CONGVIEC.MADA
	group by dean.MADA,TENDA
go
--35. Với mỗi công việc trong đề án có mã đề án là 30, cho biết số lượng
--nhân viên được phân công .
go
	select TENDA,count(*)
	from DEAN,PHANCONG
	where DEAN.MADA = PHANCONG.MADA and dean.MADA=30
	group by TENDA

	select*
	from dean
go
--36. Với mỗi công việc trong đề án có mã đề án là 'Dao Tao', cho biết số
--lượng nhân viên được phân công.go	select TEN_CONG_VIEC,count(*)	from DEAN,CONGVIEC,PHANCONG	where dean.MADA= CONGVIEC.MADA and CONGVIEC.MADA = PHANCONG.MADA and TENDA like N'Đào Tạo'	group by TEN_CONG_VIECgo--2.3 TRUY VẤN LỒNG + GOM NHÓM
--37. Cho biết danh sách các đề án (MADA) có: nhân công với họ (HONV) là
--'Đinh' hoặc có người trưởng phòng chủ trì đề án với họ (HONV) là
--'Đinh'.
go
	
go

--38. Danh sách những nhân viên (HONV, TENLOT, TENNV) có trên 2 thân
--nhân.
--39. Danh sách những nhân viên (HONV, TENLOT, TENNV) không có thân
--nhân nào.
--40. Danh sách những trưởng phòng (HONV, TENLOT, TENNV) có tối thiểu
--một thân nhân.
--41. Tìm họ (HONV) của những trưởng phòng chưa có gia đình.
--42. Cho biết họ tên nhân viên (HONV, TENLOT, TENNV) có mức lương trên
--mức lương trung bình của phòng "Nghiên cứu"
--43. Cho biết tên phòng ban và họ tên trưởng phòng của phòng ban có
--đông nhân viên nhất.
--44. Cho biết danh sách các mã đề án mà nhân viên có mã là 009 chưa làm.
--45. Cho biết danh sách các công việc (tên công việc) trong đề án 'Sản
--phẩm X' mà nhân viên có mã là 009 chưa làm.
--46. Tìm họ tên (HONV, TENLOT, TENNV) và địa chỉ (DCHI) của những
--nhân viên làm việc cho một đề án ở 'TP HCM' nhưng phòng ban mà họ
--trực thuộc lại không tọa lạc ở thành phố 'TP HCM' . 
--47. Tổng quát câu 16, tìm họ tên và địa chỉ của các nhân viên làm việc cho
--một đề án ở một thành phố nhưng phòng ban mà họ trực thuộc lại
--không toạ lạc ở thành phố đó.