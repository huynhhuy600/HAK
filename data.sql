USE [LTQL]
GO
/****** Object:  Table [dbo].[CacPhepKD]    Script Date: 5/13/2020 9:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CacPhepKD](
	[ppkiemdinh] [nvarchar](100) NOT NULL,
	[ktbenngoai] [nvarchar](10) NOT NULL,
	[ktkythuat] [nvarchar](10) NOT NULL,
	[nhietdo] [float] NOT NULL,
	[doam] [float] NOT NULL,
	[clchieucao] [float] NOT NULL,
	[apsuatchuan] [float] NOT NULL,
	[apsuattang] [float] NOT NULL,
	[apsuatgiam] [float] NOT NULL,
	[IDKD] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CacPhepKD_1] PRIMARY KEY CLUSTERED 
(
	[ktbenngoai] ASC,
	[ktkythuat] ASC,
	[apsuatchuan] ASC,
	[apsuattang] ASC,
	[apsuatgiam] ASC,
	[IDKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiemDinhVien]    Script Date: 5/13/2020 9:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiemDinhVien](
	[id] [int] NOT NULL,
	[TenKDV] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/13/2020 9:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[iDMS] [int] NOT NULL,
	[nguoidung] [nvarchar](50) NULL,
	[diadiemsd] [nvarchar](100) NULL,
	[diadiemth] [nvarchar](100) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[iDMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuongTienKiemDinh]    Script Date: 5/13/2020 9:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongTienKiemDinh](
	[so] [int] NOT NULL,
	[tenphuongtien] [nvarchar](50) NOT NULL,
	[namsanxuat] [nvarchar](max) NOT NULL,
	[nuocsx] [nvarchar](max) NOT NULL,
	[phamvido] [float] NOT NULL,
	[SSCP] [float] NOT NULL,
 CONSTRAINT [PK_PhuongTienKiemDinh] PRIMARY KEY CLUSTERED 
(
	[so] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TenTem]    Script Date: 5/13/2020 9:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TenTem](
	[mstem] [int] NOT NULL,
	[ngaybatdau] [date] NULL,
	[ngayketthuc] [date] NULL,
 CONSTRAINT [PK_TenTem_1] PRIMARY KEY CLUSTERED 
(
	[mstem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TongKet]    Script Date: 5/13/2020 9:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TongKet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[apsuatchuan] [float] NOT NULL,
	[apsuattang] [float] NOT NULL,
	[apsuatgiam] [float] NOT NULL,
	[ktbenngoai] [nvarchar](10) NOT NULL,
	[ktkythuat] [nvarchar](10) NOT NULL,
	[mstem] [int] NOT NULL,
	[ketluan] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TongKet_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[ketluan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TongKet]  WITH CHECK ADD  CONSTRAINT [FK_TongKet_CacPhepKD] FOREIGN KEY([ktbenngoai], [ktkythuat], [apsuatchuan], [apsuattang], [apsuatgiam], [id])
REFERENCES [dbo].[CacPhepKD] ([ktbenngoai], [ktkythuat], [apsuatchuan], [apsuattang], [apsuatgiam], [IDKD])
GO
ALTER TABLE [dbo].[TongKet] CHECK CONSTRAINT [FK_TongKet_CacPhepKD]
GO
ALTER TABLE [dbo].[TongKet]  WITH CHECK ADD  CONSTRAINT [FK_TongKet_TenTem1] FOREIGN KEY([mstem])
REFERENCES [dbo].[TenTem] ([mstem])
GO
ALTER TABLE [dbo].[TongKet] CHECK CONSTRAINT [FK_TongKet_TenTem1]
GO
