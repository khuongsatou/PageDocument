create database qlhs

use qlhs

create table HocSinh
(
	MaHocSinh varchar(6) primary key,
    HoTen vachar(50),
    GioiTinh int,
    NgaySinh date,
    LopHoc int
    DiemTrungBinh float
)

insert into HocSinh values ('030601', 'Nguyen Van Tuan', 1, '2000/12/31', 10, 6.9)
insert into HocSinh values ('030601', 'Tran Thi Thom', 0, '1999/3/8', 11, 8.2)