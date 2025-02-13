USE [master]
GO
/****** Object:  Database [db_CrmLeads]    Script Date: 04/07/2024 01.25.38 ******/
CREATE DATABASE [db_CrmLeads]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_CrmLeads', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_CrmLeads.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_CrmLeads_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_CrmLeads_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_CrmLeads] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_CrmLeads].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_CrmLeads] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_CrmLeads] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_CrmLeads] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_CrmLeads] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_CrmLeads] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_CrmLeads] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_CrmLeads] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_CrmLeads] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_CrmLeads] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_CrmLeads] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_CrmLeads] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_CrmLeads] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_CrmLeads] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_CrmLeads] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_CrmLeads] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_CrmLeads] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_CrmLeads] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_CrmLeads] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_CrmLeads] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_CrmLeads] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_CrmLeads] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_CrmLeads] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_CrmLeads] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_CrmLeads] SET  MULTI_USER 
GO
ALTER DATABASE [db_CrmLeads] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_CrmLeads] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_CrmLeads] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_CrmLeads] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_CrmLeads] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_CrmLeads] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_CrmLeads] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_CrmLeads] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_CrmLeads]
GO
/****** Object:  Table [dbo].[tbl_CrmSales]    Script Date: 04/07/2024 01.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CrmSales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SaleOrder] [nvarchar](50) NOT NULL,
	[SaleItem] [nvarchar](50) NOT NULL,
	[WorkOrder] [nvarchar](50) NOT NULL,
	[Product] [nvarchar](50) NOT NULL,
	[ProductDesc] [nvarchar](50) NOT NULL,
	[Qty] [decimal](18, 0) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[EditedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_CrmSales] ON 

INSERT [dbo].[tbl_CrmSales] ([id], [SaleOrder], [SaleItem], [WorkOrder], [Product], [ProductDesc], [Qty], [Status], [CreatedAt], [EditedAt]) VALUES (2, N'6604096600', N'300', N'6682432055', N'KB15_WE_G11', N'13A 250V 1 GANG SWITCHED SOCKET', CAST(1600 AS Decimal(18, 0)), N'Open', CAST(N'2024-07-03T18:15:29.157' AS DateTime), CAST(N'2024-07-03T18:15:29.157' AS DateTime))
INSERT [dbo].[tbl_CrmSales] ([id], [SaleOrder], [SaleItem], [WorkOrder], [Product], [ProductDesc], [Qty], [Status], [CreatedAt], [EditedAt]) VALUES (3, N'6604094574', N'3800', N'6682416525', N'3426UEST2MP ', N'16A Twin 3Pin Uni So 3M Size Mod Push in', CAST(2400 AS Decimal(18, 0)), N'Open', CAST(N'2024-07-03T18:29:08.780' AS DateTime), CAST(N'2024-07-03T18:29:08.780' AS DateTime))
INSERT [dbo].[tbl_CrmSales] ([id], [SaleOrder], [SaleItem], [WorkOrder], [Product], [ProductDesc], [Qty], [Status], [CreatedAt], [EditedAt]) VALUES (4, N'6610002836', N'200', N'6682430487', N'41E2PBSWMZ-VW', N'Connected Switch 2AX 240V Zigbee VW', CAST(4 AS Decimal(18, 0)), N'Open', CAST(N'2024-07-03T18:48:09.067' AS DateTime), CAST(N'2024-07-03T19:30:12.890' AS DateTime))
INSERT [dbo].[tbl_CrmSales] ([id], [SaleOrder], [SaleItem], [WorkOrder], [Product], [ProductDesc], [Qty], [Status], [CreatedAt], [EditedAt]) VALUES (5, N'6604094765', N'100', N'6682418899', N'3426UEST2MP', N'16A Twin 3Pin Uni So 3M Size Mod Push in', CAST(600 AS Decimal(18, 0)), N'Open', CAST(N'2024-07-04T00:25:16.100' AS DateTime), CAST(N'2024-07-04T00:25:16.100' AS DateTime))
INSERT [dbo].[tbl_CrmSales] ([id], [SaleOrder], [SaleItem], [WorkOrder], [Product], [ProductDesc], [Qty], [Status], [CreatedAt], [EditedAt]) VALUES (6, N'6604094574', N'1800', N'6682429490', N'3426UEST2MP', N'16A Twin 3Pin Uni So 3M Size Mod Push in', CAST(2400 AS Decimal(18, 0)), N'Open', CAST(N'2024-07-04T00:32:06.497' AS DateTime), CAST(N'2024-07-04T00:32:06.497' AS DateTime))
INSERT [dbo].[tbl_CrmSales] ([id], [SaleOrder], [SaleItem], [WorkOrder], [Product], [ProductDesc], [Qty], [Status], [CreatedAt], [EditedAt]) VALUES (7, N'6604094576', N'100', N'6682429491', N'3426UEST2MP', N'16A Twin 3Pin Uni So 3M Size Mod Push in', CAST(1600 AS Decimal(18, 0)), N'Open', CAST(N'2024-07-04T00:35:43.467' AS DateTime), CAST(N'2024-07-04T00:35:43.467' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbl_CrmSales] OFF
GO
ALTER TABLE [dbo].[tbl_CrmSales] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[tbl_CrmSales] ADD  DEFAULT (getdate()) FOR [EditedAt]
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateCrmSales]    Script Date: 04/07/2024 01.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Stored Procedure CREATE/INSERT
CREATE PROC [dbo].[sp_CreateCrmSales] 
(
    @SaleOrder NVARCHAR(50),
    @SaleItem NVARCHAR(50),
    @WorkOrder NVARCHAR(50),
    @Product NVARCHAR(50),
    @ProductDesc NVARCHAR(255),
    @Qty DECIMAL(18, 0),
    @Status NVARCHAR(50)
)
AS
BEGIN
    BEGIN TRY
        BEGIN TRAN
            INSERT INTO tbl_CrmSales (SaleOrder, SaleItem, WorkOrder, Product, ProductDesc, Qty, Status)
            VALUES (@SaleOrder, @SaleItem, @WorkOrder, @Product, @ProductDesc, @Qty, @Status);
        COMMIT TRAN
    END TRY
    BEGIN CATCH
        ROLLBACK TRAN
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        THROW 50000, @ErrorMessage, 1;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCrmSales]    Script Date: 04/07/2024 01.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Stored Procedure DELETE
CREATE PROC [dbo].[sp_DeleteCrmSales]
(
    @id INT
)
AS
BEGIN
    DECLARE @RowCount INT = 0
    BEGIN TRY
        SET @RowCount = (SELECT COUNT(1) FROM tbl_CrmSales WITH (NOLOCK) WHERE id = @id)
        IF (@RowCount > 0)
        BEGIN
            BEGIN TRAN
                DELETE FROM tbl_CrmSales WHERE id = @id;
            COMMIT TRAN
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRAN
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        THROW 50000, @ErrorMessage, 1;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReadCrmSales]    Script Date: 04/07/2024 01.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Stored Procedure READ/SELECT All
CREATE PROC [dbo].[sp_ReadCrmSales]
AS
BEGIN
    SELECT id, SaleOrder, SaleItem, WorkOrder, Product, ProductDesc, Qty, Status, CreatedAt, EditedAt
    FROM tbl_CrmSales WITH (NOLOCK);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReadCrmSalesById]    Script Date: 04/07/2024 01.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Stored Procedure READ/SELECT By Id
CREATE PROC [dbo].[sp_ReadCrmSalesById]
(
    @id INT
)
AS
BEGIN
    SELECT id, SaleOrder, SaleItem, WorkOrder, Product, ProductDesc, Qty, Status, CreatedAt, EditedAt
    FROM tbl_CrmSales WITH (NOLOCK) 
    WHERE id = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCrmSales]    Script Date: 04/07/2024 01.25.38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Stored Procedure UPDATE/EDIT
CREATE PROC [dbo].[sp_UpdateCrmSales]
(
    @id INT,
    @SaleOrder NVARCHAR(50),
    @SaleItem NVARCHAR(50),
    @WorkOrder NVARCHAR(50),
    @Product NVARCHAR(50),
    @ProductDesc NVARCHAR(255),
    @Qty DECIMAL(18, 0),
    @Status NVARCHAR(50)
)
AS
BEGIN
    DECLARE @RowCount INT = 0
    BEGIN TRY
        SET @RowCount = (SELECT COUNT(1) FROM tbl_CrmSales WITH (NOLOCK) WHERE id = @id)
        IF (@RowCount > 0)
        BEGIN
            BEGIN TRAN
                UPDATE tbl_CrmSales
                SET SaleOrder = @SaleOrder,
                    SaleItem = @SaleItem,
                    WorkOrder = @WorkOrder,
                    Product = @Product,
                    ProductDesc = @ProductDesc,
                    Qty = @Qty,
                    Status = @Status
                WHERE id = @id;
            COMMIT TRAN
        END
    END TRY
    BEGIN CATCH
        ROLLBACK TRAN
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        THROW 50000, @ErrorMessage, 1;
    END CATCH
END;
GO
USE [master]
GO
ALTER DATABASE [db_CrmLeads] SET  READ_WRITE 
GO
