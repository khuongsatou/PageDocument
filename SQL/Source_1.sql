go
	create database db_trigger
go
	create table tbg_khohang(
		id int,
		mahang int not null primary key,
		tenhang nvarchar(50),
		soluongton float
	)
go
	select*
	from tbg_khohang
go
	create table tbg_dathang(
		id int not null primary key ,
		mahang int,
		soluongdat float
		--constraint fk_tbg_khohang_tbg_dathang foreign key(mahang) references tbg_khohang(mahang)
	)
go

	--khi người dùng cập nhật bên đặt hàng thì cập nhật bên số lượng tồn

go
	-- Bảng thay đổi
	--			t,x,s

go
	--Thêm dũ liệu vào bảnh
	insert into tbg_khohang values(1,1,N'Rau mùng tơi',17)
	insert into tbg_khohang values(2,2,N'Rau Muốn',5)
	insert into tbg_khohang values(3,3,N'Ram bo ri ní',8)
	select*
	from tbg_khohang
	select*
	from tbg_dathang

go
	--dặt 5 sl với mã là 1
	insert into tbg_dathang values(1,1,5)
	select*
	from tbg_dathang

go
go
	--Cập nhật lên 10 đơn hàng 1
	update tbg_dathang set soluongdat=10 where mahang=1

	update tbg_dathang set id=11 where id=10

	update tbg_dathang set soluongdat=3 where id=11
go
	--xóa đơn hàng vừa đặt
	delete tbg_dathang where id=11
go
	--trigger insert
	--cong thuc : hangtonmoi=slton-sldat
	drop trigger trg_DatHang

	alter trigger trg_DatHang
	ON tbg_DatHang
	after insert
	as
	begin
		update tbg_khohang
		set soluongton=soluongton-(select soluongdat
									from inserted
									where inserted.mahang=tbg_khohang.mahang
									)
		from tbg_khohang join inserted on tbg_khohang.mahang=inserted.mahang
	end


	insert into tbg_dathang values(3,3,8)
	select*
	from tbg_khohang
	select*
	from tbg_dathang

go
	alter trigger trig_tbg_dathang 
	on tbg_datHang
	instead of delete
	as
	begin
		select* from deleted
	end

	alter trigger trig_tbg_dathang1 
	on tbg_datHang
	for insert
	as
	begin
		insert into tbg_dathang values(5,1,10)
	end

	insert into tbg_dathang values(5,1,10)
	delete from tbg_dathang where id=5
	select*
	from tbg_dathang
