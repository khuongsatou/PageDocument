--trigger
-- 1 store
-- tu dong thuc thi khi co thao tac cap nhat du lieu
--vd
go
--trigger : for/after + instead of
go
alter trigger trig_themNV
on Nhanvien
INSTEAD OF insert, update
as
	begin
		 SELECT *
		 FROM inserted
	end
go
--insert
insert into NHANVIEN(MANV)
values ('1000')
insert into NHANVIEN(MANV)
values ('1500')

DELETE NHANVIEN
WHERE MANV = '1000'

update NHANVIEN
set LUONG = 500
where NHANVIEN.MANV = '1000'
--1. Cai dat RBTV Khong duoc phan cong NV Nu tham gia den an 1
/*			T	X	S
PHANCONG	+	-	+
NHANVIEN	-	-	+

*/
GO
CREATE TRIGGER TRIG_CHECKNV
ON NHANVIEN
FOR UPDATE
AS
	BEGIN
		 IF (SELECT COUNT(*)
			 FROM NHANVIEN
			 WHERE NHANVIEN.PHAI LIKE N'%Nữ%'
			 and NHANVIEN.MANV in ( select PHANCONG.MA_NVIEN
									from PHANCONG
									where PHANCONG.MADA = 1)
			) >0
		 ROLLBACK TRANSACTION
	END
update NHANVIEN
set PHAI = N'Nữ'
where NHANVIEN.MANV = '003'

go
create trigger trig_checkphancong
on phancong
instead of insert, update
as
	begin
			IF (SELECT COUNT(*)
			 FROM NHANVIEN
			 WHERE NHANVIEN.PHAI LIKE N'%Nữ%'
			 and NHANVIEN.MANV in ( select inserted.MA_NVIEN
									from inserted
									where inserted.MADA = 1)
			) =0
			insert into PHANCONG
			select *
			from inserted
			
			
	end
go
--2 Luong cua truong phong phai lon hon luong nhan vien
/*			T	X	S
nhanvien	+	-	+
phongban	-	-	+
*/
go
alter trigger trig_checkTruongPhong
on nhanvien
for insert, update
as
	begin
			--declare @TRUONGPHONG FLOAT
			--SET  @TRUONGPHONG=(select NHANVIEN.LUONG
			--  from nhanvien , PHONGBAN
			--  where nhanvien.MANV = PHONGBAN.TRPHG)
			  
			--declare @NV FLOAT
			--SET @NV=(select NHANVIEN.LUONG
			--  from NHANVIEN)
			
			--IF (
			--SELECT*
			--FROM NHANVIEN
			--WHERE @TRUONGPHONG > @NV
			    
			--) = 1
			
			--select COUNT(*)
			--from ínserted	
			
			declare @TruongPhong char(9)
			set @TruongPhong= (select PHONGBAN.TRPHG
							   from inserted , PHONGBAN
							   where inserted.phg = PHONGBAN.MAPHG)
			  
			declare @Ltr FLOAT
			SET @Ltr=(select NHANVIEN.LUONG
						from NHANVIEN
						where NHANVIEN.MANV > @TruongPhong
			)
			
			if(  select COUNT(*)
				from inserted
				where inserted.LUONG >@Ltr
				
			)>0
			ROLLBACK TRANSACTION	
	end
go

update NHANVIEN
set LUONG = 20000
where MANV ='001'


/* 3. Mot nhan vien khong duoc tham gia qua 3 de an
			T	X	S
phancong	+	-	+
nhanvien	-	-	-

4. Khi cap nhat tren bang phan cong, xuat ra man hinh thong bao:"nhan vien co manv
duoc tang /giam x gio"
	
trigger on phancong
for insert
	set @manv = (select inserted.manv
				from inserted )
print 'nhan vien'
print ' co ma nv la'
print @manv
print 'duoc phan cong them'
print @thoigian
print 'gio'


trigger on phancong
for delete
inserted ==> deleted


trigger on phancong
for update
update = insert du lieu moi + delete du lieu cu

@dochenhlech = @thoigian trong inserted - @thoigian trong deleted 

