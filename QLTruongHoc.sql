CREATE DATABASE QuanLyTruongHoc
GO
USE [QuanLyTruongHoc]
GO
/****** Object:  Table [dbo].[BangDiem_HK1]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem_HK1](
	[MaHocSinh] [nvarchar](10) NOT NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[NamHoc] [date] NULL,
	[DiemToan] [float] NULL,
	[DiemVan] [float] NULL,
	[DiemAnh] [float] NULL,
	[DiemSinh] [float] NULL,
	[DiemHoa] [float] NULL,
	[DiemLi] [float] NULL,
	[DiemSu] [float] NULL,
	[DiemDia] [float] NULL,
	[DiemGDCD] [float] NULL,
	[DiemCongNghe] [float] NULL,
	[DiemTinHoc] [nchar](10) NULL,
	[DiemTB_HK1] [float] NOT NULL,
	[XepLoai_HK1] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangDiem_HK1] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaLop] ASC,
	[DiemTB_HK1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangDiem_HK2]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem_HK2](
	[MaHocSinh] [nvarchar](10) NOT NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[NamHoc] [date] NULL,
	[DiemToan] [float] NULL,
	[DiemVan] [float] NULL,
	[DiemAnh] [float] NULL,
	[DiemSinh] [float] NULL,
	[DiemHoa] [float] NULL,
	[DiemLi] [float] NULL,
	[DiemSu] [float] NULL,
	[DiemDia] [float] NULL,
	[DiemGDCD] [float] NULL,
	[DiemCongNghe] [float] NULL,
	[DiemTin] [float] NULL,
	[DiemTB_HK2] [float] NOT NULL,
	[XepLoai_HK2] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangDiem_HK2] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaLop] ASC,
	[DiemTB_HK2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangDiemCaNam]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiemCaNam](
	[MaHocSinh] [nvarchar](10) NOT NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[DiemTB_HK1] [float] NOT NULL,
	[DiemTB_HK2] [float] NOT NULL,
	[DiemTB_CaNam] [float] NULL,
	[XepLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangDiemCaNam] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaLop] ASC,
	[DiemTB_HK1] ASC,
	[DiemTB_HK2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](10) NOT NULL,
	[TenChucVu] [nvarchar](200) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGiangVien] [nvarchar](10) NOT NULL,
	[TenGiangVien] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MaQueQuan] [nvarchar](10) NULL,
	[MaChucVu] [nvarchar](10) NULL,
	[MaPhongBan] [nvarchar](10) NULL,
	[LuongCanBan] [float] NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHocSinh] [nvarchar](10) NOT NULL,
	[TenHocSinh] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MaQueQuan] [nvarchar](10) NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](200) NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongGiangVien]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongGiangVien](
	[MaGiangVien] [nvarchar](10) NOT NULL,
	[NgayBD] [date] NOT NULL,
	[HeSoLuong] [float] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LuongGiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGiangVien] ASC,
	[NgayBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongNhanVien]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongNhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[NgaBD] [date] NOT NULL,
	[HeSoLuong] [float] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LuongNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[NgaBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TenDangNhap] [nvarchar](50) NULL,
	[HoTen] [nvarchar](200) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[QuyenHan] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](200) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[MaQueQuan] [nvarchar](10) NULL,
	[MaChucVu] [nvarchar](10) NULL,
	[MaPhongBan] [nvarchar](10) NULL,
	[LuongCanBan] [float] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLop]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLop](
	[MaHocSinh] [nvarchar](10) NOT NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[NamHoc] [date] NULL,
 CONSTRAINT [PK_PhanLop] PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [nvarchar](10) NOT NULL,
	[TenPhongBan] [nvarchar](200) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueQuan]    Script Date: 5/18/2022 7:11:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueQuan](
	[MaQueQuan] [nvarchar](10) NOT NULL,
	[TenQueQuan] [nvarchar](200) NULL,
 CONSTRAINT [PK_QueQuan] PRIMARY KEY CLUSTERED 
(
	[MaQueQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS001', N'12A1', CAST(N'2020-06-19' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9         ', 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS002', N'12A1', CAST(N'2020-06-19' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9         ', 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS003', N'10A3', CAST(N'2020-06-19' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9         ', 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS004', N'11A3', CAST(N'2020-06-19' AS Date), 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'8         ', 8, N'Khá')
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS006', N'10A2', CAST(N'2022-05-18' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'9         ', 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS006', N'11A1', CAST(N'2022-05-18' AS Date), 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, N'8         ', 7.923077, N'Khá')
INSERT [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTinHoc], [DiemTB_HK1], [XepLoai_HK1]) VALUES (N'HS006', N'12A1', CAST(N'2022-05-18' AS Date), 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, N'7         ', 7, N'Khá')
GO
INSERT [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTin], [DiemTB_HK2], [XepLoai_HK2]) VALUES (N'HS001', N'12A1', CAST(N'2020-06-19' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTin], [DiemTB_HK2], [XepLoai_HK2]) VALUES (N'HS002', N'12A1', CAST(N'2020-06-19' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 0, 9, 9, 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTin], [DiemTB_HK2], [XepLoai_HK2]) VALUES (N'HS003', N'10A3', CAST(N'2020-06-19' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 0, 9, 9, 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTin], [DiemTB_HK2], [XepLoai_HK2]) VALUES (N'HS004', N'11A3', CAST(N'2020-06-19' AS Date), 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'Khá')
INSERT [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTin], [DiemTB_HK2], [XepLoai_HK2]) VALUES (N'HS005', N'11A1', CAST(N'2022-05-11' AS Date), 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, N'Giỏi')
INSERT [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [NamHoc], [DiemToan], [DiemVan], [DiemAnh], [DiemSinh], [DiemHoa], [DiemLi], [DiemSu], [DiemDia], [DiemGDCD], [DiemCongNghe], [DiemTin], [DiemTB_HK2], [XepLoai_HK2]) VALUES (N'HS006', N'10A2', CAST(N'2022-05-11' AS Date), 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, N'Giỏi')
GO
INSERT [dbo].[BangDiemCaNam] ([MaHocSinh], [MaLop], [DiemTB_HK1], [DiemTB_HK2], [DiemTB_CaNam], [XepLoai]) VALUES (N'HS001', N'12A1', 9, 9, 9, N'Giỏi')
INSERT [dbo].[BangDiemCaNam] ([MaHocSinh], [MaLop], [DiemTB_HK1], [DiemTB_HK2], [DiemTB_CaNam], [XepLoai]) VALUES (N'HS003', N'10A3', 9, 9, 9, N'Giỏi')
INSERT [dbo].[BangDiemCaNam] ([MaHocSinh], [MaLop], [DiemTB_HK1], [DiemTB_HK2], [DiemTB_CaNam], [XepLoai]) VALUES (N'HS004', N'11A3', 8, 8, 8, N'Khá')
INSERT [dbo].[BangDiemCaNam] ([MaHocSinh], [MaLop], [DiemTB_HK1], [DiemTB_HK2], [DiemTB_CaNam], [XepLoai]) VALUES (N'HS006', N'10A2', 9, 8, 0, N'Giỏi')
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'BV', N'Bảo Vệ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'GV', N'Giảng Viên')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'HT', N'Hiệu Trưởng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'LC', N'Lao Công')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'NV', N'Nhân Viên')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'PHT', N'Phó Hiệu Trưởng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'PTBM', N'Phó Trưởng Bộ Môn')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'PTP', N'Phó Trưởng Phòng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'QT', N'Quản Trị Viên')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'TBM', N'Trưởng Bộ Môn')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'TP', N'Trưởng Phòng')
GO
INSERT [dbo].[GiangVien] ([MaGiangVien], [TenGiangVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'GV001', N'Nguyễn Hoàng Tùng', CAST(N'1990-01-01' AS Date), N'Nam', N'Tri Tôn', 123456789, N'D.jpg', N'67', N'HT', N'PHT', 8000000)
INSERT [dbo].[GiangVien] ([MaGiangVien], [TenGiangVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'GV002', N'Nguyễn Diễm Hương', CAST(N'2000-01-09' AS Date), N'Nữ', N'Tịnh Biên', 123456789, N'DHuong.jpg', N'67', N'GV', N'B_TO', 6000000)
INSERT [dbo].[GiangVien] ([MaGiangVien], [TenGiangVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'GV003', N'Trương Thị Mỹ Xuyên', CAST(N'2001-01-01' AS Date), N'Nữ', N'Tịnh Biên', 123456789, N'MXuyen.jpg', N'67', N'GV', N'B_LS', 6000000)
INSERT [dbo].[GiangVien] ([MaGiangVien], [TenGiangVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'GV004', N'Dương Thùy Dương', CAST(N'2002-01-09' AS Date), N'Nữ', N'Thoại Sơn', 123456789, N'TDuong.jpg', N'67', N'TBM', N'B_TO', 7000000)
INSERT [dbo].[GiangVien] ([MaGiangVien], [TenGiangVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'GV005', N'Nguyễn Ngọc Hoàng', CAST(N'2000-06-08' AS Date), N'Nam', N'Tri Tôn', 123456789, N'TNghia.jpg', N'67', N'TP', N'PYT', 7000000)
INSERT [dbo].[GiangVien] ([MaGiangVien], [TenGiangVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'GV006', N'Nguyễn C', CAST(N'2022-05-18' AS Date), N'Nam', N'Tri Tôn', 123456789, N'TNghia.jpg', N'65', N'GV', N'B_HH', 8000000)
GO
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan]) VALUES (N'HS001', N'Lưu Minh Nhựt', CAST(N'2001-05-29' AS Date), N'Nam', N'Tri Tôn', 366676704, N'MNhut.JPG', N'67')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan]) VALUES (N'HS002', N'Nguyễn Thị Cờ', CAST(N'2002-07-07' AS Date), N'Nữ', N'Chợ Mới', 123456789, N'HHuy.png', N'67')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan]) VALUES (N'HS003', N'Nguyễn Tấn Đức', CAST(N'2001-01-01' AS Date), N'Nam', N'An Tức', 123456789, N'TDuc.jpg', N'67')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan]) VALUES (N'HS004', N'Hà Kim Ngân', CAST(N'2002-06-15' AS Date), N'Nữ', N'Vĩnh Thạnh', 123456789, N'HNgan.jpg', N'65')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan]) VALUES (N'HS005', N'Trương Thị Mỹ Xuyên', CAST(N'2001-03-03' AS Date), N'Nữ', N'Tịnh Biên', 123456789, N'MXuyen.jpg', N'67')
INSERT [dbo].[HocSinh] ([MaHocSinh], [TenHocSinh], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan]) VALUES (N'HS006', N'Lê Nhật Tiến', CAST(N'2004-02-15' AS Date), N'Nam', N'Long Xuyên', 123456789, N'D.jpg', N'67')
GO
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'10A1', N'10A1')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'10A2', N'10A2')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'10A3', N'10A3')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'10A4', N'10A4')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'11A1', N'11A1')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'11A2', N'11A2')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'11A3', N'11A3')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'11A4', N'11A4')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'12A1', N'12A1')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'12A2', N'12A2')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'12A3', N'12A3')
INSERT [dbo].[LopHoc] ([MaLop], [TenLop]) VALUES (N'12A4', N'12A4')
GO
INSERT [dbo].[LuongGiangVien] ([MaGiangVien], [NgayBD], [HeSoLuong], [GhiChu]) VALUES (N'GV001', CAST(N'2000-05-19' AS Date), 2.5, NULL)
INSERT [dbo].[LuongGiangVien] ([MaGiangVien], [NgayBD], [HeSoLuong], [GhiChu]) VALUES (N'GV002', CAST(N'2002-06-16' AS Date), 2, N'')
INSERT [dbo].[LuongGiangVien] ([MaGiangVien], [NgayBD], [HeSoLuong], [GhiChu]) VALUES (N'GV003', CAST(N'2000-05-19' AS Date), 2.5, N'')
INSERT [dbo].[LuongGiangVien] ([MaGiangVien], [NgayBD], [HeSoLuong], [GhiChu]) VALUES (N'GV003', CAST(N'2022-05-18' AS Date), 3, N'')
GO
INSERT [dbo].[LuongNhanVien] ([MaNhanVien], [NgaBD], [HeSoLuong], [GhiChu]) VALUES (N'NV001', CAST(N'2000-05-19' AS Date), 2.5, N'haha')
INSERT [dbo].[LuongNhanVien] ([MaNhanVien], [NgaBD], [HeSoLuong], [GhiChu]) VALUES (N'NV006', CAST(N'2022-04-23' AS Date), 1, N'')
GO
INSERT [dbo].[NguoiDung] ([TenDangNhap], [HoTen], [MatKhau], [HinhAnh], [QuyenHan]) VALUES (N'lmnhut', N'Lưu Minh Nhựt', N'e99a18c428cb38d5f260853678922e03', N'MNhut.JPG', 1)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [HoTen], [MatKhau], [HinhAnh], [QuyenHan]) VALUES (N'dtduong', N'Dương Thùy Dương', N'e99a18c428cb38d5f260853678922e03', N'TDuong.jpg', 1)
INSERT [dbo].[NguoiDung] ([TenDangNhap], [HoTen], [MatKhau], [HinhAnh], [QuyenHan]) VALUES (N'ttnanh', N'Trừ Thị Ngọc Ánh', N'a906449d5769fa7361d7ecc6aa3f6d28', N'D.jpg', 2)
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'NV001', N'Lưu Minh Nhựt', CAST(N'2001-05-29' AS Date), N'Nam', N'Tri Tôn', 366676704, N'MNhut.JPG', N'67', N'TP', N'B_TH', 7000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'NV002', N'Nguyễn Tấn Đức', CAST(N'2001-01-01' AS Date), N'Nam', N'Tri Tôn', 123456789, N'TDuc.jpg', N'67', N'BV', N'PBV', 4000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'NV003', N'Nguyễn Thanh Loan', CAST(N'1985-06-19' AS Date), N'Nữ', N'Long Xuyên', 123456789, N'D.jpg', N'67', N'LC', N'TLC', 4000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'NV004', N'Trần Thanh Nhàng', CAST(N'2001-03-09' AS Date), N'Nam', N'Thoại Sơn', 123456789, N'D.jpg', N'67', N'NV', N'B_TH', 4000000)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [HinhAnh], [MaQueQuan], [MaChucVu], [MaPhongBan], [LuongCanBan]) VALUES (N'NV006', N'Nguyễn Thị Thu Hường', CAST(N'2001-04-23' AS Date), N'Nam', N'Tri Tôn', 123456789, N'D.jpg', N'67', N'LC', N'TLC', 4000000)
GO
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS001', N'12A1', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS002', N'12A1', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS003', N'10A3', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS004', N'11A3', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS005', N'11A1', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS006', N'10A2', CAST(N'2020-06-19' AS Date))
INSERT [dbo].[PhanLop] ([MaHocSinh], [MaLop], [NamHoc]) VALUES (N'HS006', N'11A1', CAST(N'2020-06-19' AS Date))
GO
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_AV', N'Bộ Môn Anh Văn')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_DI', N'Bộ Môn Địa Lí')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_HH', N'Bộ Môn Hóa Học')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_LS', N'Bộ Môn Lịch Sử')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_NV', N'Bộ Môn Ngữ Văn')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_SI', N'Bộ Môn Sinh Học')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_TH', N'Bộ Môn Tin Học')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'B_TO', N'Bộ Môn Toán')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PBV', N'Phòng Bảo Vệ')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PHT', N'Phòng Hiệu Trưởng')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PKT', N'Phòng Kế Toán')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'PYT', N'Phòng Y Tế')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'TLC', N'Tổ Lao Công')
INSERT [dbo].[PhongBan] ([MaPhongBan], [TenPhongBan]) VALUES (N'TV', N'Thư Viện')
GO
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'27', N'Bắc Giang')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'51', N'TP HCM')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'52', N'TP HCM')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'53', N'TP HCM')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'64', N'Vĩnh Long')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'65', N'Cần Thơ')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'66', N'Đồng Tháp')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'67', N'An Giang')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'68', N'Kiên Giang')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'84', N'Trà Vinh')
INSERT [dbo].[QueQuan] ([MaQueQuan], [TenQueQuan]) VALUES (N'94', N'Hậu Giang')
GO
ALTER TABLE [dbo].[BangDiem_HK1]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HK1_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[BangDiem_HK1] CHECK CONSTRAINT [FK_BangDiem_HK1_HocSinh]
GO
ALTER TABLE [dbo].[BangDiem_HK1]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HK1_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[BangDiem_HK1] CHECK CONSTRAINT [FK_BangDiem_HK1_LopHoc]
GO
ALTER TABLE [dbo].[BangDiem_HK2]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HK2_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
GO
ALTER TABLE [dbo].[BangDiem_HK2] CHECK CONSTRAINT [FK_BangDiem_HK2_HocSinh]
GO
ALTER TABLE [dbo].[BangDiem_HK2]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HK2_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
GO
ALTER TABLE [dbo].[BangDiem_HK2] CHECK CONSTRAINT [FK_BangDiem_HK2_LopHoc]
GO
ALTER TABLE [dbo].[BangDiemCaNam]  WITH CHECK ADD  CONSTRAINT [FK_BangDiemCaNam_BangDiem_HK1] FOREIGN KEY([MaHocSinh], [MaLop], [DiemTB_HK1])
REFERENCES [dbo].[BangDiem_HK1] ([MaHocSinh], [MaLop], [DiemTB_HK1])
GO
ALTER TABLE [dbo].[BangDiemCaNam] CHECK CONSTRAINT [FK_BangDiemCaNam_BangDiem_HK1]
GO
ALTER TABLE [dbo].[BangDiemCaNam]  WITH CHECK ADD  CONSTRAINT [FK_BangDiemCaNam_BangDiem_HK2] FOREIGN KEY([MaHocSinh], [MaLop], [DiemTB_HK2])
REFERENCES [dbo].[BangDiem_HK2] ([MaHocSinh], [MaLop], [DiemTB_HK2])
GO
ALTER TABLE [dbo].[BangDiemCaNam] CHECK CONSTRAINT [FK_BangDiemCaNam_BangDiem_HK2]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_ChucVu]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_PhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_PhongBan]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_QueQuan] FOREIGN KEY([MaQueQuan])
REFERENCES [dbo].[QueQuan] ([MaQueQuan])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_QueQuan]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_QueQuan] FOREIGN KEY([MaQueQuan])
REFERENCES [dbo].[QueQuan] ([MaQueQuan])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_QueQuan]
GO
ALTER TABLE [dbo].[LuongGiangVien]  WITH CHECK ADD  CONSTRAINT [FK_LuongGiangVien_GiangVien] FOREIGN KEY([MaGiangVien])
REFERENCES [dbo].[GiangVien] ([MaGiangVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuongGiangVien] CHECK CONSTRAINT [FK_LuongGiangVien_GiangVien]
GO
ALTER TABLE [dbo].[LuongNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_LuongNhanVien_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuongNhanVien] CHECK CONSTRAINT [FK_LuongNhanVien_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_QueQuan] FOREIGN KEY([MaQueQuan])
REFERENCES [dbo].[QueQuan] ([MaQueQuan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_QueQuan]
GO
ALTER TABLE [dbo].[PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_PhanLop_HocSinh] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HocSinh] ([MaHocSinh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanLop] CHECK CONSTRAINT [FK_PhanLop_HocSinh]
GO
ALTER TABLE [dbo].[PhanLop]  WITH CHECK ADD  CONSTRAINT [FK_PhanLop_LopHoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LopHoc] ([MaLop])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanLop] CHECK CONSTRAINT [FK_PhanLop_LopHoc]
GO
