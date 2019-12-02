alter sp_nhanvien_phg (@maphg int)
as
	begin
		select count(*)
		from NHANVIEN
		where phai like N'%Nữ%' and phg = @maphg

	end

	exec sp_nhanvien_phg '4'

alter function fun_tr_manv (@manv nvarchar(9))
returns table
as
	return(
		select tp.HONV +' '+ tp.TENLOT + ' '+ tp.TENNV as 'Họ Và Tên'
		from NHANVIEN nv,PHONGBAN,NHANVIEN tp
		where nv.MANV = @manv and nv.PHG = MAPHG and  TRPHG = tp.MANV
	)
	
	select *
	from fun_tr_manv('001')
	select *
	from NHANVIEN

	select *
	from PHONGBAN

	alter proc sp_them(@ma nvarchar(9),@ten nvarchar(15),@n date,@phai nvarchar(3),@qh nvarchar(15))
	as
	begin
		insert into THANNHAN
		values(@ma,@ten,@phai,@n,@qh)
	end	

	execute sp_them '006',N'tao','7-9-2018',N'nam',N'bố vợ con dâu'

	select *
	from THANNHAN

	select TEN_CONG_VIEC
	from CONGVIEC,PHONGBAN,DEAN
	where PHONGBAN.MAPHG = DEAN.PHONG and DEAN.MADA = CONGVIEC.MADA and MAPHG = 1

	select*
	from PHONGBAN


	select*
	from NHANVIEN
	where luong>30000

	select Year(getdate())-Year(NGSINH)
	from NHANVIEN

	select avg(luong)
	from NHANVIEN
	where phg = 1

	--=====overLoading
	--2 hàm trùng tên với nhau gọi là nộp chồng -> overloading
	--khác nhau về số lượng
	--nó sẽ lựa cái hàm phù hợp với cách gọi
	--Nếu khác nhau về kiểu trả về thì không thể nộp chồng vd: void f(int),float f(int) -> lỗi
	--Nhưng thế này thì được void f(int ) void f(string)
	--void f(int x, int y=0) -> thi cho f(3) ->f(3,0)

	--=====overRide
	--oveRide 

	-- == Static
	--class A {
	--public: static int k; static void f(){}
	--}
	--dùng chung vùng nhớ , có nghĩa là thay đổi 1 thằng sẽ thay đổi hết
	--trung xuất qua tên lớp A::k , A::f()
	
	-- tĩnh static với non-static không tĩnh,
	--		 
	--		excel
	--		



	--ảo
	--có gắng virtual thì nó sẽ đa hình
	--1 lớp có 1 virtual thì sẽ thành lớp ảo
	-- lớp thuần ảo có đặc điểm không thể tạo ra lớp mới ví dụ virtual void f()=0
	--lớp tù tượng là có nghĩa là không thực tế và cụ thể vi dụ tạo ra lớp class Hinh()
