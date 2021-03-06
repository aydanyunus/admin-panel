USE [Expresso]
GO
/****** Object:  Table [dbo].[About]    Script Date: 2/6/2018 3:10:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Title] [nvarchar](120) NULL,
	[Content1] [text] NULL,
	[Content2] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CallUS]    Script Date: 2/6/2018 3:10:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallUS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Adress] [nvarchar](255) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drinks]    Script Date: 2/6/2018 3:10:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drinks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpressoFooter]    Script Date: 2/6/2018 3:10:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpressoFooter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[facebook_link] [nvarchar](255) NULL,
	[twitter_link] [nvarchar](255) NULL,
	[instagram_link] [nvarchar](255) NULL,
	[youtube_link] [nvarchar](255) NULL,
	[linkedin_link] [nvarchar](255) NULL,
	[pinterest_link] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GalerryFilters]    Script Date: 2/6/2018 3:10:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalerryFilters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 2/6/2018 3:10:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[classname] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Header]    Script Date: 2/6/2018 3:10:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Header](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Background_img] [nvarchar](255) NULL,
	[SupTitle] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[SubTitle] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletter]    Script Date: 2/6/2018 3:10:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Num1] [decimal](18, 0) NULL,
	[Content1] [nvarchar](50) NULL,
	[Num2] [decimal](18, 0) NULL,
	[Content2] [nvarchar](80) NULL,
 CONSTRAINT [PK__Newslett__3214EC07DA348294] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 2/6/2018 3:10:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 2/6/2018 3:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Date] [nvarchar](20) NULL,
	[Comment] [nvarchar](50) NULL,
	[Title] [nvarchar](200) NULL,
	[Content] [text] NULL,
 CONSTRAINT [PK__Posts__3214EC07BD2A2B55] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 2/6/2018 3:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[SupTitle] [nvarchar](120) NULL,
	[Title] [text] NULL,
	[SubTitle] [nvarchar](120) NULL,
	[Icon1] [nvarchar](50) NULL,
	[Icon2] [nvarchar](50) NULL,
	[Icon3] [nvarchar](50) NULL,
	[Icon4] [nvarchar](50) NULL,
	[Icon5] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 2/6/2018 3:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Content] [text] NULL,
	[Background_img] [nvarchar](100) NULL,
 CONSTRAINT [PK__Section__3214EC076BA67E1D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 2/6/2018 3:10:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](70) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkingHours]    Script Date: 2/6/2018 3:10:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingHours](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[day1] [nvarchar](50) NULL,
	[hour1] [nvarchar](100) NULL,
	[day2] [nvarchar](50) NULL,
	[hour2] [nvarchar](100) NULL,
	[day3] [nvarchar](50) NULL,
	[hour3] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([Id], [Photo], [Title], [Content1], [Content2]) VALUES (1, N'about.jpg', N'Serving since 1997', N'We began in 1997 with the dream of bringing great coffee to the people of Mumbai. When we set up shop with an espresso machine up front and a roaster in the back, we hoped to some day be a part of Mumbai''s rich tradition of service and culinary achievement. Everyday this aspiration drives us. We love our history while keeping our eyes on the future. We are diverse yet the same.', N'We are commited to quality. From the coffee we source, to the precision with which it is roasted and packaged, to our constant training and pursuit of knowledge.')
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[CallUS] ON 

INSERT [dbo].[CallUS] ([Id], [Title], [Adress], [Phone], [Email]) VALUES (1, N'Have some queries? Or just want to say Hi. Feel free to contact us. We''ll be happy to help.', N'Mumbai, India', N'+91 9876543210', N'personal@gmail.com')
SET IDENTITY_INSERT [dbo].[CallUS] OFF
SET IDENTITY_INSERT [dbo].[Drinks] ON 

INSERT [dbo].[Drinks] ([Id], [Photo], [Title], [Content]) VALUES (1, N'p1.jpg', N'Expresso Classic', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
INSERT [dbo].[Drinks] ([Id], [Photo], [Title], [Content]) VALUES (2, N'p2.jpg', N'Expresso Mocha', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
INSERT [dbo].[Drinks] ([Id], [Photo], [Title], [Content]) VALUES (3, N'p3.jpg', N'Expresso Hot Chocolate', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
INSERT [dbo].[Drinks] ([Id], [Photo], [Title], [Content]) VALUES (4, N'p1.jpg', N'Expresso Classic', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
INSERT [dbo].[Drinks] ([Id], [Photo], [Title], [Content]) VALUES (5, N'p2.jpg', N'Expresso Mocha', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
INSERT [dbo].[Drinks] ([Id], [Photo], [Title], [Content]) VALUES (6, N'p3.jpg', N'Expresso Hot Chocolate', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry.')
SET IDENTITY_INSERT [dbo].[Drinks] OFF
SET IDENTITY_INSERT [dbo].[ExpressoFooter] ON 

INSERT [dbo].[ExpressoFooter] ([Id], [Title], [facebook_link], [twitter_link], [instagram_link], [youtube_link], [linkedin_link], [pinterest_link]) VALUES (1, N'Expresso is a powerful HTML based template powered by bootstrap, using the finest web technologies we deliver ultimate products and easy to customize.', N'https://www.facebook.com/', N'https://www.twitter.com/', N'https://www.instagram.com/', N'https://www.youtube.com/', N'https://www.facebook.com/', N'https://www.pinterest.com/')
SET IDENTITY_INSERT [dbo].[ExpressoFooter] OFF
SET IDENTITY_INSERT [dbo].[GalerryFilters] ON 

INSERT [dbo].[GalerryFilters] ([Id], [Name]) VALUES (1, N'ALL')
INSERT [dbo].[GalerryFilters] ([Id], [Name]) VALUES (2, N'COFFEE')
INSERT [dbo].[GalerryFilters] ([Id], [Name]) VALUES (3, N'PASTRY')
INSERT [dbo].[GalerryFilters] ([Id], [Name]) VALUES (4, N'SOFT DRINK')
SET IDENTITY_INSERT [dbo].[GalerryFilters] OFF
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (1, N'1.jpg', N'Expresso Latte', N'coffee')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (2, N'2.jpg', N'Expresso Pastry', N'pastry')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (3, N'3.jpg', N'Expresso Latte', N'coffee')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (4, N'4.jpg', N'Expresso Pastry', N'pastry')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (5, N'5.jpg', N'Expresso Cafe', N'coffee drink')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (6, N'6.jpg', N'Expresso Latte', N'coffee')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (7, N'7.jpg', N'Expresso Smoothie', N'drink')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (8, N'8.jpg', N'Expresso Latte', N'coffee')
INSERT [dbo].[Gallery] ([Id], [Photo], [Title], [classname]) VALUES (9, N'9.jpg', N'Expresso Smoothie', N'drink')
SET IDENTITY_INSERT [dbo].[Gallery] OFF
SET IDENTITY_INSERT [dbo].[Header] ON 

INSERT [dbo].[Header] ([Id], [Background_img], [SupTitle], [Title], [SubTitle]) VALUES (1, N'2018_2_6_0_29_33_0home.jpg', N'Welcome to the world of', N'c o f f e e', N'Food & Drinks, Everyday & Everynight.')
SET IDENTITY_INSERT [dbo].[Header] OFF
SET IDENTITY_INSERT [dbo].[Newsletter] ON 

INSERT [dbo].[Newsletter] ([Id], [Title], [Num1], [Content1], [Num2], [Content2]) VALUES (1, N'Keep up on our always evolving product features. Enter your e-mail and subscribe to our newsletter.', CAST(250 AS Decimal(18, 0)), N'Drinks', CAST(26000 AS Decimal(18, 0)), N'Subscribers')
SET IDENTITY_INSERT [dbo].[Newsletter] OFF
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (1, N'c1.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (2, N'c2.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (3, N'c3.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (4, N'c4.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (5, N'c5.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (6, N'c6.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (7, N'c7.png')
INSERT [dbo].[Partners] ([Id], [Photo]) VALUES (8, N'c8.png')
SET IDENTITY_INSERT [dbo].[Partners] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Photo], [Date], [Comment], [Title], [Content]) VALUES (1, N'blog1.jpg', N'Oct 12, 2017', N'12 Comments', N'10 Benefits of Caffeine', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard...')
INSERT [dbo].[Posts] ([Id], [Photo], [Date], [Comment], [Title], [Content]) VALUES (2, N'blog2.jpg', N'Oct 12, 2017', N'12 Comments', N'Best Coffee around the world', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard...')
INSERT [dbo].[Posts] ([Id], [Photo], [Date], [Comment], [Title], [Content]) VALUES (3, N'blog3.jpg', N'Oct 12, 2017', N'12 Comments', N'Good Ideas start with Coffee', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard...')
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [Photo], [SupTitle], [Title], [SubTitle], [Icon1], [Icon2], [Icon3], [Icon4], [Icon5]) VALUES (1, N't1.jpg', N'Very Nice Staff', N'It is very hard to find a good cafe. This place is such a beautiful thing that has happened to us. The food is delicious and the coffee is brilliant. It''s definitely a big bang for a little buck.', N'Robbie Margot, New Delhi', N'fa-star', N'fa-star', N'fa-star', N'fa-star', N'fa-star-half-o')
INSERT [dbo].[Reviews] ([Id], [Photo], [SupTitle], [Title], [SubTitle], [Icon1], [Icon2], [Icon3], [Icon4], [Icon5]) VALUES (2, N't2.jpg', N'Awesome Coffee', N'It is very hard to find a good cafe. This place is such a beautiful thing that has happened to us. The food is delicious and the coffee is brilliant. It''s definitely a big bang for a little buck.', N'Stephen Amell, Mumbai', N'fa-star', N'fa-star', N'fa-star', N'fa-star', N'fa-star')
INSERT [dbo].[Reviews] ([Id], [Photo], [SupTitle], [Title], [SubTitle], [Icon1], [Icon2], [Icon3], [Icon4], [Icon5]) VALUES (3, N't3.jpg', N'Amazing Beverages', N'It is very hard to find a good cafe. This place is such a beautiful thing that has happened to us. The food is delicious and the coffee is brilliant. It''s definitely a big bang for a little buck.', N'Jane Doe, Sydney', N'fa-star', N'fa-star', N'fa-star', N'fa-star', N'fa-star-half-o')
INSERT [dbo].[Reviews] ([Id], [Photo], [SupTitle], [Title], [SubTitle], [Icon1], [Icon2], [Icon3], [Icon4], [Icon5]) VALUES (4, N't4.jpg', N'Nice Place', N'It is very hard to find a good cafe. This place is such a beautiful thing that has happened to us. The food is delicious and the coffee is brilliant. It''s definitely a big bang for a little buck.', N'Grant Gustin, New Delhi', N'fa-star', N'fa-star', N'fa-star', N'fa-star-half-o', N'fa-star-o')
INSERT [dbo].[Reviews] ([Id], [Photo], [SupTitle], [Title], [SubTitle], [Icon1], [Icon2], [Icon3], [Icon4], [Icon5]) VALUES (5, N't5.jpg', N'Awesome Coffee', N'It is very hard to find a good cafe. This place is such a beautiful thing that has happened to us. The food is delicious and the coffee is brilliant. It''s definitely a big bang for a little buck.', N'Mary Jane, Mumbai', N'fa-star', N'fa-star', N'fa-star', N'fa-star', N'fa-star-half-o')
INSERT [dbo].[Reviews] ([Id], [Photo], [SupTitle], [Title], [SubTitle], [Icon1], [Icon2], [Icon3], [Icon4], [Icon5]) VALUES (6, N't6.jpg', N'Quality Drinks', N'It is very hard to find a good cafe. This place is such a beautiful thing that has happened to us. The food is delicious and the coffee is brilliant. It''s definitely a big bang for a little buck.', N'Dominic Torreto, New Delhi', N'fa-star', N'fa-star', N'fa-star', N'fa-star-half-o', N'fa-star-o')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([Id], [Title], [Content], [Background_img]) VALUES (1, N'Start your day with Coffee!', N'Expresso specializes in sourcing and roasting seasonal, stand-out coffees. What we''ve learned from our coffee travels we''ve brought back to Mumbai to offer our customers some enriching coffee wisdom as well as help you brew a consistently tasty cup every morning.', N'marketing.jpg')
SET IDENTITY_INSERT [dbo].[Section] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Icon], [Title], [Content]) VALUES (1, N'fa-joomla', N'Coffee', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry and has been the industry''s standard')
INSERT [dbo].[Service] ([Id], [Icon], [Title], [Content]) VALUES (2, N'fa-cutlery', N'Food', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry and has been the industry''s standard.')
INSERT [dbo].[Service] ([Id], [Icon], [Title], [Content]) VALUES (3, N'fa-glass', N'Drinks', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry and has been the industry''s standard.')
INSERT [dbo].[Service] ([Id], [Icon], [Title], [Content]) VALUES (4, N'fa-wifi', N'WiFi', N'Our cafeteria is covered by a high speed wifi network, offering productivity along with your food and drinks.')
INSERT [dbo].[Service] ([Id], [Icon], [Title], [Content]) VALUES (5, N'fa-car', N'Valet Parking', N'We also offer Valet Parking services inorder to avoid traffic and provide convienience to our customers.')
INSERT [dbo].[Service] ([Id], [Icon], [Title], [Content]) VALUES (6, N'fa-trophy ', N'Awarded', N'In 2017 Expresso won the Times Food Award under the category of “Best Coffee Bar” from Times of India.')
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[WorkingHours] ON 

INSERT [dbo].[WorkingHours] ([Id], [Title], [day1], [hour1], [day2], [hour2], [day3], [hour3]) VALUES (1, N'Located at the heart of Mumbai, serving the best quality beverages and food since 1997.', N'Mon-Thurs:', N'9:00am - 11:00pm', N'Fri-Sat:', N'9:00am - 1:00am', N'Sunday:', N'9:00am - 1:00am')
SET IDENTITY_INSERT [dbo].[WorkingHours] OFF
