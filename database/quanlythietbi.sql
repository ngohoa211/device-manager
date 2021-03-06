USE [master]
GO
/****** Object:  Database [quanlythietbi]    Script Date: 6/5/2017 8:21:50 AM ******/
CREATE DATABASE [quanlythietbi] ON  PRIMARY 
( NAME = N'quanlythuvien', FILENAME = N'D:\cai dat\MSSQL12.SQLEXPRESS\MSSQL\DATA\quanlythuvien.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'quanlythuvien_log', FILENAME = N'D:\cai dat\MSSQL12.SQLEXPRESS\MSSQL\DATA\quanlythuvien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlythietbi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlythietbi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlythietbi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlythietbi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlythietbi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlythietbi] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlythietbi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quanlythietbi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlythietbi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlythietbi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlythietbi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlythietbi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlythietbi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlythietbi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlythietbi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlythietbi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quanlythietbi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlythietbi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlythietbi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlythietbi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlythietbi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlythietbi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlythietbi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlythietbi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [quanlythietbi] SET  MULTI_USER 
GO
ALTER DATABASE [quanlythietbi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlythietbi] SET DB_CHAINING OFF 
GO
USE [quanlythietbi]
GO
/****** Object:  Table [dbo].[ItemThietBi]    Script Date: 6/5/2017 8:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemThietBi](
	[IDThietBi] [int] NULL,
	[MaTaiSan] [varchar](50) NOT NULL,
	[IDLoai] [varchar](50) NOT NULL,
	[ViTri] [varchar](50) NULL,
	[ThuocPhongThucHanh] [bit] NULL,
	[GhiChu] [varchar](50) NULL,
	[SoHieuMay] [varchar](50) NULL,
	[DaThanhLy] [bit] NULL,
 CONSTRAINT [PK_ItemThietBi_1] PRIMARY KEY CLUSTERED 
(
	[MaTaiSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiTB]    Script Date: 6/5/2017 8:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiTB](
	[IDLoai] [int] IDENTITY(1,1) NOT NULL,
	[ChiTieuKT] [varchar](max) NOT NULL,
	[NuocSX] [varchar](50) NULL,
	[NgayNhap] [varchar](50) NULL,
	[Gia1TB] [float] NULL,
	[TinhTrang] [float] NULL,
	[NguonTien] [varchar](50) NULL,
	[GhiChu] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MuonTra]    Script Date: 6/5/2017 8:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MuonTra](
	[MaTaiSan] [varchar](50) NOT NULL,
	[TenNguoiMuon] [varchar](50) NOT NULL,
	[NgayMuon] [varchar](50) NULL,
	[NgayTra] [varchar](50) NULL,
	[ChuThich] [varchar](50) NULL,
 CONSTRAINT [PK_MuonTra] PRIMARY KEY CLUSTERED 
(
	[MaTaiSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test]    Script Date: 6/5/2017 8:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[thietbi] [varchar](50) NULL,
	[nguoimuon] [nchar](10) NULL,
	[ngay muon] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (1, N'IT.IS.00001', N'1', NULL, 0, NULL, N'SGH53003NP', 0)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (2, N'IT.IS.00002', N'1', N'702', 0, N'abc', N'SGH53003NB', 0)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (3, N'IT.IS.00003', N'1', NULL, 0, NULL, N'SGH53003P5', 0)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (4, N'IT.IS.00004', N'1', NULL, 0, NULL, N'SGH53003N2', 0)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00008', N'2', N'706', 0, N'', N'L3C9562', 0)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00010', N'2', NULL, NULL, NULL, N'L3C9748', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00011', N'2', NULL, NULL, NULL, N'L3C9332', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00012', N'2', NULL, NULL, NULL, N'L3C944', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00015', N'3', NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00016', N'3', NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00031', N'8', NULL, NULL, NULL, N' ', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00032', N'8', NULL, NULL, NULL, N'VNA82200WK', NULL)
INSERT [dbo].[ItemThietBi] ([IDThietBi], [MaTaiSan], [IDLoai], [ViTri], [ThuocPhongThucHanh], [GhiChu], [SoHieuMay], [DaThanhLy]) VALUES (NULL, N'IT.IS.00034', N'10', NULL, NULL, NULL, N'SGH8370LBC', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTB] ON 

INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (1, N'Máy tính HP/2.8 Ghz/256MB Ram/ 40 GB/ CD 52x/17', N'China', N'2005', 11623.5, 45, N'chua rõ', N'abc')
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (2, N'Máy tram làm viec IBM Lenovo ThinkCentre E50/3.07 Ghz/480MB Ram/ 80 GB', N'China', N'2006', 11026, 50, N'Chuong trình muc tiêu 2006', N'a')
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (3, N'Màn hình IBM Lenovo 17" LCD Color monitor ,Máy xách tay Notebook IBM ThinkPad T43 (1871-4AA)', N'China', N'2006', 5207, 50, N'Chuong trình muc tiêu 2006', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (4, N'Máy xách tay Notebook IBM ThinkPad T43 (1871-4AA)', N'China', N'2006', 26034, 30, N'Chuong trình muc tiêu 2006', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (5, N'Máy in mang HP LaserJet 1320n', N'China', N'2006', 8882, 70, N'Chuong trình muc tiêu 2006', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (6, N'Máy quét Scanner HP Scanjet 4850 Photo (S/N: L1950A)', N'China', N'2006', 2777, 50, N'chuong trình muc tiêu 2006', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (7, N'Máy chiêu Projector SONY Compact VPL-CX21 (S/N: 2002818)', N'Japan', N'2006', 23828, NULL, N'Chuong trình muc tiêu 2006', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (8, N'HP Notebook 6530b', N'China', N'2008', 21370, NULL, N'Chuong trình muc tiêu 2008', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (9, N'Bô máy tính HP Dx7400 - Micro Tower (S/N: VNA82200WK)', N'China', N'2008', 15390, NULL, N'Chuong trình du án CLC', NULL)
INSERT [dbo].[LoaiTB] ([IDLoai], [ChiTieuKT], [NuocSX], [NgayNhap], [Gia1TB], [TinhTrang], [NguonTien], [GhiChu]) VALUES (10, N'Bô máy HP Dx2700- RC737AV-577', N'China', N'2008', 11000, 30, N'Chuong trình du án CLC', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTB] OFF
INSERT [dbo].[MuonTra] ([MaTaiSan], [TenNguoiMuon], [NgayMuon], [NgayTra], [ChuThich]) VALUES (N'IT.IS.00002', N'CO', N'6/4/2017', N'11/9/2019', N'')
INSERT [dbo].[MuonTra] ([MaTaiSan], [TenNguoiMuon], [NgayMuon], [NgayTra], [ChuThich]) VALUES (N'IT.IS.00003', N'CO', N'8/3/2016', N'5/10/2016', N'')
INSERT [dbo].[MuonTra] ([MaTaiSan], [TenNguoiMuon], [NgayMuon], [NgayTra], [ChuThich]) VALUES (N'IT.IS.9999', N'HOA', N'6/4/2017', N'3/1/2018', N'ABC')
INSERT [dbo].[test] ([thietbi], [nguoimuon], [ngay muon]) VALUES (N'MAYTINH', N'HOANG     ', NULL)
INSERT [dbo].[test] ([thietbi], [nguoimuon], [ngay muon]) VALUES (N'hoa', N'oto       ', NULL)
USE [master]
GO
ALTER DATABASE [quanlythietbi] SET  READ_WRITE 
GO
