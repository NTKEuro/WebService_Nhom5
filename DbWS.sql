USE [DbWS]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [Trangthai]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [Trangthai]) VALUES (2, N'Quản Lý', 1)
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen], [Trangthai]) VALUES (3, N'Nhân Viên Vận Chuyển', 1)
SET IDENTITY_INSERT [dbo].[Quyen] OFF
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](11) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NguoiDung] ([TenDN], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [NgaySinh], [Trangthai]) VALUES (N'john1712', N'Pi1ViUUD+CI=', N'Nguyễn Hữu Tài', N'Hiệp phước', N'nhtai1712@gmail.com', N'0938613461', CAST(0x0000833300000000 AS DateTime), 1)
INSERT [dbo].[NguoiDung] ([TenDN], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [NgaySinh], [Trangthai]) VALUES (N'mylove', N'Pi1ViUUD+CI=', N'Nguyễn Văn Tèo', N'Hiệp phước', N'onlylove200829@yahoo.com', N'0938613461', CAST(0x0000833300000000 AS DateTime), 1)
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[TenKM] [nvarchar](50) NOT NULL,
	[GiaTriGiam] [int] NOT NULL,
	[NgayApDung] [datetime] NOT NULL,
	[NgayHetHan] [datetime] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [GiaTriGiam], [NgayApDung], [NgayHetHan]) VALUES (1, N'Lễ 8 tháng 3', 20, CAST(0x0000A00200000000 AS DateTime), CAST(0x0000A01F00000000 AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [GiaTriGiam], [NgayApDung], [NgayHetHan]) VALUES (2, N'20 tháng 10', 10, CAST(0x0000A0E600000000 AS DateTime), CAST(0x0000A0FA00000000 AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [GiaTriGiam], [NgayApDung], [NgayHetHan]) VALUES (3, N'Lễ Noel + Tết', 20, CAST(0x0000A12300000000 AS DateTime), CAST(0x0000A14200000000 AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [GiaTriGiam], [NgayApDung], [NgayHetHan]) VALUES (4, N'Lễ Tình Nhân', 20, CAST(0x00009FEA00000000 AS DateTime), CAST(0x00009FFB00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
/****** Object:  Table [dbo].[TheLoai]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NOT NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (1, N'Kinh tế', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (2, N'Văn hóa nghệ thuật', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (3, N'Kỹ năng sống đẹp', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (4, N'Ngoại ngữ - từ điển', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (5, N'Truyện tranh', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (6, N'Thiếu nhi', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (7, N'Thường thức - đời sống', 1)
INSERT [dbo].[TheLoai] ([MaTL], [TenDM], [Trangthai]) VALUES (8, N'Văn học', 1)
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
/****** Object:  Table [dbo].[Sach]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[MaKM] [int] NULL,
	[MaTL] [int] NOT NULL,
	[TenSach] [nvarchar](200) NOT NULL,
	[TenTacGia] [nvarchar](100) NOT NULL,
	[NhaXuatBan] [nvarchar](200) NOT NULL,
	[SoTrang] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[NamXuatBan] [int] NOT NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[GiaVon] [decimal](18, 0) NULL,
	[LoaiBia] [nvarchar](50) NOT NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[PhanTramLoi] [int] NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sach] ON
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (1, NULL, 6, N'Những tấm lòng cao cả', N'Edmondo De Amicis', N'NXB Kim Đồng', 344, 3, 2012, N'Chúng ta biết gì về con em mình trong một ngày, một tuần, thậm chí một năm khi chúng ở trường học, giữa thầy cô và bè bạn? Đọc "Những Tấm Lòng Cao Cả”, chúng ta sẽ hiểu thêm về tâm sức của "những người chở đò", hiểu thêm sự cần thiết và quan trọng của mối liên hệ giữa gia đình, nhà trường, xã hội để giáo dục con em mình trở thành một công dân tốt. Giáo dục phải tiến hành có nghệ thuật, và nghệ thuật văn chương là công cụ giáo dục tốt. Và sự thành công của E.D Amicis là ở đó...', CAST(65000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'Bìa mềm', N'1.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (2, NULL, 5, N'Kho tàng truyện cổ tích Việt Nam tập 4', N'Nguyển Đổng Chi', N'NXB Trẻ', 232, 12, 2008, N'Tập 4 gồm các câu chuyện về chủ đề thần tiên, ma quỷ, đền ơn trả oán...', CAST(78000 AS Decimal(18, 0)), CAST(60000 AS Decimal(18, 0)), N'Bìa mềm', N'2.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (3, NULL, 1, N'Vì sao? Như thế nào? Khủng long', N'Không xác định', N'NXB Dân Trí Mới', 128, 11, 2012, N'Trong quá trình khám phá thế giới, trẻ không ngừng đưa ra những câu hỏi Vì sao? Như thế nào? mà đôi khi các bậc phụ huynh cũng khó đưa ra những câu trả lời chính xác. Với bộ sách Vì sao? Như thế nào? bạn đã có một cẩm nang hữu ích để khuyến khích, cổ vũ con trẻ học hỏi, khám phá thế giới.', CAST(52000 AS Decimal(18, 0)), CAST(40000 AS Decimal(18, 0)), N'Bìa Mềm', N'3.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (4, NULL, 1, N'Tủ Sách Tri Thức Bách Khoa Bằng Hình - Đại Chiến Thế Giới II', N'Emilie Beaumont', N'NXB Mỹ Thuật', 26, 24, 2008, N'“Cuộc đại chiến thế giới lần thứ nhất làm 11 triệu người chết và để lại một thế giới mang đầy thương tích. Khắp nơi người già phải giúp đỡ trẻ mồ côi, phụ nữ goá bụa, binh lính què cụt và phải xây dựng lại những vùng bị chiến sự tan phá. Từ năm 1919 đến năm 1920, các nước thắng trận thảo ra một số hiệp ước hoà bình, trong đó có hiệp ước Versailles ký với Đức năm 1919. Hiệp ước này vẽ ra đường biên giới mới ở Trung Âu, vì vậy nó khiến cho nhiều người Đức và Nga bất mãn. Trong khi các nước thắng trận vẫn muốn tin tưởng vào hiệp ước hoà bình thì việc chia cắt mới này ở Châu Âu sẽ trở thành một trong những nguyên nhân dẫn tới cuộc Đại chiến thế giới lần thứ hai…”.', CAST(104000 AS Decimal(18, 0)), CAST(80000 AS Decimal(18, 0)), N'Bìa mềm', N'4.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (5, NULL, 5, N'Bộ Sách Tuyển Tập Truyện Hay Dành Cho Thiếu Nhi (4 Tập)', N'Aesop', N'NXB Trẻ', 512, 14, 2009, N'Tuyển tập truyện hay dành cho thiếu nhi” là bộ sách tập hợp những câu chuyện cổ tích từ khắp nơi trên thế giới; những chuyện kể trong kinh sách hay trong các sử thi nổi tiếng; chuyện kể về các danh nhân hay một số tác phẩm của các nhà văn tên tuổi.', CAST(39000 AS Decimal(18, 0)), CAST(30000 AS Decimal(18, 0)), N'Bìa mềm', N'5.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (6, NULL, 5, N'Bách Khoa Tri Thức Cho Trẻ Em - Khám Phá Và Sáng Tạo', N'Không xác định', N'NXB Mỹ Thuật', 320, 8, 2009, N'chưa xác định nội dung', CAST(91000 AS Decimal(18, 0)), CAST(70000 AS Decimal(18, 0)), N'Bìa mềm', N'6.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (7, NULL, 5, N'Cổ tích Việt Nam - Cây Khế', N'Nhiều tác giả', N'NXB Mỹ Thuật', 16, 16, 2012, N'Bộ truyện với những hình minh họa sinh động, bố cục sinh động giúp bé dễ dàng tiếp cận với nội dung. Các bức vẽ phù hợp với nội dung truyện kể và bản sắc dân tộc của mỗi vùng miền, đem đến sự hấp dẫn lớn nơi người đọc, đặc biệt là trẻ thơ', CAST(104000 AS Decimal(18, 0)), CAST(80000 AS Decimal(18, 0)), N'Bìa mềm', N'7.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (8, NULL, 3, N'125 Trò Chơi Giúp Phát Triển Trí Thông Minh Cho Trẻ Từ 1-3 Tuổi', N'Không xác định', N'NXB Trẻ', 218, 17, 2012, N'125 Trò Chơi Giúp Phát Triển Trí Thông Minh Cho Trẻ chỉ ra những trò chơi hết sức đơn giản mà hiệu quả, giúp trẻ năng động hơn, tạo một nền móng vững chắc cho cuộc sống tốt đẹp sau này.', CAST(110500 AS Decimal(18, 0)), CAST(85000 AS Decimal(18, 0)), N'Bìa mềm', N'8.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (9, NULL, 4, N'IQ Mê cung', N'Nguyễn Tứ', N'NXB Trẻ', 272, 17, 2012, N'Hơn 500 câu đố trong quyển sách này sẽ kéo căng khả năng suy nghĩ một chiều và logic của bạn cho tới giới hạn. Một số câu đố đòi hỏi kỹ năng toán học sắc sảo, một số câu đố khác cần đến khả năng nhận ra các mô hình trừu tượng, nhưng tất cả đều hết sức logic.', CAST(97500 AS Decimal(18, 0)), CAST(75000 AS Decimal(18, 0)), N'Bìa mềm', N'9.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (10, NULL, 3, N'Từ Điển Tranh Cho Trẻ Mầm Non - Quyển 8', N'Không xác định', N'NXB Mỹ Thuật', 24, 0, 2011, N'Bộ sách TỪ ĐIỂN TRANH dành cho trẻ mầm non. Một cuốn sách vô cùng hữu ích dành cho trẻ Mầm non Cuốn sách với hình ảnh sinh động, cách trình bày khoa học Mỗi cuốn sách  khái quát một chủ đề, chủ điểm cụ thể giúp các bé vừa học vừa chơi Bên cạnh những hình ảnh minh họa sinh động là Nội dung chú giải giúp các bé hiểu sự vật hiện tượng một cách thấu đáo', CAST(12000 AS Decimal(18, 0)), CAST(12000 AS Decimal(18, 0)), N'Bìa mềm', N'10.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (11, NULL, 1, N'Made in Japan: Chế Tạo Tại Nhật Bản (Tái Bản) ', N'Akio morita', N'NXB Tri Thức', 520, 15, 2012, N'Made in Japan là cuốn sách do chính Akio Morita viết về ông và những người sáng lập Sony, cùng với những đồng nghiệp khác trong quá trình phát triển Tập đoàn. Cuốn sách là sự kết hợp giữa lịch sử, triết học, quản trị doanh nghiệp và cả những suy nghĩ đời thường. Một cuốn sách mà mọi nhà quản trị đều cần phải đọc nếu muốn biết làm cách nào để biến những công ty nhỏ bé trở thành những tập đoàn hùng mạnh.', CAST(130000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), N'Bìa mềm', N'11.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (12, NULL, 1, N'Khi Bạn Tắc Đường Thì Tôi Đang Chơi Golf', N'Không xác định', N'NXB Trẻ', 218, 12, 2012, N'Khởi Nghiệp Thành Công & Chế Ngự Stress', CAST(156000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), N'Bìa mềm', N'12.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (13, NULL, 1, N'Tài Năng Của Người Lãnh Đạo', N'Không xác định', N'NXB Trẻ', 180, 16, 2012, N'Tài Năng Của Người Lãnh Đạo', CAST(98800 AS Decimal(18, 0)), CAST(76000 AS Decimal(18, 0)), N'Bìa mềm', N'13.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (14, NULL, 7, N'Thở Và Thiền', N'Nhiều tác giả', N'NXB Hồng Đức', 211, 14, 2012, N'Thở Và Thiền là tuyển tập những cái nhìn về thiền dưới nhiều góc độ của hơn 30 bậc thánh nhân và đạo sư trong lịch sử nhân loại. Thở Và Thiền cho chúng ta một cái nhìn đa dạng dưới các góc độ tôn giáo và tâm linh khác nhau, từ quan kiến của Đức Phật hàng ngàn năm trước cho đến quan niệm của các thiền sư hiện đại trong thế kỷ 20.', CAST(70200 AS Decimal(18, 0)), CAST(54000 AS Decimal(18, 0)), N'Bìa mềm', N'14.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (15, NULL, 7, N'Yoga Giảm Béo Thải Độc', N'Minh Trang', N'NXB Hồng Đức', 210, 0, 2012, N'Yoga có xuất xứ từ Ấn Độ cổ đại từ hơn 5000 năm trước, là một môn vận động rất truyền thống, cổ xưa và đầy thần bí. Trải qua thử thách của thời gian, cho đến tận ngày nay, Yoga vẫn còn lưu giữ được ý nghĩa ban đầu, đồng thời không ngừng được cải tiến.Yoga không những đã trở thành một trào lưu rèn luyện sức khỏe phổ biến trên toàn thế giới mà nó còn là biểu tượng cho vẻ đẹp của người phụ nữ hiện đại.', CAST(40000 AS Decimal(18, 0)), CAST(40000 AS Decimal(18, 0)), N'Bìa mềm', N'15.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (16, NULL, 7, N'1000 Câu Hỏi Kiến Thức Về Tâm Sinh Lý', N'Hương Quỳnh', N'NXB Văn Hóa Thông Tin', 210, 0, 2012, N'Cuộc đời thật đẹp đẽ, nhưng cuộc đời của các bạn nam và cuộc đời của các bạn nữ không giống nhau, đồng thời với việc sáng tạo thế giới thì các bạn nam chỉ sáng tạo; còn khi các bạn nữ sáng tạo thế giới thì họ còn trang điểm cho thế giới.', CAST(42000 AS Decimal(18, 0)), CAST(42000 AS Decimal(18, 0)), N'Bìa mềm', N'16.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (17, NULL, 7, N'Bí Quyết Xây Dựng Một Gia Đình Hạnh Phúc', N'Lê hà', N'NXB Văn Hóa Thông Tin', 210, 18, 2012, N'Trong xã hội ngày nay, sự bình đẳng giữa nam và nữ đã được nhìn nhận rõ hơn, giá trị của tình yêu cũng được khẳng định như một điều kiện cần trong mỗi gia đình. Tình yêu cao quý có thể giúp cho con người có thêm nghị lực vượt qua khó khăn, trở ngại và có cả nhưng bất hạnh trong cuộc sống. Tình yêu cũng làm cho con người ta hạnh phúc lẫn khổ đau.', CAST(115700 AS Decimal(18, 0)), CAST(89000 AS Decimal(18, 0)), N'Bìa mềm', N'17.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (18, NULL, 7, N'Tài Lẻ Bạn Trai: Bí Quyết Chinh Phục Bạn Gái', N'Không xác định', N'NXB Hồng Bàng', 210, 0, 2012, N'Có những anh chàng không đẹp trai, chẳng nổi bật, nhưng chỉ cần thể hiện một thứ tài lẻ của mình thôi cũng đủ để khiến các cô gái siêu lòng.', CAST(27000 AS Decimal(18, 0)), CAST(27000 AS Decimal(18, 0)), N'Bìa mềm', N'18.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (19, NULL, 2, N'Những Bà Vợ Hollywood', N'Không xác định', N'NXB Hồng Bàng', 210, 14, 2012, N'Những Bà Vợ Hollywood', CAST(585000 AS Decimal(18, 0)), CAST(450000 AS Decimal(18, 0)), N'Bìa mềm', N'19.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (20, NULL, 2, N'Nguyễn Sinh Cung - Nguyễn Tất Thành Giai Đoạn (1890 - 1911) ', N'Không xác định', N'NXB Hồng Bàng', 210, 0, 2012, N'Chưa xác định nội dung', CAST(34000 AS Decimal(18, 0)), CAST(34000 AS Decimal(18, 0)), N'Bìa mềm', N'20.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (21, NULL, 2, N'Nguyễn Ái Quốc - Hồ Chí Minh (Giai Đoạn 1941-1945)', N'Không xác định', N'NXB Hồng Bàng', 210, 11, 2012, N'Nguyễn Ái Quốc - Hồ Chí Minh (Giai Đoạn 1941-1945)', CAST(166400 AS Decimal(18, 0)), CAST(128000 AS Decimal(18, 0)), N'Bìa mềm', N'21.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (22, NULL, 2, N'Người Đi Tìm Hình Của Nước', N'Không xác định', N'NXB Thời Đại', 210, 14, 2012, N'Nói về việc xây dựng đất nước', CAST(65000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'Bìa mềm', N'22.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (23, NULL, 8, N'Mùa Hè Năm Petrus ', N'Lê Văn Nghĩa', N'NXB Trẻ', 480, 15, 2012, N'Mùa Hè Năm Petrus là câu chuyện về trường lớp, thầy cô, bạn bè và những mối quan hệ của nhóm bạn học sinh lớp cuối trung học đệ nhất cấp (trung học cơ sở ngày nay) ở một ngôi trường toàn nam sinh vào giữa cuối thập niên 60 thế kỷ trước ở Sài Gòn.', CAST(91000 AS Decimal(18, 0)), CAST(70000 AS Decimal(18, 0)), N'Bìa mềm', N'23.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (24, NULL, 8, N'Đêm Cuối Cùng Ở Ngọa Vân', N'Uông Triều', N'NXB Hội Nhà Văn', 131, 5, 2012, N'Vào dịp bảy trăm năm ngày mất của Người, Uông cùng một đoàn văn nghệ sĩ trong vùng đắc ý hành hương lên thăm Ngọa Vân. Uông đã ngồi thiền dưới chân tháp tổ, ăn rau rừng, uống nước suối, bẻ trúc làm gậy, một đêm miên man không ngủ được…', CAST(139100 AS Decimal(18, 0)), CAST(107000 AS Decimal(18, 0)), N'Bìa mềm', N'24.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (25, NULL, 8, N'Mỗi Chàng Một Nàng', N'Meg Cabot', N'NXB Hội Nhà Văn', 334, 17, 2012, N'Meg Cabot, tác giả của loạt truyện nổi tiếng Nhật kí công chúa nay đã trở lại với bộ ba tác phẩm Chàng gặp nàng, Chàng trai nhà bên và Mỗi chàng một nàng.', CAST(115700 AS Decimal(18, 0)), CAST(89000 AS Decimal(18, 0)), N'Bìa mềm', N'25.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (26, NULL, 8, N'Bí Mật Tình Yêu Phố Angel (Phần 2) - Tập 1', N'Girlne Ya', N'NXB Kim Đồng', 180, 15, 2012, N'Sau rất nhiều ngày chờ đợi, Bí mật tình yêu phố Angel - Phần 2 sẽ chính thức trình làng từ tháng 11 này. Những nhân vật mới xuất hiện, các câu chuyện và rắc rối mới cùng những câu hỏi chưa có lời giải đáp từ Phần 1 sẽ được “bật mí” tất tần tật trong Phần 2 này.', CAST(156000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), N'Bìa mềm', N'26.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (27, NULL, 4, N'Barron''s - Writing For The TOEFL IBT', N'Lin Lougheed', N'NXB Tổng Hợp', 700, 0, 2012, N'Updated to reflect the most recent TOEFL iBT exam, this manual prepares students to succeed on the Test of English as a Foreign Language™s Independent Task, the all-important essay question, and on the Integrated Task, which combines reading, listening, and writing skills. The author presents a simple three-step program to help students write like a native speaker of English. His coaching entails getting ideas, organizing details, and developing the topic into clear, grammatical written English. He also provides exercises in proof reading and editing to transform the writing for both Tasks into a finished piece. Over 160 model essays and model integrated tasks are included for students to read and analyze', CAST(145000 AS Decimal(18, 0)), CAST(145000 AS Decimal(18, 0)), N'Bìa mềm', N'28.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (28, NULL, 4, N'Barron''s - Practice Exercises For The Toefl 5th (Kèm 6CD) - Tái Bản', N' First News ', N'NXB Trẻ', 568, 12, 2012, N'Cuốn sách này giúp bạn thực hành để làm quen với cả ba hình thức trên, qua đó giúp bạn thành công trong mọi kỳ thi TOEFL. Sách hướng dẫn bạn chi tiết cách thực hiện từng hình thức thi, có phần so sánh nhanh nội dung các phần thi và đưa ra ba kế hoạch ôn tập và cách đánh giá quá trình ôn thi. ', CAST(845000 AS Decimal(18, 0)), CAST(650000 AS Decimal(18, 0)), N'Bìa mềm', N'29.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (29, NULL, 4, N'Barron''s IELTS International English (Tái Bản) ', N'First News', N'NXB Trẻ', 354, 4, 2012, N' Sách còn cung cấp 4 bài test thực hành cộng với phần nghe và đọc có đáp án đầy đủ, tiện cho học viên tự học và kiểm tra sự tiến bộ của chính mình qua từng bài thi thử. Nhưng bài thi thử này có cấu trúc giống như bài thi IELTS thật, giúp học viên và các thí sinh làm quen dần và tăng thêm lòng tin khi đối diện với kỳ thi thực tế.', CAST(260000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), N'Bìa mềm', N'30.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (30, NULL, 6, N'KTHD - Thời Tiết Mạnh Như Bão Tố (Tái Bản)', N' Anita Ganeri ', N'NXB Trẻ', 160, 13, 2009, N'Horrible Geography - Thời Tiết Mạnh Như Bão Tố không chỉ nói về lịch sử các trận bão, nói về các thảm họa thiên nhiên với những kết cục thảm khốc mà còn giúp bạn học cách phát hiện lốc xoáy, hiểu được cách dự báo thời tiết của một nhà khí tượng học, biết được cảm giác của người bị sét đánh...', CAST(61100 AS Decimal(18, 0)), CAST(47000 AS Decimal(18, 0)), N'Bìa mềm', N'31.jpg', 30, 1)
INSERT [dbo].[Sach] ([MaSach], [MaKM], [MaTL], [TenSach], [TenTacGia], [NhaXuatBan], [SoTrang], [SoLuong], [NamXuatBan], [NoiDung], [Gia], [GiaVon], [LoaiBia], [HinhAnh], [PhanTramLoi], [Trangthai]) VALUES (31, NULL, 6, N'KTHD - Núi Lửa Nóng Hơn Cả Lửa (Tái Bản)', N'Horrible Geography', N'NXB Trẻ', 130, 11, 2009, N'Horrible Geography - Núi Lửa Nóng Hơn Cả Lửa Môn địa lý có thể rất nhàm chán. Bởi ai thèm quan tâm đến các bản đồ cũ rích, đến các hòn đá ù lì, và đồng ruộng hồi đó được trồng thứ gì…', CAST(325000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), N'Bìa mềm', N'32.jpg', 30, 1)
SET IDENTITY_INSERT [dbo].[Sach] OFF
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](11) NULL,
	[NgaySinh] [datetime] NOT NULL,
	[Trangthai] [bit] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNV], [MaQuyen], [MatKhau], [TenNV], [DiaChi], [Email], [SDT], [NgaySinh], [Trangthai]) VALUES (N'casaba', 3, N'Pi1ViUUD+CI=', N'Hồ Võ Công Thành', N'Quận bình thạnh', N'hvcongthanh@gmail.com', N'01283555583', CAST(0x0000827200EC2EE4 AS DateTime), 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaQuyen], [MatKhau], [TenNV], [DiaChi], [Email], [SDT], [NgaySinh], [Trangthai]) VALUES (N'grassbad', 1, N'Pi1ViUUD+CI=', N'Phạm thị thanh thảo', N'Huỳnh tân phát', N'phamtttthao3004@gmail.com', N'0938613461', CAST(0x0000824C00E42E74 AS DateTime), 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaQuyen], [MatKhau], [TenNV], [DiaChi], [Email], [SDT], [NgaySinh], [Trangthai]) VALUES (N'john1712', 2, N'Pi1ViUUD+CI=', N'Nguyễn Hữu Tài', N'845', N'nhtai1712@gmail.com', N'0938613461', CAST(0x0000833300000000 AS DateTime), 1)
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
 CONSTRAINT [PK_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhieuNhapKho] ON
INSERT [dbo].[PhieuNhapKho] ([MaPN], [MaNV], [NgayNhap]) VALUES (1, N'john1712', CAST(0x0000A1A001577EEA AS DateTime))
INSERT [dbo].[PhieuNhapKho] ([MaPN], [MaNV], [NgayNhap]) VALUES (2, N'john1712', CAST(0x0000A1A001577F5D AS DateTime))
INSERT [dbo].[PhieuNhapKho] ([MaPN], [MaNV], [NgayNhap]) VALUES (3, N'john1712', CAST(0x0000A1A001689D8C AS DateTime))
INSERT [dbo].[PhieuNhapKho] ([MaPN], [MaNV], [NgayNhap]) VALUES (4, N'john1712', CAST(0x0000A1A00168A062 AS DateTime))
INSERT [dbo].[PhieuNhapKho] ([MaPN], [MaNV], [NgayNhap]) VALUES (5, N'john1712', CAST(0x0000A1A00168A0A6 AS DateTime))
INSERT [dbo].[PhieuNhapKho] ([MaPN], [MaNV], [NgayNhap]) VALUES (6, N'john1712', CAST(0x0000A1A00168A0CC AS DateTime))
SET IDENTITY_INSERT [dbo].[PhieuNhapKho] OFF
/****** Object:  Table [dbo].[PhieuGiaoHang]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuGiaoHang](
	[MaPGH] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[NgayNhanGH] [datetime] NOT NULL,
	[NgayDuyetGH] [datetime] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_PhieuGiaoHang] PRIMARY KEY CLUSTERED 
(
	[MaPGH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPDH] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[TaiKhoanNM] [nvarchar](50) NULL,
	[HoTenNN] [nvarchar](50) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[NgayDH] [datetime] NOT NULL,
	[NgayDuyetHang] [datetime] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_PhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[MaPDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PhieuDatHang] ON
INSERT [dbo].[PhieuDatHang] ([MaPDH], [MaNV], [TaiKhoanNM], [HoTenNN], [SDT], [Email], [DiaChi], [NgayDH], [NgayDuyetHang], [TrangThai]) VALUES (1, N'john1712', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A1A001690AB0 AS DateTime), NULL, 4)
INSERT [dbo].[PhieuDatHang] ([MaPDH], [MaNV], [TaiKhoanNM], [HoTenNN], [SDT], [Email], [DiaChi], [NgayDH], [NgayDuyetHang], [TrangThai]) VALUES (2, NULL, N'john1712', N'Nguyễn Hữu Tài', N'0938613461', N'nhtai1712@gmail.com', N'Hiệp phước', CAST(0x0000A1A0016D3A5A AS DateTime), CAST(0x0000A1A0016EF64E AS DateTime), 0)
INSERT [dbo].[PhieuDatHang] ([MaPDH], [MaNV], [TaiKhoanNM], [HoTenNN], [SDT], [Email], [DiaChi], [NgayDH], [NgayDuyetHang], [TrangThai]) VALUES (3, NULL, N'mylove', N'Nguyễn Văn Tèo', N'0938613461', N'onlylove200829@yahoo.com', N'Hiệp phước', CAST(0x0000A1A0016E13F5 AS DateTime), CAST(0x0000A1A0016F11EF AS DateTime), 0)
INSERT [dbo].[PhieuDatHang] ([MaPDH], [MaNV], [TaiKhoanNM], [HoTenNN], [SDT], [Email], [DiaChi], [NgayDH], [NgayDuyetHang], [TrangThai]) VALUES (4, NULL, N'mylove', N'Nguyễn Văn Tèo', N'0938613461', N'onlylove200829@yahoo.com', N'Hiệp phước', CAST(0x0000A1A0016FC947 AS DateTime), CAST(0x0000A1A0016FE75D AS DateTime), 0)
INSERT [dbo].[PhieuDatHang] ([MaPDH], [MaNV], [TaiKhoanNM], [HoTenNN], [SDT], [Email], [DiaChi], [NgayDH], [NgayDuyetHang], [TrangThai]) VALUES (5, NULL, N'mylove', N'Nguyễn Văn Tèo', N'0938613461', N'onlylove200829@yahoo.com', N'Hiệp phước', CAST(0x0000A1A601690DB2 AS DateTime), NULL, 0)
INSERT [dbo].[PhieuDatHang] ([MaPDH], [MaNV], [TaiKhoanNM], [HoTenNN], [SDT], [Email], [DiaChi], [NgayDH], [NgayDuyetHang], [TrangThai]) VALUES (6, NULL, N'mylove', N'Nguyễn Văn Tèo', N'0938613461', N'onlylove200829@yahoo.com', N'Hiệp phước', CAST(0x0000A1A6016A60FC AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[PhieuDatHang] OFF
/****** Object:  Table [dbo].[CTPhieuNhapKho]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuNhapKho](
	[MaPN] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_CTPhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (1, 1, 10, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (1, 2, 20, CAST(60000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (1, 3, 12, CAST(40000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (1, 4, 30, CAST(80000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (2, 5, 15, CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (2, 6, 11, CAST(70000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (2, 7, 17, CAST(80000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (2, 8, 17, CAST(85000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (2, 9, 18, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (3, 11, 15, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (3, 12, 12, CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (3, 13, 16, CAST(76000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (3, 14, 14, CAST(54000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (3, 29, 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (3, 30, 17, CAST(47000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (4, 24, 5, CAST(107000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (4, 25, 17, CAST(89000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (4, 26, 10, CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (4, 31, 18, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (5, 17, 18, CAST(89000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (5, 22, 14, CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (5, 28, 12, CAST(650000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (6, 19, 14, CAST(450000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (6, 21, 11, CAST(128000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuNhapKho] ([MaPN], [MaSach], [SoLuong], [DonGia]) VALUES (6, 23, 15, CAST(70000 AS Decimal(18, 0)))
/****** Object:  Table [dbo].[CTPhieuGiaoHang]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuGiaoHang](
	[MaPGH] [int] NOT NULL,
	[MaPDH] [int] NOT NULL,
	[GiaTienVC] [decimal](18, 0) NOT NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuGiaoHang] PRIMARY KEY CLUSTERED 
(
	[MaPGH] ASC,
	[MaPDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuDatHang]    Script Date: 04/23/2013 19:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuDatHang](
	[MaPDH] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaTien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_CTPhieuDatHang] PRIMARY KEY CLUSTERED 
(
	[MaPDH] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (1, 1, 3, CAST(195000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (1, 29, 2, CAST(520000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (2, 6, 2, CAST(182000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (2, 29, 4, CAST(1040000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (2, 30, 4, CAST(244400 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (2, 31, 2, CAST(650000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (3, 2, 5, CAST(390000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (3, 4, 5, CAST(520000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (3, 31, 3, CAST(975000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (4, 1, 3, CAST(195000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (5, 1, 1, CAST(65000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (5, 2, 2, CAST(156000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (5, 6, 1, CAST(91000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (5, 7, 1, CAST(104000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (5, 9, 1, CAST(97500 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (5, 31, 2, CAST(650000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (6, 2, 1, CAST(78000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (6, 3, 1, CAST(52000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (6, 4, 1, CAST(104000 AS Decimal(18, 0)))
INSERT [dbo].[CTPhieuDatHang] ([MaPDH], [MaSach], [SoLuong], [GiaTien]) VALUES (6, 5, 1, CAST(39000 AS Decimal(18, 0)))
/****** Object:  ForeignKey [FK_CTPhieuDatHang_PhieuDatHang]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[CTPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatHang_PhieuDatHang] FOREIGN KEY([MaPDH])
REFERENCES [dbo].[PhieuDatHang] ([MaPDH])
GO
ALTER TABLE [dbo].[CTPhieuDatHang] CHECK CONSTRAINT [FK_CTPhieuDatHang_PhieuDatHang]
GO
/****** Object:  ForeignKey [FK_CTPhieuDatHang_Sach]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[CTPhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuDatHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTPhieuDatHang] CHECK CONSTRAINT [FK_CTPhieuDatHang_Sach]
GO
/****** Object:  ForeignKey [FK_CTPhieuGiaoHang_PhieuDatHang]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[CTPhieuGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuGiaoHang_PhieuDatHang] FOREIGN KEY([MaPDH])
REFERENCES [dbo].[PhieuDatHang] ([MaPDH])
GO
ALTER TABLE [dbo].[CTPhieuGiaoHang] CHECK CONSTRAINT [FK_CTPhieuGiaoHang_PhieuDatHang]
GO
/****** Object:  ForeignKey [FK_CTPhieuGiaoHang_PhieuGiaoHang]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[CTPhieuGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuGiaoHang_PhieuGiaoHang] FOREIGN KEY([MaPGH])
REFERENCES [dbo].[PhieuGiaoHang] ([MaPGH])
GO
ALTER TABLE [dbo].[CTPhieuGiaoHang] CHECK CONSTRAINT [FK_CTPhieuGiaoHang_PhieuGiaoHang]
GO
/****** Object:  ForeignKey [FK_CTPhieuNhapKho_PhieuNhapKho]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[CTPhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhapKho_PhieuNhapKho] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhapKho] ([MaPN])
GO
ALTER TABLE [dbo].[CTPhieuNhapKho] CHECK CONSTRAINT [FK_CTPhieuNhapKho_PhieuNhapKho]
GO
/****** Object:  ForeignKey [FK_CTPhieuNhapKho_Sach]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[CTPhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuNhapKho_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTPhieuNhapKho] CHECK CONSTRAINT [FK_CTPhieuNhapKho_Sach]
GO
/****** Object:  ForeignKey [FK_NhanVien_Quyen]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Quyen]
GO
/****** Object:  ForeignKey [FK_PhieuDatHang_NguoiDung]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatHang_NguoiDung] FOREIGN KEY([TaiKhoanNM])
REFERENCES [dbo].[NguoiDung] ([TenDN])
GO
ALTER TABLE [dbo].[PhieuDatHang] CHECK CONSTRAINT [FK_PhieuDatHang_NguoiDung]
GO
/****** Object:  ForeignKey [FK_PhieuDatHang_NhanVien]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDatHang] CHECK CONSTRAINT [FK_PhieuDatHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuGiaoHang_NhanVien]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[PhieuGiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuGiaoHang_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuGiaoHang] CHECK CONSTRAINT [FK_PhieuGiaoHang_NhanVien]
GO
/****** Object:  ForeignKey [FK_PhieuNhapKho_NhanVien]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho_NhanVien]
GO
/****** Object:  ForeignKey [FK_Sach_KhuyenMai]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_KhuyenMai]
GO
/****** Object:  ForeignKey [FK_Sach_TheLoai]    Script Date: 04/23/2013 19:59:58 ******/
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
