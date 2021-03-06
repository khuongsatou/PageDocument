USE [db]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/2/2019 7:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[STT] [varchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaSP] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
	[HinhAnh] [varchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'1', N'Sản phẩm 1
', N'735888', N'Đây là sản phẩm thứ 1
', N'hinh (1).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'10', N'Sản phẩm 10', N'624916', N'Đây là sản phẩm thứ 1
0', N'hinh (10).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'11', N'Sản phẩm 11', N'735888', N'Đây là sản phẩm thứ 1
1', N'hinh (11).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'12', N'Sản phẩm 12', N'624916', N'Đây là sản phẩm thứ 1
2', N'hinh (12).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'13', N'Sản phẩm 13', N'624916', N'Đây là sản phẩm thứ 1
3', N'hinh (13).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'14', N'Sản phẩm 14', N'735888', N'Đây là sản phẩm thứ 1
4', N'hinh (14).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'15', N'Sản phẩm 15', N'624916', N'Đây là sản phẩm thứ 1
5', N'hinh (15).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'16', N'Sản phẩm 16', N'624916', N'Đây là sản phẩm thứ 1
6', N'hinh (16).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'17', N'Sản phẩm 17', N'735888', N'Đây là sản phẩm thứ 1
7', N'hinh (17).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'18', N'Sản phẩm 18', N'624916', N'Đây là sản phẩm thứ 18', N'hinh (18).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'19', N'Sản phẩm 19', N'624916', N'Đây là sản phẩm thứ 19', N'hinh (19).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'2', N'Sản phẩm 2', N'735888', N'Đây là sản phẩm thứ 2', N'hinh (2).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'20', N'Sản phẩm 20', N'624916', N'Đây là sản phẩm thứ 1
', N'hinh (1).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'3', N'Sản phẩm 3', N'624916', N'Đây là sản phẩm thứ 3', N'hinh (2).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'4', N'Sản phẩm 4', N'624916', N'Đây là sản phẩm thứ 4', N'hinh (4).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'5', N'Sản phẩm 5', N'624916', N'Đây là sản phẩm thứ 5', N'hinh (5).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'6', N'Sản phẩm 6', N'624916', N'Đây là sản phẩm thứ 6', N'hinh (6).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'7', N'Sản phẩm 7', N'735888', N'Đây là sản phẩm thứ 7', N'hinh (7).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'8', N'Sản phẩm 8', N'624916', N'Đây là sản phẩm thứ 8', N'hinh (8).jpg
')
INSERT [dbo].[SanPham] ([STT], [TenSP], [GiaSP], [MoTa], [HinhAnh]) VALUES (N'9', N'Sản phẩm 9', N'624916', N'Đây là sản phẩm thứ 9', N'hinh (9).jpg
')
