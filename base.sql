USE [master]
GO
/****** Object:  Database [ComputerFirm]    Script Date: 12/03/2013 05:52:29 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ComputerFirm')
BEGIN
CREATE DATABASE [ComputerFirm] ON  PRIMARY 
( NAME = N'ComputerFirm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ComputerFirm.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ComputerFirm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ComputerFirm_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [ComputerFirm] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ComputerFirm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ComputerFirm] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ComputerFirm] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ComputerFirm] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ComputerFirm] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ComputerFirm] SET ARITHABORT OFF
GO
ALTER DATABASE [ComputerFirm] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ComputerFirm] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ComputerFirm] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ComputerFirm] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ComputerFirm] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ComputerFirm] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ComputerFirm] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ComputerFirm] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ComputerFirm] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ComputerFirm] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ComputerFirm] SET  DISABLE_BROKER
GO
ALTER DATABASE [ComputerFirm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ComputerFirm] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ComputerFirm] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ComputerFirm] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ComputerFirm] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ComputerFirm] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ComputerFirm] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ComputerFirm] SET  READ_WRITE
GO
ALTER DATABASE [ComputerFirm] SET RECOVERY FULL
GO
ALTER DATABASE [ComputerFirm] SET  MULTI_USER
GO
ALTER DATABASE [ComputerFirm] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ComputerFirm] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ComputerFirm', N'ON'
GO
USE [ComputerFirm]
GO
/****** Object:  ForeignKey [Relationship_484]    Script Date: 12/03/2013 05:52:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����]'))
ALTER TABLE [dbo].[�����] DROP CONSTRAINT [Relationship_484]
GO
/****** Object:  ForeignKey [���������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND parent_object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
ALTER TABLE [dbo].[���������_�������] DROP CONSTRAINT [���������]
GO
/****** Object:  ForeignKey [R_23]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] DROP CONSTRAINT [R_23]
GO
/****** Object:  ForeignKey [R_24]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] DROP CONSTRAINT [R_24]
GO
/****** Object:  ForeignKey [Relationship_456]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] DROP CONSTRAINT [Relationship_456]
GO
/****** Object:  ForeignKey [��������_���]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[��������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] DROP CONSTRAINT [��������_���]
GO
/****** Object:  ForeignKey [�����������_���]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[�����������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] DROP CONSTRAINT [�����������_���]
GO
/****** Object:  ForeignKey [���������_�]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������_�]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] DROP CONSTRAINT [���������_�]
GO
/****** Object:  ForeignKey [������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[������]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_�����]'))
ALTER TABLE [dbo].[�����������_�����] DROP CONSTRAINT [������]
GO
/****** Object:  ForeignKey [R_16]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_������]'))
ALTER TABLE [dbo].[�����������_������] DROP CONSTRAINT [R_16]
GO
/****** Object:  StoredProcedure [dbo].[GetUserGROUP]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetUserGROUP]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetUserGROUP]
GO
/****** Object:  Table [dbo].[UserAccess]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccess]') AND type in (N'U'))
DROP TABLE [dbo].[UserAccess]
GO
/****** Object:  StoredProcedure [dbo].[������������_������_��_������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[������������_������_��_������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[������������_������_��_������]
GO
/****** Object:  StoredProcedure [dbo].[��������_�����������_�����]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[��������_�����������_�����]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[��������_�����������_�����]
GO
/****** Object:  StoredProcedure [dbo].[�������������_������_��_��������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������������_������_��_��������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������������_������_��_��������]
GO
/****** Object:  StoredProcedure [dbo].[�������_������_�_�����������_������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_������_�_�����������_������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������_������_�_�����������_������]
GO
/****** Object:  StoredProcedure [dbo].[�������������_����������_�������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������������_����������_�������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������������_����������_�������]
GO
/****** Object:  StoredProcedure [dbo].[����������_������������_�������_��_���������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[����������_������������_�������_��_���������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[����������_������������_�������_��_���������]
GO
/****** Object:  View [dbo].[������_�����_��_�����������_������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_�����_��_�����������_������]'))
DROP VIEW [dbo].[������_�����_��_�����������_������]
GO
/****** Object:  View [dbo].[������_�_������_��������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_�_������_��������]'))
DROP VIEW [dbo].[������_�_������_��������]
GO
/****** Object:  Table [dbo].[�����������_������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_������]'))
ALTER TABLE [dbo].[�����������_������] DROP CONSTRAINT [R_16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����������_������]') AND type in (N'U'))
DROP TABLE [dbo].[�����������_������]
GO
/****** Object:  StoredProcedure [dbo].[����������������_�������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[����������������_�������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[����������������_�������]
GO
/****** Object:  StoredProcedure [dbo].[�������_��_���]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_���]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������_��_���]
GO
/****** Object:  StoredProcedure [dbo].[�������_��_�����_����]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_�����_����]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������_��_�����_����]
GO
/****** Object:  View [dbo].[�������_��_�������_���]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_�������_���]'))
DROP VIEW [dbo].[�������_��_�������_���]
GO
/****** Object:  View [dbo].[�������_��_�������_�����]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_�������_�����]'))
DROP VIEW [dbo].[�������_��_�������_�����]
GO
/****** Object:  View [dbo].[���������_�������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
DROP VIEW [dbo].[���������_�������]
GO
/****** Object:  View [dbo].[������_�����������_����������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_�����������_����������]'))
DROP VIEW [dbo].[������_�����������_����������]
GO
/****** Object:  View [dbo].[��������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[��������]'))
DROP VIEW [dbo].[��������]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_��������_���������_������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_��������_���������_������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_��������_���������_������]
GO
/****** Object:  StoredProcedure [dbo].[��������_�����_������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[��������_�����_������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[��������_�����_������]
GO
/****** Object:  Table [dbo].[���������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND type in (N'U'))
DROP TABLE [dbo].[���������]
GO
/****** Object:  StoredProcedure [dbo].[���������_���������_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_���������_�������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[���������_���������_�������]
GO
/****** Object:  StoredProcedure [dbo].[����������������_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[����������������_�������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[����������������_�������]
GO
/****** Object:  View [dbo].[����������_�_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[����������_�_�������]'))
DROP VIEW [dbo].[����������_�_�������]
GO
/****** Object:  View [dbo].[����������_�_����������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[����������_�_����������]'))
DROP VIEW [dbo].[����������_�_����������]
GO
/****** Object:  View [dbo].[�������_��_��������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_��������]'))
DROP VIEW [dbo].[�������_��_��������]
GO
/****** Object:  View [dbo].[����������_�����_�������������_��_������_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[����������_�����_�������������_��_������_�������]'))
DROP VIEW [dbo].[����������_�����_�������������_��_������_�������]
GO
/****** Object:  StoredProcedure [dbo].[��������_���������_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[��������_���������_�������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[��������_���������_�������]
GO
/****** Object:  StoredProcedure [dbo].[���������_�_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_�_�������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[���������_�_�������]
GO
/****** Object:  StoredProcedure [dbo].[�����_��������_������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����_��������_������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�����_��������_������]
GO
/****** Object:  View [dbo].[�����_�����]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�����_�����]'))
DROP VIEW [dbo].[�����_�����]
GO
/****** Object:  StoredProcedure [dbo].[������_������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[������_������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[������_������]
GO
/****** Object:  Table [dbo].[���������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND type in (N'U'))
DROP TABLE [dbo].[���������]
GO
/****** Object:  Table [dbo].[�����������_�����]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[������]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_�����]'))
ALTER TABLE [dbo].[�����������_�����] DROP CONSTRAINT [������]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����������_�����]') AND type in (N'U'))
DROP TABLE [dbo].[�����������_�����]
GO
/****** Object:  Table [dbo].[�������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[��������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] DROP CONSTRAINT [��������_���]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[�����������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] DROP CONSTRAINT [�����������_���]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������_�]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] DROP CONSTRAINT [���������_�]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������]') AND type in (N'U'))
DROP TABLE [dbo].[�������]
GO
/****** Object:  Table [dbo].[���������_�������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND parent_object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
ALTER TABLE [dbo].[���������_�������] DROP CONSTRAINT [���������]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_�������]') AND type in (N'U'))
DROP TABLE [dbo].[���������_�������]
GO
/****** Object:  Table [dbo].[������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[������]') AND type in (N'U'))
DROP TABLE [dbo].[������]
GO
/****** Object:  Table [dbo].[�����_�����_���������]    Script Date: 12/03/2013 05:52:31 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] DROP CONSTRAINT [R_23]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] DROP CONSTRAINT [R_24]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] DROP CONSTRAINT [Relationship_456]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]') AND type in (N'U'))
DROP TABLE [dbo].[�����_�����_���������]
GO
/****** Object:  Table [dbo].[���������_�����]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_�����]') AND type in (N'U'))
DROP TABLE [dbo].[���������_�����]
GO
/****** Object:  StoredProcedure [dbo].[�������_����_���������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_����_���������]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������_����_���������]
GO
/****** Object:  View [dbo].[�������_����_��_���������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_����_��_���������]'))
DROP VIEW [dbo].[�������_����_��_���������]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_������������_����������_�����]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_������������_����������_�����]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_������������_����������_�����]
GO
/****** Object:  View [dbo].[Max_����_��_����������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Max_����_��_����������]'))
DROP VIEW [dbo].[Max_����_��_����������]
GO
/****** Object:  View [dbo].[������_���_��������]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_���_��������]'))
DROP VIEW [dbo].[������_���_��������]
GO
/****** Object:  StoredProcedure [dbo].[�������_�����]    Script Date: 12/03/2013 05:52:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_�����]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[�������_�����]
GO
/****** Object:  Table [dbo].[�����]    Script Date: 12/03/2013 05:52:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����]'))
ALTER TABLE [dbo].[�����] DROP CONSTRAINT [Relationship_484]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����]') AND type in (N'U'))
DROP TABLE [dbo].[�����]
GO
/****** Object:  Table [dbo].[�����]    Script Date: 12/03/2013 05:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[�����](
	[ID_������] [nvarchar](20) NOT NULL,
	[��������_������] [nvarchar](150) NOT NULL,
	[���������] [nvarchar](75) NOT NULL,
	[����������_�����] [int] NULL,
	[����] [money] NULL,
	[����������_�������] [int] NULL,
	[����_��������] [int] NULL,
	[���_����������_������] [int] NULL,
 CONSTRAINT [XPK�����] PRIMARY KEY CLUSTERED 
(
	[ID_������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF3010', N'��� A4 Canon i-SENSYS MF3010 (���)', N'�����������_��������_���', 18, 1880500.0000, 9, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF4410', N'��� A4 Canon i-SENSYS MF4410 (���)', N'�����������_��������_���', 15, 2172000.0000, 6, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF4450', N'��� A4 Canon i-SENSYS MF4450 (���)', N'�����������_��������_���', 13, 2443000.0000, 7, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF4550D', N'��� A4 Canon i-SENSYS MF4550D (���/����)', N'�����������_��������_���', 12, 2359500.0000, NULL, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF4570DN', N'��� A4 Canon i-SENSYS MF4570DN (���/����)', N'�����������_��������_���', 21, 3405500.0000, 12, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF4730', N'��� A4 Canon i-SENSYS MF4730 (���)', N'�����������_��������_���', 8, 2276000.0000, 5, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF4750', N'��� A4 Canon i-SENSYS MF4750 (���/����)', N'�����������_��������_���', 22, 2784500.0000, 13, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'COCAMF5940DN', N'��� A4 Canon i-SENSYS MF5940DN (���/����)', N'�����������_��������_���', 15, 7524500.0000, 9, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHP4844', N'�������� C4844AE HP', N'���������_���������', 16, 429000.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHP51645A', N'�������� 51645A HP', N'���������_���������', 10, 392000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHP6656ae', N'�������� C6656AE HP', N'���������_���������', 8, 257500.0000, 2, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHP6657ae', N'�������� C6657AE HP', N'���������_���������', 23, 422000.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC4092A', N'�������� C4092A HP', N'���������_���������', 20, 764000.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC6578AE', N'�������� C6578A HP', N'���������_���������', 14, 716500.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC6578DE', N'�������� C6578D HP', N'���������_���������', 16, 420000.0000, 11, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC7115A', N'�������� C7115A HP', N'���������_���������', 11, 832000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC7115X', N'�������� C7115X HP', N'���������_���������', 14, 886000.0000, 12, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8719HE', N'�������� C8719HE  HP', N'���������_���������', 23, 393000.0000, 13, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8727A', N'�������� C8727AE  HP', N'���������_���������', 10, 240000.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8728A', N'�������� C8728AE  HP', N'���������_���������', 23, 281000.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8765HE', N'�������� C8765HE  HP', N'���������_���������', 17, 278500.0000, 9, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8766HE', N'�������� C8766HE  HP', N'���������_���������', 13, 316000.0000, 9, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8767HE', N'�������� C8767HE  HP', N'���������_���������', 9, 396000.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8771HE', N'�������� C8771HE  HP', N'���������_���������', 7, 142000.0000, 3, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8772HE', N'�������� C8772HE  HP', N'���������_���������', 15, 142000.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC8773HE_', N'�������� C8773HE  HP', N'���������_���������', 8, 141500.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9351AE', N'�������� C9351AE  HP', N'���������_���������', 9, 199500.0000, 9, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9352AE', N'�������� C9352AE  HP', N'���������_���������', 9, 230500.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9361HE', N'�������� C9361HE  HP', N'���������_���������', 11, 252000.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9362HE', N'�������� C9362HE  HP', N'���������_���������', 14, 202000.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9363HE', N'�������� C9363HE  HP', N'���������_���������', 24, 449000.0000, 11, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9364HE', N'�������� C9364HE  HP', N'���������_���������', 13, 252000.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPC9369HE', N'�������� C9369HE  HP', N'���������_���������', 13, 361500.0000, 2, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCB335A', N'�������� CB335HE  HP', N'���������_���������', 12, 204500.0000, 11, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCB336HE', N'�������� HP 140XL (CB336HE) ������', N'���������_���������', 15, 395000.0000, 13, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCB337H', N'�������� CB337H  HP', N'���������_���������', 5, 240000.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCB338HE', N'�������� �� 141XL (CB338HE) tri-colour magenta, yellow, cyan', N'���������_���������', 4, 460500.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCB435A', N'�������� CB435A  HP', N'���������_���������', 8, 740000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCB436A', N'�������� CB436A  HP', N'���������_���������', 9, 801500.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC530HE', N'�������� CC530A HP', N'���������_���������', 17, 1463500.0000, 10, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC531HE', N'�������� CC531HE HP', N'���������_���������', 21, 1257500.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC532HE', N'�������� CC532HE HP', N'���������_���������', 11, 1257500.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC533HE', N'�������� CC533HE HP', N'���������_���������', 11, 1268500.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC640HE', N'�������� CC640HE  HP', N'���������_���������', 12, 192500.0000, 3, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC641HE', N'�������� CC641HE  HP', N'���������_���������', 24, 386000.0000, 9, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC643HE', N'�������� CC643HE  HP', N'���������_���������', 12, 233500.0000, 2, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCC644HE', N'�������� CC644HE  HP', N'���������_���������', 10, 438000.0000, 9, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCD972AE', N'�������� CD972AE HP (�920XL) �������', N'���������_���������', 12, 154500.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCD973AE', N'�������� CD973AE HP (�920XL) ���������', N'���������_���������', 8, 154500.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCD974AE', N'�������� CD974AE HP (�920XL) ������', N'���������_���������', 15, 154500.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCD975AE', N'�������� CD975AE HP (�920XL) ������', N'���������_���������', 24, 358000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE255A', N'�������� CE255A HP', N'���������_���������', 11, 1521000.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE278A', N'�������� CE278A  HP', N'���������_���������', 22, 843500.0000, 12, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE285A', N'�������� CE285A  HP', N'���������_���������', 11, 741000.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE310A', N'�������� CE310A HP Black (������)', N'���������_���������', 6, 592000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE311A', N'�������� CE311A HP Cyan (�������)', N'���������_���������', 7, 617000.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE312A', N'�������� CE312A HP Yellow (������)', N'���������_���������', 20, 617000.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE313A', N'�������� CE313A HP Purple (����������)', N'���������_���������', 9, 642000.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE505A', N'�������� CE505A HP', N'���������_���������', 7, 907500.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCE505X', N'�������� CE505X HP', N'���������_���������', 9, 1603000.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCF280X', N'�������� CF280X  HP', N'���������_���������', 14, 1938000.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCH561HE', N'�������� HP 122 (CH561HE) ������', N'���������_���������', 15, 126000.0000, 12, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCH562HE', N'�������� HP 122 (CH562HE) �������', N'���������_���������', 24, 139500.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCH563HE', N'�������� HP 122XL (CH563HE) ������ - �����������', N'���������_���������', 14, 357000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPCH564HE', N'�������� HP 122XL (CH564HE) �������- �����������', N'���������_���������', 16, 348000.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ1338A', N'�������� Q1338A  HP', N'���������_���������', 23, 1709500.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ2612A', N'�������� Q2612A  HP', N'���������_���������', 14, 808000.0000, 14, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ2613A', N'�������� Q2613A  HP', N'���������_���������', 13, 880500.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ2613X', N'�������� Q2613X  HP', N'���������_���������', 22, 1038000.0000, 13, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ5949A', N'�������� Q5949A  HP', N'���������_���������', 17, 881500.0000, 12, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ5949X', N'�������� Q5949X  HP', N'���������_���������', 7, 1667500.0000, 6, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ6000A', N'�������� Q6000A HP', N'���������_���������', 25, 917000.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ6001A', N'�������� Q6001A HP', N'���������_���������', 12, 987500.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ6002A', N'�������� Q6002A HP', N'���������_���������', 18, 1002500.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ6003A', N'�������� Q6003A HP', N'���������_���������', 10, 990500.0000, 10, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ7551A', N'�������� Q7551A  HP', N'���������_���������', 21, 1374500.0000, 10, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ7551X', N'�������� Q7551X  HP', N'���������_���������', 11, 2016000.0000, 9, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ7553A', N'�������� Q7553A  HP', N'���������_���������', 11, 872000.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRHPQ7553X', N'�������� Q7553X  HP', N'���������_���������', 12, 1623500.0000, 11, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSCLT-M406S', N'��������  Samsung CLT-M406S ��������� ��� ����� CLP-360 � CLX-3300 �� 1000���', N'���������_���������', 9, 608500.0000, 3, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSCLT-Y406S', N'��������  Samsung CLT-Y406S ������ ��� ����� CLP-360 � CLX-3300 �� 1000���', N'���������_���������', 10, 638500.0000, 5, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSCLT-�406S', N'��������  Samsung CLT-�406S ������� ��� ����� CLP-360 � CLX-3300 �� 1000���', N'���������_���������', 14, 585500.0000, 9, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSM1210D3', N'�������� Samsung ML-1210D3 ��� ML-1010/1210/1220M/1250/1430  2500���.', N'���������_���������', 12, 633000.0000, 5, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSM1610D2', N'�������� Samsung ML-1610D2 ��� ML-1610/1615  2000���.', N'���������_���������', 17, 638500.0000, 12, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSM2010D3', N'�������� Samsung ML-2010D3', N'���������_���������', 15, 849000.0000, 13, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSM4100D3', N'�������� Samsung SCX-4100 D3', N'���������_���������', 13, 717500.0000, 4, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSM4200A', N'��������  Samsung SCX-D4200A ��� SCX-4200/4220  3000���.', N'���������_���������', 15, 802500.0000, 5, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMC407S', N'�������� Samsung CLT-C407S ��� CLP-320/320N/325/ CLX-3185/3185N/3185FN  1000���.', N'���������_���������', 3, 494000.0000, 2, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMC409S', N'�������� Samsung CLT-C409S ��� CLP-310/315/ CLX-3170/3175  1000���.', N'���������_���������', 20, 568500.0000, 7, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD105L', N'��������  Samsung MLT-D105L ��� SCX-46��/ML-19��/ML-25xx/SF-650  2500���', N'���������_���������', 12, 934500.0000, 4, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD105S', N'��������  Samsung MLT-D105S ��� SCX-46��/ML-19��/ML-25xx/SF-650  1500���', N'���������_���������', 5, 833000.0000, 3, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD108S', N'��������  Samsung MLT-D108S ��� �����  ML-1640/2240  2500���.', N'���������_���������', 12, 664500.0000, 6, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD109S', N'��������  Samsung MLT-D109S ��� SCX-4300  2000���', N'���������_���������', 13, 602000.0000, 10, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD1630A', N'�������� Samsung ML-D1630A', N'���������_���������', 9, 872000.0000, 5, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD205E', N'��������  Samsung MLT-D205E ��� ML-3710D/3710ND / SCX-5637FR  10000���.', N'���������_���������', 19, 2057000.0000, 12, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD205L', N'��������  Samsung MLT-D205L ��� ML-3710D/3710ND / SCX-5637FR  5000���.', N'���������_���������', 14, 1350000.0000, 10, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD205S', N'��������  Samsung MLT-D205S ��� ML-3310D/3310ND/3710D/3710ND/SCX-4833FD/4833FR/5637FR  2000���', N'���������_���������', 19, 629000.0000, 14, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD209L', N'��������  Samsung MLT-D209L ��� ML-2855ND/SCX-4824FN/4828FN  5000���.', N'���������_���������', 16, 1315000.0000, 12, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMD209S', N'��������  Samsung MLT-D209S ��� ML-2855ND/SCX-4824FN/4828FN  2000���.', N'���������_���������', 8, 891000.0000, 4, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMK407S', N'�������� Samsung CLT-K407S ��� CLP-320/320N/325/ CLX-3185/3185N/3185FN  1500���.', N'���������_���������', 10, 554500.0000, 6, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMK409S', N'�������� Samsung CLT-K409S ��� CLP-310/315/ CLX-3170/3175  1500���.', N'���������_���������', 25, 656000.0000, 13, 0, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMLD2850A', N'�������� Samsung ML-D2850A', N'���������_���������', 18, 754000.0000, 8, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMLD3470B', N'�������� Samsung ML-D3470B', N'���������_���������', 19, 1975500.0000, 6, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMLT101S', N'��������  Samsung MLT-D101S ��� ����� ML-216X/ SCX-340X �� 1500���', N'���������_���������', 9, 1070500.0000, 8, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMLT104S', N'��������  Samsung MLT-D104S ��� ML-1660/1665/SCX-3200/3205/3207  1000���.', N'���������_���������', 24, 851500.0000, 15, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMLT104X', N'��������  Samsung MLT-D104X ��� ML-1660/1665/SCX-3200/3205/3207  700���.', N'���������_���������', 16, 503000.0000, 7, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMLTD117S', N'��������  Samsung MLT-D117S ��� SCX-4650/4655  2500���.', N'���������_���������', 5, 988500.0000, 2, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMM407S', N'�������� Samsung CLT-M407S ��� CLP-320/320N/325/ CLX-3185/3185N/3185FN  1000���.', N'���������_���������', 8, 496500.0000, 2, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMM409S', N'�������� Samsung CLT-M409S ��� CLP-310/315/ CLX-3170/3175  1000���.', N'���������_���������', 24, 532500.0000, 10, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMMLT-D119S', N'�������� Samsung MLT-D119S ��� ML-1615/2015/2510/2570 SCX-4321/4521F', N'���������_���������', 15, 618000.0000, 12, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMY407S', N'�������� Samsung CLT-Y407S ��� CLP-320/320N/325/ CLX-3185/3185N/3185FN  1000���.', N'���������_���������', 7, 446000.0000, 5, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'CRSMY409S', N'�������� Samsung CLT-Y409S ��� CLP-310/315/ CLX-3170/3175  1000���.', N'���������_���������', 10, 510000.0000, 6, 0, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS2103', N'D-Link ������� ������ DCS-2103', N'IP-������', 7, 1110000.0000, 19, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS2130', N'D-Link ������� ������ DCS-2130', N'IP-������', 11, 1404000.0000, 7, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS2132L', N'D-Link ������� ������ DCS-2132L', N'IP-������', 15, 1723000.0000, 13, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS2210', N'D-Link ������� ������ DCS-2103', N'IP-������', 5, 2276000.0000, NULL, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS2230', N'D-Link ������� ������ DCS-2230', N'IP-������', 4, 2151000.0000, 1, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS2310L', N'D-Link ������� ������ DCS-2310L', N'IP-������', 8, 2412000.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS5222L', N'D-Link ������� ������ DCS-5222L', N'IP-������', 9, 2412000.0000, NULL, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS7110', N'D-Link ������� ������ DCS-7110', N'IP-������', 12, 3674500.0000, 3, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS930L', N'D-Link ������� ������ DCS-930L', N'IP-������', 17, 539000.0000, 10, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS932L', N'D-Link ������� ������ DCS-932L', N'IP-������', 21, 738000.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMDLDCS942L', N'D-Link ������� ������ DCS-942L', N'IP-������', 11, 1085500.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTNIP312', N'TrendNet ������� ������ TV-IP312', N'IP-������', 15, 1888000.0000, 5, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTNIP512WN', N'TrendNet ������� ������ TV-IP512WN', N'IP-������', 24, 1945000.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTPLSC3130', N'TP-Link ������� ������ TL-SC3130', N'IP-������', 24, 1025000.0000, 9, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTPLSC3130G', N'TP-Link ������� ������ TL-SC3130G', N'IP-������', 12, 1147000.0000, 2, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTPLSC3171', N'TP-Link ������� ������ TL-SC3171', N'IP-������', 10, 1337500.0000, 9, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTPLSC3430', N'TP-Link ������� ������ TL-SC3430', N'IP-������', 12, 1376500.0000, 5, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'IPCAMTPLSC4171G', N'TP-Link ������� ������ TL-SC4171G', N'IP-������', 8, 2722500.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMCLP-365', N' Samsung Color CLP-365', N'�������_��������_��������', 14, 2019500.0000, 10, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMCLP-365W', N' Samsung Color CLP-365W', N'�������_��������_��������', 19, 2474500.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMCLP-415N', N' Samsung Color CLP-415N', N'�������_��������_��������', 16, 2950000.0000, 12, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMML2160', N' Samsung ML-2160/XEV ', N'�����������_��������_��������', 15, 922500.0000, 5, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMML-2950ND', N' Samsung ML-2950ND(R) ', N'�����������_��������_��������', 15, 1737500.0000, 13, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMML-2955DW', N' Samsung ML-2955DW ', N'�����������_��������_��������', 13, 2006000.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX3400', N'��� A4 Samsung SCX-3400/XEV (���)', N'�����������_��������_���', 7, 1555000.0000, 3, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX3400F', N'��� A4 Samsung SCX-3400F/XEV (���)', N'�����������_��������_���', 7, 2130000.0000, 7, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX3405F', N'��� A4 Samsung SCX-3405F/XEV (���)', N'�����������_��������_���', 15, 2087000.0000, 7, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX-3405FW', N'��� A4 Samsung SCX-3405FW/XEV (���)', N'�����������_��������_���', 13, 2359500.0000, 2, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX4650N', N'��� A4 Samsung SCX-4650N/XEV (���)', N'�����������_��������_���', 25, 2286500.0000, 8, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX4655FN', N'��� A4 Samsung SCX-4655FN/XEV (���)', N'�����������_��������_���', 7, 2380500.0000, 5, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX4727FD', N'��� A4 Samsung SCX-4727FD (���, ����)', N'�����������_��������_���', 11, 2547500.0000, 4, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX4833FD', N'��� A4 Samsung SCX-4833FD/XEV (���)', N'�����������_��������_���', 10, 3664000.0000, 8, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'MFSMSCX4833FR', N'��� A4 Samsung SCX-4833FR/XEV (���)', N'�����������_��������_���', 18, 3974500.0000, 7, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB1530RUB', N'��� Panasonic KX-MB1530RUB   ���, ����/PC-����) USB2.0', N'�����������_��������_���', 15, 2276000.0000, 15, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB2000RUB', N'��� Panasonic KX-MB2000RUB ���', N'�����������_��������_���', 23, 1800000.0000, 5, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB2000RUW', N'��� Panasonic KX-MB2000RUW ���', N'�����������_��������_���', 18, 1802000.0000, 15, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB2020RU', N'��� Panasonic KX-MB2020RU ���,PC-����, ���)', N'�����������_��������_���', 9, 1985000.0000, 6, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB2020RUB', N'��� Panasonic KX-MB2020RUB ���,PC-����, ���)', N'�����������_��������_���', 15, 1955500.0000, 2, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB2030RU', N'��� Panasonic KX-MB2030RU ���, PC-����, ���)', N'�����������_��������_���', 17, 2763500.0000, 3, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PANASKX-MB2051RUB', N'��� Panasonic KX-MB2051RUB   ��� ����������� �� (30 ���.), AOH', N'�����������_��������_���', 14, 2805000.0000, 4, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRCNLBP6020B', N'Canon I-SENSYS LBP6020B', N'�����������_��������_��������', 10, 1147000.0000, 10, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRCNLBP6020W', N'Canon I-SENSYS LBP6020', N'�����������_��������_��������', 21, 1135500.0000, 10, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRCNLBP7100Cn', N' Canon I-SENSYS LBP7100Cn', N'�������_��������_��������', 5, 1980500.0000, 3, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRCNLBP7110Cw', N' Canon I-SENSYS LBP7110Cw ', N'�������_��������_��������', 12, 2474500.0000, 1, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJ2035', N'HP LaserJet P2035 (CE461A)', N'�����������_��������_��������', 11, 2380500.0000, 9, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJ3015D', N'HP LaserJet P3015D (CE526A)', N'�����������_��������_��������', 11, 5982500.0000, 5, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJ3015DN', N'HP LaserJet P3015DN (CE528A)', N'�����������_��������_��������', 12, 7090000.0000, 11, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJCM251n', N' HP Color LaserJet Pro M251n (CF146A)', N'�������_��������_��������', 13, 2795000.0000, 10, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJCM351a', N' HP Color LaserJet Pro 300 M351a (CE955A)', N'�������_��������_��������', 9, 3705500.0000, 5, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJCM451nw', N' HP Color LaserJet Pro M451nw (CE956A)', N'�������_��������_��������', 19, 4668000.0000, 12, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1132', N'M�� A4 HP LaserJet Pro M1132 (��� A4) - CE847A', N'�����������_��������_���', 22, 1889000.0000, 3, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1132_RU', N'M�� A4 HP LaserJet Pro M1132 RU (��� A4) - CE847A#ACB', N'�����������_��������_���', 24, 1977500.0000, 7, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1212NF', N'M�� A4 HP LaserJet Pro M1212nf (��� A4) - CE841A', N'�����������_��������_���', 13, 2370000.0000, 12, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1212NF_RU', N'M�� A4 HP LaserJet Pro M1212nf RU (��� A4) - CE841A#ACB', N'�����������_��������_���', 10, 2600000.0000, 5, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1214MFH', N'M�� �4 HP LaserJet M1214nfh  (���, �������) (CE842A)', N'�����������_��������_���', 12, 2701500.0000, 6, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1217NFW_RU', N'M�� A4 HP LaserJet Pro M1217nfw RU ��� A4,  CE844A#ACB', N'�����������_��������_���', 16, 2857000.0000, 11, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1536DNF', N'M�� �4 HP LaserJet M1536dnf MFP (���, �������) (CE538A)', N'�����������_��������_���', 6, 3240000.0000, 6, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJM1536DNF_RU', N'M�� A4 HP LaserJet Pro M1536dnf RU (��� A4 CE538A#ACB', N'�����������_��������_���', 21, 3384500.0000, 13, 12, 5)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJP1102', N'HP LaserJet Pro P1102 (CE651A)', N'�����������_��������_��������', 23, 1147000.0000, 7, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJP1102_RU', N'HP LaserJet Pro P1102 RU CE651A#ACB', N'�����������_��������_��������', 7, 1233000.0000, 6, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJP1102W_CE658A', N'HP LaserJet Pro P1102W CE658A', N'�����������_��������_��������', 9, 1397000.0000, 3, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJPM401a', N'HP LaserJet Pro 400 M401a (CF270A)', N'�����������_��������_��������', 14, 2670500.0000, 9, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJPM401D', N' HP LaserJet Pro 400 M401d (CF274A)  ������ P2055D', N'�����������_��������_��������', 12, 3002000.0000, 5, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRHPLJPM401DN', N' HP LaserJet Pro 400 M401dn (CF278A)  ������ P2055DN', N'�����������_��������_��������', 17, 3488000.0000, 12, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRSM3310D', N' Samsung ML-3310D/XEV ', N'�����������_��������_��������', 3, 2172000.0000, 1, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRSM3310ND', N' Samsung ML-3310ND/XEV ', N'�����������_��������_��������', 20, 2328500.0000, 7, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'PRSM3710ND', N' Samsung ML-3710ND/XEV ', N'�����������_��������_��������', 12, 3177500.0000, 4, 12, 1)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWin8Pro32', N'FQC-05936 Windows 8 Pro 32bit Russian OEI', N'������������_�������', 12, 1508500.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWin8Pro64', N'FQC-05972 Windows 8 Pro 64bit Russian OEI', N'������������_�������', 18, 1544500.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWin8SL32', N'4HR-00053 Windows 8 SL 32bit Russian OEI', N'������������_�������', 17, 875000.0000, 12, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWin8SL64', N'4HR-00066 Windows 8 SL 64bit Russian OEI', N'������������_�������', 25, 875000.0000, 7, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinHB7_32bit', N'F2C-00884 Win Home Basic 7 SP1 32-bit Russian 1pk DSP OEI DVD', N'������������_�������', 24, 867500.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinHB7_64bit', N'F2C-00886 Win Home Basic 7 SP1 64-bit Russian CIS and Georgia 1pk DSP OEI DVD', N'������������_�������', 12, 868500.0000, 5, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinHP7_32bit', N'Win Home Prem 7 32-bit Russian Single package DSP OEI DVD (GFC-00642 / GFC-02089)', N'������������_�������', 24, 1036000.0000, 11, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinHP7_64bit', N'GFC-02091 Win Home Prem 7 SP1 64-bit Russian CIS and Georgia 1pk DSP OEI DVD', N'������������_�������', 25, 1065000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinHP7_box', N'Windows Home Prem 7 Russian DVD SP1 (GFC-02398)', N'������������_�������', 13, 1560500.0000, 8, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinPro7_32bit', N'FQC-04671Win Pro 7 SP1 32-bit Russian CIS and Georgia 1pk DSP OEI DVD)', N'������������_�������', 9, 1502000.0000, 4, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinPro7_64bit', N'FQC-04673 Win Pro 7 SP1 64-bit Russian CIS and Georgia 1pk DSP OEI DVD', N'������������_�������', 7, 1520000.0000, NULL, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinPro7_box', N'FQC-00265 Windows Pro 7 Russian DVD  / FQC-05347 Win Pro 7 Russian Russia Only DVD', N'������������_�������', 22, 2433000.0000, 13, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWinUlt7_64bit', N'�� MS Win Ultimate 7 SP1 64-bit Russian 1pk DSP OEI DVD (GLC-01860)', N'������������_�������', 14, 1957500.0000, 14, 12, NULL)
INSERT [dbo].[�����] ([ID_������], [��������_������], [���������], [����������_�����], [����], [����������_�������], [����_��������], [���_����������_������]) VALUES (N'SFMSWS2008_R2', N'P73-05121 Windows Server Std 2008 R2 w/SP1 x64 Russian 1pk DSP OEI DVD 1-4CPU 5 Clt', N'������������_�������', 16, 7266000.0000, 8, 12, NULL)
/****** Object:  StoredProcedure [dbo].[�������_�����]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_�����]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[�������_�����]
@ID_������ nvarchar(20)
AS
BEGIN
	Delete from �����
		Where (ID_������=@ID_������)
END
' 
END
GO
/****** Object:  View [dbo].[������_���_��������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_���_��������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[������_���_��������]
AS
SELECT     TOP (100) PERCENT ��������_������, ����
FROM         dbo.�����
WHERE     (����_�������� = 0) OR
                      (����_�������� IS NULL)
ORDER BY ��������_������
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'������_���_��������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2145
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'������_���_��������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'������_���_��������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'������_���_��������'
GO
/****** Object:  View [dbo].[Max_����_��_����������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Max_����_��_����������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Max_����_��_����������]
AS
SELECT     MAX(����) AS [Max ����], ���������
FROM         dbo.�����
GROUP BY ���������
'
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_������������_����������_�����]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_������������_����������_�����]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_������������_����������_�����]
AS
BEGIN
Declare price cursor local FORWARD_ONLY
	For
	Select
				[��������_������],
				[���������],
				ISNull([����������_�����],0) as "����������_�����",
				IsNull([����������_�������],0) as "����������_�������",
				ISNull([����������_�����],0)+IsNull([����������_�������],0) as "�����_����������",
				[����],
				[����_��������],
				[����]*(ISNull([����������_�����],0)+IsNull([����������_�������],0)) as "���������� ���������" 
		   From [�����]
		   Order by  [���������] ASC
  
 Open price  
   While (@@FETCH_STATUS=0)
	 BEGIN
		Fetch next from price 

	 END
CLOSE price
DEALLOCATE price
END
' 
END
GO
/****** Object:  View [dbo].[�������_����_��_���������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_����_��_���������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[�������_����_��_���������]
AS
SELECT     ���������, AVG(����) AS [������� ����]
FROM         dbo.�����
GROUP BY ���������
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'�������_����_��_���������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 125
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_����_��_���������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'�������_����_��_���������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_����_��_���������'
GO
/****** Object:  StoredProcedure [dbo].[�������_����_���������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_����_���������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[�������_����_���������]
	@���������_������ [nvarchar](75)
AS
BEGIN
	SELECT AVG([�����].[����]) FROM dbo.[�����] WHERE (@���������_������=���������)
END
' 
END
GO
/****** Object:  Table [dbo].[���������_�����]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_�����]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[���������_�����](
	[���_����������_������] [int] IDENTITY(1,1) NOT NULL,
	[��������_����������_������] [nvarchar](50) NOT NULL,
	[�����] [nvarchar](100) NULL,
	[�������] [nvarchar](20) NULL,
 CONSTRAINT [XPK���������_�����] PRIMARY KEY CLUSTERED 
(
	[���_����������_������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[���������_�����] ON
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (1, N'���� (Asus)', N'������, ��. ������������, 12', N'(0222) 25-91-05')
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (2, N'���� "������� ������(Samsung)', N'������, ��. ���������, 29�, 12', N'(0222) 31-05-98')
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (3, N'��� (Sony)', N'�. �����, ��. ������ 26', N'(017) 210-56-78 ')
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (4, N'���"������������"', N'�. �����, ��. ������, 1', N'(017) 284-42-00')
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (5, N'��� "���������� � ��������� (HP)"', N'�. �����, 1-�� ������������ ���, �. 51, ����. 5', N' (017) 210 1146')
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (6, N'���� ������̻', N'�����, ��-� ��������, 25', N'+375 (17) 283-22-45 ')
INSERT [dbo].[���������_�����] ([���_����������_������], [��������_����������_������], [�����], [�������]) VALUES (7, N'�����. ������. D-link Inc.', N'�����, ��-� �������������,�.169,��.801', N'���.(17)218-13-61')
SET IDENTITY_INSERT [dbo].[���������_�����] OFF
/****** Object:  Trigger [update_������_���_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[update_������_���_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[update_������_���_������]
   ON  [dbo].[�����]
   AFTER  INSERT,UPDATE
AS 
BEGIN
if (select ���_����������_������ from inserted) is not null
If not Exists (select *
			 from inserted inner join ���������_�����
			 on (inserted.���_����������_������=���������_�����.���_����������_������)
		  ) 
		  
 begin
		declare @ID_������ nvarchar(20)
		set @ID_������ = (select ID_������ from inserted)

  update ����� 
	Set ���_����������_������=null
		Where (@ID_������=ID_������)
	Raiserror(''��������� ����� ��� ������� ������ �� ��������.'',1,16)
end
END
'
GO
/****** Object:  Trigger [tU_���������_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_���������_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_���������_�����] ON [dbo].[���������_�����] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ���������_����� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins���_����������_������ int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���������_�����  ����� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="000190bd", PARENT_OWNER="", PARENT_TABLE="���������_�����"
    CHILD_OWNER="", CHILD_TABLE="�����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="Relationship_484", FK_COLUMNS="���_����������_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���_����������_������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @ins���_����������_������ = inserted.���_����������_������
        FROM inserted
      UPDATE �����
      SET
        /*  %JoinFKPK(�����,@ins," = ",",") */
        �����.���_����������_������ = @ins���_����������_������
      FROM �����,inserted,deleted
      WHERE
        /*  %JoinFKPK(�����,deleted," = "," AND") */
        �����.���_����������_������ = deleted.���_����������_������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ���������_����� update because more than one row has been affected.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_���������_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_���������_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_���������_�����] ON [dbo].[���������_�����] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ���������_����� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ���������_�����  ����� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000101b5", PARENT_OWNER="", PARENT_TABLE="���������_�����"
    CHILD_OWNER="", CHILD_TABLE="�����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="Relationship_484", FK_COLUMNS="���_����������_������" */
    IF EXISTS (
      SELECT * FROM deleted,�����
      WHERE
        /*  %JoinFKPK(�����,deleted," = "," AND") */
        �����.���_����������_������ = deleted.���_����������_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ���������_����� because ����� exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Table [dbo].[�����_�����_���������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[�����_�����_���������](
	[���_����������] [int] NOT NULL,
	[����������_��������] [int] NULL,
	[ID_������] [nvarchar](20) NOT NULL,
	[ID_������] [int] IDENTITY(1,1) NOT NULL,
	[����_������] [datetime] NULL,
	[�����_��������_�������] [nvarchar](15) NOT NULL,
 CONSTRAINT [XPK�����_�����_���������] PRIMARY KEY CLUSTERED 
(
	[ID_������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[�����_�����_���������] ON
INSERT [dbo].[�����_�����_���������] ([���_����������], [����������_��������], [ID_������], [ID_������], [����_������], [�����_��������_�������]) VALUES (3, 2, N'CRHP51645A', 2, CAST(0x0000A24A013711CA AS DateTime), N'KB1234567890')
INSERT [dbo].[�����_�����_���������] ([���_����������], [����������_��������], [ID_������], [ID_������], [����_������], [�����_��������_�������]) VALUES (2, 1, N'CRHPC8766HE', 9, CAST(0x0000A25300B2AEF8 AS DateTime), N'KB1234567890')
INSERT [dbo].[�����_�����_���������] ([���_����������], [����������_��������], [ID_������], [ID_������], [����_������], [�����_��������_�������]) VALUES (1, 1, N'PRHPLJCM351a', 10, CAST(0x0000A247013711CA AS DateTime), N'KB1234567890')
INSERT [dbo].[�����_�����_���������] ([���_����������], [����������_��������], [ID_������], [ID_������], [����_������], [�����_��������_�������]) VALUES (4, 4, N'SFMSWinHB7_32bit', 11, CAST(0x0000A25B012A0110 AS DateTime), N'KB1234567890')
INSERT [dbo].[�����_�����_���������] ([���_����������], [����������_��������], [ID_������], [ID_������], [����_������], [�����_��������_�������]) VALUES (6, 4, N'SFMSWinPro7_64bit', 12, CAST(0x0000A265013711CA AS DateTime), N'KB1234567890')
INSERT [dbo].[�����_�����_���������] ([���_����������], [����������_��������], [ID_������], [ID_������], [����_������], [�����_��������_�������]) VALUES (5, 2, N'PANASKX-MB1530RUB', 13, CAST(0x0000A2620131938A AS DateTime), N'KB1234567890')
SET IDENTITY_INSERT [dbo].[�����_�����_���������] OFF
/****** Object:  Table [dbo].[������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[������](
	[���_�������] [nvarchar](20) NULL,
	[����_��������] [datetime] NULL,
	[�����_�������] [nvarchar](100) NULL,
	[�������_��������] [nvarchar](15) NULL,
	[�������_���������] [nvarchar](20) NULL,
	[�����_��������_�������] [nvarchar](15) NOT NULL,
 CONSTRAINT [XPK������] PRIMARY KEY CLUSTERED 
(
	[�����_��������_�������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[������] ([���_�������], [����_��������], [�����_�������], [�������_��������], [�������_���������], [�����_��������_�������]) VALUES (N'�������� �.�', CAST(0x0000787B00000000 AS DateTime), N'������, ��������� 23', N'483249', N'+375259364593', N'KB1234567890')
INSERT [dbo].[������] ([���_�������], [����_��������], [�����_�������], [�������_��������], [�������_���������], [�����_��������_�������]) VALUES (N'������ �.�', CAST(0x00007E7900000000 AS DateTime), N'������, ������� 35', N'278165', N'+375291801723', N'KB2343652452')
INSERT [dbo].[������] ([���_�������], [����_��������], [�����_�������], [�������_��������], [�������_���������], [�����_��������_�������]) VALUES (N'�����', CAST(0x000072F000000000 AS DateTime), N'������', N'464837', N'3264874', N'qw123456789')
/****** Object:  Table [dbo].[���������_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_�������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[���������_�������](
	[���_��������] [int] IDENTITY(1,1) NOT NULL,
	[�����������_�������] [money] NULL,
	[��������������_�����] [money] NULL,
	[����_������] [int] NULL,
	[�����_��������_�������] [nvarchar](15) NOT NULL,
 CONSTRAINT [XPK���������_�������] PRIMARY KEY CLUSTERED 
(
	[���_��������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[���������_�������] ON
INSERT [dbo].[���������_�������] ([���_��������], [�����������_�������], [��������������_�����], [����_������], [�����_��������_�������]) VALUES (10, 230000.0000, 0.0000, 100, N'KB1234567890')
INSERT [dbo].[���������_�������] ([���_��������], [�����������_�������], [��������������_�����], [����_������], [�����_��������_�������]) VALUES (13, 20000.0000, 20000.0000, 2, N'KB1234567890')
SET IDENTITY_INSERT [dbo].[���������_�������] OFF
/****** Object:  Table [dbo].[�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[�������](
	[����] [money] NULL,
	[����������] [int] NULL,
	[ID_������] [nvarchar](20) NOT NULL,
	[���_��������] [int] NULL,
	[���_������] [nvarchar](30) NULL,
	[���_������������_������] [int] NOT NULL,
 CONSTRAINT [XPK�������] PRIMARY KEY CLUSTERED 
(
	[ID_������] ASC,
	[���_������������_������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[�������] ([����], [����������], [ID_������], [���_��������], [���_������], [���_������������_������]) VALUES (2359500.0000, 1, N'COCAMF4550D', 10, N'��������', 10)
INSERT [dbo].[�������] ([����], [����������], [ID_������], [���_��������], [���_������], [���_������������_������]) VALUES (3405500.0000, 1, N'COCAMF4570DN', 10, N'��������', 10)
INSERT [dbo].[�������] ([����], [����������], [ID_������], [���_��������], [���_������], [���_������������_������]) VALUES (7524500.0000, 1, N'COCAMF5940DN', 10, N'�����������', 10)
INSERT [dbo].[�������] ([����], [����������], [ID_������], [���_��������], [���_������], [���_������������_������]) VALUES (832000.0000, 1, N'CRHPC7115A', NULL, N'��������', 4)
INSERT [dbo].[�������] ([����], [����������], [ID_������], [���_��������], [���_������], [���_������������_������]) VALUES (638500.0000, 1, N'CRSM1610D2', NULL, N'��������', 5)
INSERT [dbo].[�������] ([����], [����������], [ID_������], [���_��������], [���_������], [���_������������_������]) VALUES (1147000.0000, 2, N'IPCAMTPLSC3130G', NULL, N'��������', 6)
/****** Object:  Table [dbo].[�����������_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����������_�����]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[�����������_�����](
	[����_�����] [datetime] NOT NULL,
	[�����_��������_����������] [nvarchar](15) NOT NULL,
	[���_������������_������] [int] IDENTITY(1,1) NOT NULL,
	[��������_�����_����������] [nvarchar](20) NOT NULL,
 CONSTRAINT [XPK�����������_�����] PRIMARY KEY CLUSTERED 
(
	[���_������������_������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[�����������_�����] ON
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A1E100000000 AS DateTime), N'KB1532550', 4, N'UI37YFG38FHB3IFN')
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A1E500000000 AS DateTime), N'KB1532550', 5, N'G39VBWRUJ74BF93N')
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A26200000000 AS DateTime), N'KB1532550', 6, N'832TBW875NWFEOW3')
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A1E400000000 AS DateTime), N'KB1532550', 7, N'03BF673L689DS48I')
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A1EE00000000 AS DateTime), N'KB1532550', 8, N'04HBG8WEKG74KRY4')
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A1E100000000 AS DateTime), N'KB1532550', 9, N'9VE67G3IYG238N8W')
INSERT [dbo].[�����������_�����] ([����_�����], [�����_��������_����������], [���_������������_������], [��������_�����_����������]) VALUES (CAST(0x0000A1E200000000 AS DateTime), N'KB1532550', 10, N'1')
SET IDENTITY_INSERT [dbo].[�����������_�����] OFF
/****** Object:  Table [dbo].[���������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[���������](
	[�����_��������_����������] [nvarchar](15) NOT NULL,
	[���_����������] [nvarchar](50) NOT NULL,
	[����_��������] [datetime] NOT NULL,
	[�����_����������] [nvarchar](100) NULL,
	[�������_��������] [varchar](20) NULL,
	[�������_���������] [varchar](20) NULL,
	[���������] [nvarchar](50) NULL,
 CONSTRAINT [XPK���������] PRIMARY KEY CLUSTERED 
(
	[�����_��������_����������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[���������] ([�����_��������_����������], [���_����������], [����_��������], [�����_����������], [�������_��������], [�������_���������], [���������]) VALUES (N'KB1532550', N'����� �����', CAST(0x000084DE00000000 AS DateTime), N'������, ��-� �������, 35', N'453919', N'+375296580681', N'������ �� ������� ����������')
INSERT [dbo].[���������] ([�����_��������_����������], [���_����������], [����_��������], [�����_����������], [�������_��������], [�������_���������], [���������]) VALUES (N'��1545374', N'������� �.�.', CAST(0x00006E2000000000 AS DateTime), N'������, ��-� �����������, 10', N'440516', N'+375259465161', N'������ �� ������� ����������')
INSERT [dbo].[���������] ([�����_��������_����������], [���_����������], [����_��������], [�����_����������], [�������_��������], [�������_���������], [���������]) VALUES (N'��1684611', N'��������� �.�.', CAST(0x0000707C00000000 AS DateTime), N'������, ��������, 95', N'702325', N'+375292436886', N'����.���������')
INSERT [dbo].[���������] ([�����_��������_����������], [���_����������], [����_��������], [�����_����������], [�������_��������], [�������_���������], [���������]) VALUES (N'��1685416', N'������� �.�.', CAST(0x00007CCA00000000 AS DateTime), N'������, ��-� ����, 15', N'656654', N'+375229466185', N'�������� �� ������ � ���������')
INSERT [dbo].[���������] ([�����_��������_����������], [���_����������], [����_��������], [�����_����������], [�������_��������], [�������_���������], [���������]) VALUES (N'��1767768', N'�������� �.�.', CAST(0x00007CA100000000 AS DateTime), N'������, ��-� ��������, 29', N'202125', N'+375299431361', N'���������')
INSERT [dbo].[���������] ([�����_��������_����������], [���_����������], [����_��������], [�����_����������], [�������_��������], [�������_���������], [���������]) VALUES (N'��1896165', N'��������� �.�.', CAST(0x00006D8900000000 AS DateTime), N'������, ��������, 95', N'702325', N'+375228468548', N'��������')
/****** Object:  Trigger [��������_��������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[��������_��������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[��������_��������]
   ON  [dbo].[���������] 
   for INSERT
AS 
BEGIN
Declare @����_���� datetime
Set @����_���� = 
 (Select ����_�������� from inserted)

	IF not (DATEDIFF(Y,@����_����, GETDATE()) <18) 
		Begin
		 IF(DATEDIFF(Y,@����_����, GETDATE()) >62)
			Begin
				Raiserror (''����� ��������� ������ ��������'',1,16)
			End
	    End
END
'
GO
/****** Object:  StoredProcedure [dbo].[������_������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[������_������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[������_������]
	
	@��������_������ [nvarchar](150),
	@��������� [nvarchar](75),
	@����������_����������_����� int,
	@���� money,
	@����_�������� int,
	@��������_����������_������ [nvarchar](50)
	
AS 
	IF @��������_����������_������ <> '''' AND 
		NOT EXISTS (SELECT ���_����������_������
			   FROM  ���������_�����
			   WHERE ��������_����������_������ =  @��������_����������_������)	
	BEGIN
		RAISERROR (''�� ������ ��� ���������� ������ �� ����������� ��������.'', 16, 1)
		RETURN 1
	END
	DECLARE @���_����������_������ int
	SET @���_����������_������ = (SELECT ���_����������_������
				   FROM  ���������_�����
				   WHERE ��������_����������_������ =  @��������_����������_������)
	
	IF (ISNUMERIC(@����)=0) 
	BEGIN
		RAISERROR (''������������ �������� ���� ������'', 16, 1)
		RETURN 1
	END

Declare	@ID_������ [nvarchar](20)	
	If (not exists
		(select  ��������_������ FROM [�����])
		)
		Begin              --if not exist - we''ll create it =)
		INSERT INTO [dbo].[�����]
		(ID_������,
		��������_������,
		���������,
		����������_�����,
		����������_�������,
		����,
		����_��������,
		���_����������_������) 
	VALUES 
		(NEWID(),
		@��������_������,
		Upper(@���������),
		@����������_����������_�����,
		0,
		Convert(money,@����),
		@����_��������,
		@���_����������_������)
	
		End
		Else
			begin
			set @ID_������ = (select  ID_������
								 FROM [�����] Where (��������_������=@��������_������))
			
			if (select ���� from ����� where(@ID_������=ID_������)) <@����
				begin
					Update [�����]
						Set [����]=@����,[����������_�����] = [����������_�����]+@����������_����������_�����
							Where (@ID_������=ID_������)
				 end
				 Else
				 Begin
				 Update [�����]
						Set [����������_�����] = [����������_�����]+@����������_����������_�����
							Where (@ID_������=ID_������)
				 End
		End ' 
END
GO
/****** Object:  View [dbo].[�����_�����]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�����_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[�����_�����]
AS
SELECT     TOP (100) PERCENT ��������_������, ���������, ����, ����_��������
FROM         dbo.�����
ORDER BY ���������
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'�����_�����', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�����_�����'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'�����_�����', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�����_�����'
GO
/****** Object:  StoredProcedure [dbo].[�����_��������_������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����_��������_������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create PROCEDURE [dbo].[�����_��������_������]
	@�����_�������� nvarchar(50)
AS
BEGIN
	(
	Select PATINDEX (''%''+@�����_��������+''%'', @�����_��������), ����������_�������, ����������_�����   
	  	from [�����]
	)   	

END
' 
END
GO
/****** Object:  Trigger [������������_�����_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[������������_�����_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[������������_�����_������]
   ON  [dbo].[�����]
   for UPDATE
AS 
BEGIN

if (select isNull(deleted.����������_�������,0)
	+ ISNULL(deleted.����������_�����,0) as ''����� ����������'' 
		from ����� inner join deleted
		on (deleted.ID_������=�����.ID_������)
	)
	=0
	begin
	raiserror(''��������! ������ ����� ����������!'',1,16)
	end

END
'
GO
/****** Object:  StoredProcedure [dbo].[���������_�_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_�_�������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[���������_�_�������]
		@��������_������ nvarchar(150),
		@���������� int
	AS
BEGIN
Declare @ID_������ nvarchar(20)
Set  @ID_������= 
	 (
	 Select [ID_������] 
	 From [�����]
	 Where (��������_������=@��������_������)
	 )
	 		
	 IF(ISNULL(@ID_������,'''')=0)
	 Begin
		RaisError(''�� ������ ������ �������, ��� ���������'',1,16)
		With NoWait Return 1
	 End
	 	 
Declare @�����_����� int
Set  @�����_�����=
	 (
	 Select [����������_�����] 
	 From [�����]
	 Where (ID_������=@ID_������)
	 )				
	 IF(@�����_�����<@����������)
	 Begin
		RaisError(''�� ������ ������ �������, ��� ���������'',1,16)
		With NoWait Return 1
	 End
	 
Declare @�����_������� int
Set  @�����_�������=
	 (
	 Select [����������_�������] 
	 From [�����]
	 Where (ID_������=@ID_������)
	 )		
	 
	 Update [�����] 
		Set [����������_�������]=@�����_�������+@����������, 
			[����������_�����]= @�����_�����-@����������
			Where (ID_������=@ID_������)	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[��������_���������_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[��������_���������_�������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[��������_���������_�������] 
@ID_������ nvarchar(20),
@��������_������ nvarchar(150), 
@��������� nvarchar(75),
@���� money,
@����_�������� int,
@���_����������_������ int
AS
BEGIN
	Update �����
	Set ��������_������=@��������_������, 
		��������� = @���������,
		���� = @����,
		����_�������� = @����_��������,
		���_����������_������=@���_����������_������
	Where (@ID_������=ID_������)
END
' 
END
GO
/****** Object:  Trigger [tU_���������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_���������_�������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_���������_�������] ON [dbo].[���������_�������] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ���������_������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins���_�������� int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���������_������� ����������� ��� ������� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00017316", PARENT_OWNER="", PARENT_TABLE="���������_�������"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="����������� ���", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����������_���", FK_COLUMNS="���_��������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���_��������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @ins���_�������� = inserted.���_��������
        FROM inserted
      UPDATE �������
      SET
        /*  %JoinFKPK(�������,@ins," = ",",") */
        �������.���_�������� = @ins���_��������
      FROM �������,inserted,deleted
      WHERE
        /*  %JoinFKPK(�������,deleted," = "," AND") */
        �������.���_�������� = deleted.���_��������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ���������_������� update because more than one row has been affected.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tI_�������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tI_�������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tI_�������] ON [dbo].[�������] FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on ������� */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���������_������� ����������� ��� ������� on child insert set null */
  /* ERWIN_RELATION:CHECKSUM="00016df8", PARENT_OWNER="", PARENT_TABLE="���������_�������"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="����������� ���", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����������_���", FK_COLUMNS="���_��������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���_��������)
  BEGIN
    UPDATE �������
      SET
        /* %SetFK(�������,NULL) */
        �������.���_�������� = NULL
      FROM �������,inserted
      WHERE
        /* %JoinPKPK(�������,inserted," = "," AND") */
       �������.ID_������ = inserted.ID_������ AND
        �������.���_������������_������ = inserted.���_������������_������ AND
        
        NOT EXISTS (
          SELECT * FROM ���������_�������
          WHERE
            /* %JoinFKPK(inserted,���������_�������," = "," AND") */
            inserted.���_�������� = ���������_�������.���_��������
        )
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_���������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_���������_�������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_���������_�������] ON [dbo].[���������_�������] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ���������_������� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ���������_������� ����������� ��� ������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00010332", PARENT_OWNER="", PARENT_TABLE="���������_�������"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="����������� ���", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����������_���", FK_COLUMNS="���_��������" */
    IF EXISTS (
      SELECT * FROM deleted,�������
      WHERE
        /*  %JoinFKPK(�������,deleted," = "," AND") */
        �������.���_�������� = deleted.���_��������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ���������_������� because ������� exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  View [dbo].[����������_�����_�������������_��_������_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[����������_�����_�������������_��_������_�������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[����������_�����_�������������_��_������_�������]
AS
SELECT     COUNT(ID_������) AS ����������_�������
FROM         dbo.�����
WHERE     (����������_����� = 0)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'����������_�����_�������������_��_������_�������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 215
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'����������_�����_�������������_��_������_�������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'����������_�����_�������������_��_������_�������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'����������_�����_�������������_��_������_�������'
GO
/****** Object:  Trigger [��������_��������_�_�����_��������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[��������_��������_�_�����_��������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[��������_��������_�_�����_��������] 
   ON  [dbo].[������] 
   For INSERT
AS 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF ASCII
		(Substring((Select �����_��������_������� From inserted ),1,2))>127	
	BEGIN
		Raiserror (''������� ����� �������� ���������� �������'',1,16)
	
	Rollback transaction
	END'
GO
/****** Object:  Trigger [�����_��������_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[�����_��������_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[�����_��������_������]
   ON  [dbo].[������] 
   FOR INSERT,UPDATE
AS 
BEGIN
declare @�����_��������_ nvarchar(15)
Set @�����_��������_ = (Select �����_��������_�������
							from inserted)
							
declare @��� nvarchar(15)
Set @��� = (Select ���_�������
							from inserted)
							
Update ������
	Set �����_��������_�������=Lower(@�����_��������_)
		Where (���_�������=@���)
	
	
END
'
GO
/****** Object:  View [dbo].[�������_��_��������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_��������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[�������_��_��������]
AS
SELECT     TOP (100) PERCENT ���_�������, �����_�������, �������_���������, DATEDIFF(Year, ����_��������, GETDATE()) AS �������
FROM         dbo.������
ORDER BY �������
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'�������_��_��������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "������"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_��_��������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'�������_��_��������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_��_��������'
GO
/****** Object:  View [dbo].[����������_�_����������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[����������_�_����������]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[����������_�_����������]
AS
Select ���_����������, Upper(�����_��������_����������)AS ''�����_��������_����������'' ,
	 CAST(����_�������� as nvarchar(10)) as ''����_��������'', �����_����������, �������_���������
	from ���������
	'
GO
/****** Object:  View [dbo].[����������_�_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[����������_�_�������]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[����������_�_�������]
AS
Select ���_�������, Upper(�����_��������_�������)AS ''�����_��������_�������'' , �����_�������, �������_���������
	from ������
	'
GO
/****** Object:  Trigger [���������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[���������_�������]
   ON  [dbo].[���������] 
   FOR UPDATE,Insert
AS 
BEGIN

declare @�����_��������_ nvarchar(15)
Set @�����_��������_ = (Select �����_��������_����������
							from inserted)
							
declare @��� nvarchar(15)
Set @��� = (Select ���_����������
							from inserted)
							
Update ���������
	Set ���_����������=UPPER(@���)
		Where (�����_��������_����������=@�����_��������_)

END'
GO
/****** Object:  StoredProcedure [dbo].[����������������_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[����������������_�������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[����������������_�������]
	@�����_��������_������� 	[nvarchar](20),
	@���_������� 		[nvarchar](50),
	@����_��������			[nvarchar](30),
	@�����_������� 		[nvarchar](100),
	@�������_�������� 		[nvarchar](15),
	@�������_��������� 		[nvarchar](20)
AS 
	IF ISDATE(@����_��������) = 0
	BEGIN
		RAISERROR (''�������� �������� ���� �������� �������.'', 16, 1)
			WITH NOWAIT
		RETURN 1
	END

	INSERT INTO [ComputerFirm].[dbo].[������] 
		([�����_��������_�������],
		[���_�������],
		[����_��������],
		[�����_�������],
		[�������_��������],
		[�������_���������]) 
	VALUES 
		(@�����_��������_�������,
		@���_�������,
		CONVERT(datetime, @����_��������),
		@�����_�������,
		@�������_��������,
		@�������_���������)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[���������_���������_�������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������_���������_�������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[���������_���������_�������]
	@�����������_������� money,
	@��������������_����� money,
	@����_������ int,
	@���_������� nvarchar(50)	
AS
BEGIN

	Declare @�����_��������_������� nvarchar(15)
	set @�����_��������_������� = 
		(Select [�����_��������_�������]
			From dbo.������
				Where (���_�������=@���_�������) 
		)
	
	Insert into dbo.[���������_�������]
		(
		[�����������_�������],
		[��������������_�����],
		[����_������],
		[�����_��������_�������]
		)
			Values
			(
			Convert(money,@�����������_�������),
			Convert(money,@��������������_�����),
			@����_������,
			@�����_��������_�������	
			)
	
END
' 
END
GO
/****** Object:  Table [dbo].[���������]    Script Date: 12/03/2013 05:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[���������](
	[���_����������] [int] IDENTITY(1,1) NOT NULL,
	[��������_����������] [nvarchar](50) NOT NULL,
	[�����_����������] [nvarchar](100) NULL,
	[�������_����������] [nvarchar](20) NULL,
	[��������] [ntext] NULL,
 CONSTRAINT [XPK���������] PRIMARY KEY CLUSTERED 
(
	[���_����������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[���������] ON
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (1, N'��������', N'�.�����, ��-� ������������, 8�', N'', N'�������-����� ��������� ��� �������� �������')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (2, N'E-MOGILEV', N'�. �������, ��. �������� 33', N'8(0222) 31-08-31', N'�����-���������')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (3, N'�����-���� ���', N'�.�������, ������������, 37-1', N'480008', N'')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (4, N'��������� ����', N'�.�������, �������� 9', N'258582', N'����������� � ���������������')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (5, N'�����������', N'�.�����, ��. ������� �. 5� ���� �4', N'(017) 385-23-94', N'Novatek')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (6, N'��� "������"', N'������, ����������� �. 5/1', N'+7 499 9765811', N'')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (7, N'������ �����', N'�. �����, ��. ��������� 17', N'(017) 284-08-52', N'')
INSERT [dbo].[���������] ([���_����������], [��������_����������], [�����_����������], [�������_����������], [��������]) VALUES (8, N'D-Link International', N'220114, �. �����, ��-� �������������, 169', N'218-1362', N' ��. ����������������� Dlink')
SET IDENTITY_INSERT [dbo].[���������] OFF
/****** Object:  Trigger [��������_����������_�_���������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[��������_����������_�_���������_�������]'))
EXEC dbo.sp_executesql @statement = N'Create TRIGGER [dbo].[��������_����������_�_���������_�������] 
   ON  [dbo].[���������] 
   for DELETE
AS 
BEGIN
	Begin transaction
 Declare @���_���������� int
 Set @���_���������� = 
	(Select  ���_����������
     From deleted)
 if (Select COUNT(ID_������)
		 From 	�����_�����_���������
			 Where (@���_����������=���_����������)
	) >0
	Begin
		raiserror (''����� �� ����� ���������� ��� � ������. �������� ����������.'',1,16)
		rollback transaction
	End	 
END
'
GO
/****** Object:  StoredProcedure [dbo].[��������_�����_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[��������_�����_������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[��������_�����_������]
		@���_������� nvarchar(20),
		@��������_������ nvarchar(150),
		@��������� nvarchar(50),
		@���������� int
		
AS
BEGIN
	if (ISNULL(@���������,'''')=0)
	Begin
		RAISERROR (''�� ������� ��� ����������'', 16, 1)
			WITH NOWAIT
		RETURN 1
	End
	Else
	Begin
Declare	@���_���������� int
set @���_����������= 
	(
	Select [���_����������]
		From dbo.[���������]
			Where (@��������� = ��������_����������)
	)
	End
Declare	@�����_��������_������� nvarchar(15)
	Set @�����_��������_������� =
	(
	Select �����_��������_������� 
		From dbo.[������]
			Where (���_�������=@���_�������)
	)
	
Declare	@ID_������ nvarchar(20)
	Set @ID_������ =
	(
	Select ID_������ 
		From dbo.[�����]
			Where (@��������_������=��������_������)
	)
	
	Insert Into dbo.[�����_�����_���������]
	(�����_��������_�������,ID_������,����_������,����������_��������,���_����������)
		Values (@�����_��������_�������,@ID_������, SYSDATETIME(),@����������,@���_����������)
END
' 
END
GO
/****** Object:  Trigger [tU_���������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_���������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_���������] ON [dbo].[���������] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ��������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins���_���������� int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���������  �����_�����_��������� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="0001a575", PARENT_OWNER="", PARENT_TABLE="���������"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="Relationship_456", FK_COLUMNS="���_����������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���_����������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @ins���_���������� = inserted.���_����������
        FROM inserted
      UPDATE �����_�����_���������
      SET
        /*  %JoinFKPK(�����_�����_���������,@ins," = ",",") */
        �����_�����_���������.���_���������� = @ins���_����������
      FROM �����_�����_���������,inserted,deleted
      WHERE
        /*  %JoinFKPK(�����_�����_���������,deleted," = "," AND") */
        �����_�����_���������.���_���������� = deleted.���_����������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ��������� update because more than one row has been affected.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tU_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_������] ON [dbo].[������] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ������ */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins�����_��������_������� nvarchar(15),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ������ ��������� ���������_������� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00030449", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="���������_�������"
    P2C_VERB_PHRASE="���������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���������", FK_COLUMNS="�����_��������_�������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(�����_��������_�������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @ins�����_��������_������� = inserted.�����_��������_�������
        FROM inserted
      UPDATE ���������_�������
      SET
        /*  %JoinFKPK(���������_�������,@ins," = ",",") */
        ���������_�������.�����_��������_������� = @ins�����_��������_�������
      FROM ���������_�������,inserted,deleted
      WHERE
        /*  %JoinFKPK(���������_�������,deleted," = "," AND") */
        ���������_�������.�����_��������_������� = deleted.�����_��������_�������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ������ update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ������  �����_�����_��������� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="�����_��������_�������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(�����_��������_�������)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�����_�����_���������
      WHERE
        /*  %JoinFKPK(�����_�����_���������,deleted," = "," AND") */
        �����_�����_���������.�����_��������_������� = deleted.�����_��������_�������
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = ''Cannot update ������ because �����_�����_��������� exists.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tU_�����_�����_���������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_�����_�����_���������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_�����_�����_���������] ON [dbo].[�����_�����_���������] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on �����_�����_��������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_������ int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* �����  �����_�����_��������� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002a1b4", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�����
        WHERE
          /* %JoinFKPK(inserted,�����) */
          inserted.ID_������ = �����.ID_������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = ''Cannot update �����_�����_��������� because ����� does not exist.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ������  �����_�����_��������� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="�����_��������_�������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(�����_��������_�������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,������
        WHERE
          /* %JoinFKPK(inserted,������) */
          inserted.�����_��������_������� = ������.�����_��������_�������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = ''Cannot update �����_�����_��������� because ������ does not exist.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_������] ON [dbo].[������] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ������ */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ������ ��������� ���������_������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000243c2", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="���������_�������"
    P2C_VERB_PHRASE="���������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���������", FK_COLUMNS="�����_��������_�������" */
    IF EXISTS (
      SELECT * FROM deleted,���������_�������
      WHERE
        /*  %JoinFKPK(���������_�������,deleted," = "," AND") */
        ���������_�������.�����_��������_������� = deleted.�����_��������_�������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ������ because ���������_������� exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* ������  �����_�����_��������� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="�����_��������_�������" */
    IF EXISTS (
      SELECT * FROM deleted,�����_�����_���������
      WHERE
        /*  %JoinFKPK(�����_�����_���������,deleted," = "," AND") */
        �����_�����_���������.�����_��������_������� = deleted.�����_��������_�������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ������ because �����_�����_��������� exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_�����_�����_���������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_�����_�����_���������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_�����_�����_���������] ON [dbo].[�����_�����_���������] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on �����_�����_��������� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* �����  �����_�����_��������� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028244", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_������" */
    IF EXISTS (SELECT * FROM deleted,�����
      WHERE
        /* %JoinFKPK(deleted,�����," = "," AND") */
        deleted.ID_������ = �����.ID_������ AND
        NOT EXISTS (
          SELECT * FROM �����_�����_���������
          WHERE
            /* %JoinFKPK(�����_�����_���������,�����," = "," AND") */
            �����_�����_���������.ID_������ = �����.ID_������
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = ''Cannot delete last �����_�����_��������� because ����� exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* ������  �����_�����_��������� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="�����_��������_�������" */
    IF EXISTS (SELECT * FROM deleted,������
      WHERE
        /* %JoinFKPK(deleted,������," = "," AND") */
        deleted.�����_��������_������� = ������.�����_��������_������� AND
        NOT EXISTS (
          SELECT * FROM �����_�����_���������
          WHERE
            /* %JoinFKPK(�����_�����_���������,������," = "," AND") */
            �����_�����_���������.�����_��������_������� = ������.�����_��������_�������
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = ''Cannot delete last �����_�����_��������� because ������ exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_��������_���������_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_��������_���������_������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_��������_���������_������]
AS
BEGIN
Declare orders cursor local scroll
	FOR
	Select Top 50 Str([ID_������]) as ''ID_������'',[�����_��������_�������],[ID_������],
			DATEDIFF(D,[����_������], GETDATE()) as ''����_�_�����������''
		From �����_�����_���������
			Where ( DATEDIFF(D,[����_������],GETDATE())>7)
			Order By DATEDIFF(D,[����_������],GETDATE()) Asc
			
	Open orders
	While (@@FETCH_STATUS=0)
	Begin
		Fetch next from orders
	End 
	Close orders
	deallocate orders
END
' 
END
GO
/****** Object:  View [dbo].[��������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[��������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[��������]
AS
SELECT     dbo.������.���_�������, SUM(dbo.�������.����) AS [����� ����� �������], COUNT(dbo.���������_�������.���_��������) 
                      AS [���������� ��������]
FROM         dbo.������� INNER JOIN
                      dbo.���������_������� ON dbo.�������.���_�������� = dbo.���������_�������.���_�������� INNER JOIN
                      dbo.������ ON dbo.���������_�������.�����_��������_������� = dbo.������.�����_��������_�������
GROUP BY dbo.������.���_�������
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'��������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "������"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 163
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "�������"
            Begin Extent = 
               Top = 7
               Left = 582
               Bottom = 168
               Right = 809
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "���������_�������"
            Begin Extent = 
               Top = 23
               Left = 317
               Bottom = 142
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'��������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'��������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'��������'
GO
/****** Object:  View [dbo].[������_�����������_����������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_�����������_����������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[������_�����������_����������]
AS
SELECT     TOP (15) ��������_������, ���������, ����, ����_��������, MIN(����������_����� + ����������_�������) AS [��������,��]
FROM         dbo.�����
GROUP BY ��������_������, ���������, ����, ����_��������
ORDER BY [��������,��]
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'������_�����������_����������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 3465
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'������_�����������_����������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'������_�����������_����������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'������_�����������_����������'
GO
/****** Object:  View [dbo].[���������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[���������_�������]
AS
SELECT TOP(100) ���������.���_����������, �����_������� 
	FROM dbo.���������
		Inner JOIN
		(
			SELECT �����_��������_����������, SUM( �������) AS ''�����_�������''	
				FROM �����������_�����
				 INNER JOIN 
					( 
					SELECT SUM(����*����������) AS ''�������'', ���_������������_������  
						FROM dbo.�������
						   GROUP BY ���_������������_������
					) AS tmp1
				 ON (tmp1.���_������������_������=�����������_�����.���_������������_������)
					 GROUP BY �����_��������_����������
		 ) as tmp2
  ON (tmp2.�����_��������_����������=dbo.���������.�����_��������_����������)
ORDER BY �����_������� ASC
'
GO
/****** Object:  View [dbo].[�������_��_�������_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_�������_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[�������_��_�������_�����]
AS
SELECT     dbo.�����.��������_������, dbo.�������.����������, dbo.�������.����, dbo.�����������_�����.����_�����
FROM         dbo.������� INNER JOIN
                      dbo.����� ON dbo.�������.ID_������ = dbo.�����.ID_������ INNER JOIN
                      dbo.�����������_����� ON dbo.�������.���_������������_������ = dbo.�����������_�����.���_������������_������
WHERE     (YEAR(dbo.�����������_�����.����_�����) = YEAR(GETDATE())) AND (MONTH(dbo.�����������_�����.����_�����) = MONTH(GETDATE()))
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'�������_��_�������_�����', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�������"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 125
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "�����������_�����"
            Begin Extent = 
               Top = 6
               Left = 555
               Bottom = 125
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_��_�������_�����'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'�������_��_�������_�����', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_��_�������_�����'
GO
/****** Object:  View [dbo].[�������_��_�������_���]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_�������_���]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[�������_��_�������_���]
AS
SELECT     dbo.�����.��������_������, dbo.�������.����������, dbo.�������.����, dbo.�����������_�����.����_�����
FROM         dbo.������� INNER JOIN
                      dbo.����� ON dbo.�������.ID_������ = dbo.�����.ID_������ INNER JOIN
                      dbo.�����������_����� ON dbo.�������.���_������������_������ = dbo.�����������_�����.���_������������_������
WHERE     (YEAR(dbo.�����������_�����.����_�����) = YEAR(GETDATE()))
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'�������_��_�������_���', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�������"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 125
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "�����������_�����"
            Begin Extent = 
               Top = 6
               Left = 555
               Bottom = 125
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_��_�������_���'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'�������_��_�������_���', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'�������_��_�������_���'
GO
/****** Object:  StoredProcedure [dbo].[�������_��_�����_����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_�����_����]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[�������_��_�����_����]
	@����������� int,
	@��������� int
AS
BEGIN
	If((@�����������<1) or (@����������� > 12))
		Begin
			RaisError ('''',1,16)
			With NoWait
			Return 1
		End
	
	Declare @����� int
	Set @����� = 
		(
		Select [���_������������_������]
			From dbo.[�����������_�����]
				Where (Year([����_�����])=@���������
					and MONTH ([����_�����])= @�����������)
		)
		
 Select Sum([����]) as ''�������'' 
	FROM [dbo].������� 
		 Where (@�����=���_������������_������)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[�������_��_���]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_��_���]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[�������_��_���]
	@��������� int
AS
BEGIN
	Declare @����� int
	Set @����� = 
		(
		Select [���_������������_������]
			From dbo.[�����������_�����]
				Where (Year([����_�����])=@���������)
		)
		
 Select Sum([����]) as ''�������'' 
	FROM [dbo].������� 
		 Where (@�����=���_������������_������)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[����������������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[����������������_�������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[����������������_�������]
	@��������_������ as nvarchar(50),
	@���������� as int,
	@���_������ nvarchar(30),
	@��������_�����_���������� nvarchar(20),
	@���_�������� int
AS
BEGIN
	Declare @���_����� int
	Set @���_�����=
	(Select Sum(����������_�������)+Sum(����������_�����) 
			from dbo.[�����]
				Where  (@��������_������=��������_������)) 
	If(@���_�����=0)
	Begin
		Raiserror (''������ ���'',1,16)
		With NoWait Return 1
	End	
	
	Declare @ID_ nvarchar(20)
	Set @ID_ = 
	(Select [ID_������] 
		From dbo.[�����]
			Where @��������_������=��������_������)
	
	Declare @����_���� money
	Set @����_���� = 
	(Select [����]*@����������
		From dbo.[�����]
			Where @��������_������=��������_������) 
	 
	 Declare @���_������������_������ int
	 Set @���_������������_������ = 
	 (
	  Select [���_������������_������] 
		From dbo.[�����������_�����]
			where (@��������_�����_����������=��������_�����_����������)
	 )
	if (@���_������������_������ = NULL) -- do not work correctly
	Begin
		Raiserror(''��� ������������ ������ � ����� �������� �������'',1,16)
		with nowait return 1
	End		
	
	Insert Into dbo.[�������](���_��������,���_������������_������,ID_������,���_������,����������,����)
		Values (@���_��������,@���_������������_������,@ID_,@���_������,@����������,@����_����)	
END
' 
END
GO
/****** Object:  Trigger [tU_���������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_���������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_���������] ON [dbo].[���������] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ��������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins�����_��������_���������� nvarchar(15),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ��������� ������ �����������_����� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="0001cb1a", PARENT_OWNER="", PARENT_TABLE="���������"
    CHILD_OWNER="", CHILD_TABLE="�����������_�����"
    P2C_VERB_PHRASE="������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="������", FK_COLUMNS="�����_��������_����������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(�����_��������_����������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @ins�����_��������_���������� = inserted.�����_��������_����������
        FROM inserted
      UPDATE �����������_�����
      SET
        /*  %JoinFKPK(�����������_�����,@ins," = ",",") */
        �����������_�����.�����_��������_���������� = @ins�����_��������_����������
      FROM �����������_�����,inserted,deleted
      WHERE
        /*  %JoinFKPK(�����������_�����,deleted," = "," AND") */
        �����������_�����.�����_��������_���������� = deleted.�����_��������_����������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ��������� update because more than one row has been affected.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_���������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_���������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_���������] ON [dbo].[���������] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ��������� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ��������� ������ �����������_����� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000121b6", PARENT_OWNER="", PARENT_TABLE="���������"
    CHILD_OWNER="", CHILD_TABLE="�����������_�����"
    P2C_VERB_PHRASE="������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="������", FK_COLUMNS="�����_��������_����������" */
    IF EXISTS (
      SELECT * FROM deleted,�����������_�����
      WHERE
        /*  %JoinFKPK(�����������_�����,deleted," = "," AND") */
        �����������_�����.�����_��������_���������� = deleted.�����_��������_����������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ��������� because �����������_����� exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Table [dbo].[�����������_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�����������_������]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[�����������_������](
	[������_������������] [nvarchar](20) NOT NULL,
	[����������] [ntext] NULL,
	[�������_�����������_��_������] [text] NULL,
	[����_�����] [datetime] NOT NULL,
	[���_������������_������] [int] NOT NULL,
 CONSTRAINT [XPK�����������_������] PRIMARY KEY CLUSTERED 
(
	[����_�����] ASC,
	[���_������������_������] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26C0169EDE9 AS DateTime), 6)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D000C7790 AS DateTime), 5)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D000C836E AS DateTime), 4)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D000C8694 AS DateTime), 4)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D000C8B5D AS DateTime), 6)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D000C90DB AS DateTime), 8)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D00125053 AS DateTime), 8)
INSERT [dbo].[�����������_������] ([������_������������], [����������], [�������_�����������_��_������], [����_�����], [���_������������_������]) VALUES (N'������', N'����������', N'����������� ������', CAST(0x0000A26D001257F0 AS DateTime), 3)
/****** Object:  View [dbo].[������_�_������_��������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_�_������_��������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[������_�_������_��������]
AS
 -- ����� �����������_������.���_������������_������ , ����� ID_������, ����� ��������.
 --  ����� ���������� �����������_������.���_������������_������ 
   		
SELECT top (15) ��������_������, COUNT(�����������_������.���_������������_������)AS ''����������_�����'' 
  FROM
  ( �����
  	INNER JOIN 
	  �������
    ON (�����.ID_������=�������.ID_������)
	   INNER JOIN
		 �����������_�����
	   ON (�����������_�����.���_������������_������ = �������.���_������������_������)
		  INNER JOIN	     	  	    		
			�����������_������
		  ON (�����������_������.���_������������_������= �����������_�����.���_������������_������)									
   )
   GROUP BY ��������_������
   ORDER BY ����������_����� ASC'
GO
/****** Object:  View [dbo].[������_�����_��_�����������_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[������_�����_��_�����������_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[������_�����_��_�����������_������]
AS
SELECT     dbo.�����.��������_������, dbo.�����������_������.����_�����, dbo.�����������_������.���_������������_������
FROM         dbo.�����������_������ INNER JOIN
                      dbo.������� ON dbo.�������.���_������������_������ = dbo.�����������_������.���_������������_������ INNER JOIN
                      dbo.����� ON dbo.�����.ID_������ = dbo.�������.ID_������
WHERE     (CONVERT(nvarchar(50), dbo.�����������_������.�������_�����������_��_������) = ''����������� ������'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'������_�����_��_�����������_������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "�����������_������"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 150
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "�������"
            Begin Extent = 
               Top = 6
               Left = 660
               Bottom = 164
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "�����"
            Begin Extent = 
               Top = 6
               Left = 339
               Bottom = 193
               Right = 553
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'������_�����_��_�����������_������'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'������_�����_��_�����������_������', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'������_�����_��_�����������_������'
GO
/****** Object:  StoredProcedure [dbo].[����������_������������_�������_��_���������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[����������_������������_�������_��_���������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[����������_������������_�������_��_���������]
	@��������� nvarchar(75)
AS
BEGIN
	declare @ID_������ int
	set @ID_������ = 
		
		(Select ID_������
			From dbo.�����
				Where (���������=Upper(@���������))
			)
			
	declare @���_������������_������ int
	set @���_������������_������ = 
		(Select   ���_������������_������
			From dbo.�������
				Where (@ID_������ = ID_������)
		)
		Select Count(����_�����)
			From �����������_������
				Where ([�������_�����������_��_������] Like ''����������� ������'' and
						[���_������������_������] Like @���_������������_������)
				
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[�������������_����������_�������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������������_����������_�������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[�������������_����������_�������]
		@���_������������_������ int,
		@������_������������ nvarchar(20)
	AS
BEGIN
		If Not EXISTS (
				Select ����_�����
			    	 From dbo.[�����������_������] 
				    	Where ([���_������������_������]=@���_������������_������) 
				   	   )
		Begin
				RaisError(''� ����������� ������� ����� ������ ���'',1,16)
		End		    	
		-- �������� �� �������������

		Update [�����������_������]
		Set ������_������������ = ltrim(rtrim(@������_������������))
		Where (@���_������������_������ =���_������������_������)
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[�������_������_�_�����������_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������_������_�_�����������_������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[�������_������_�_�����������_������]
		@���_������������_������ nvarchar(10),
		@������_������������ nvarchar(20),
		@���������� ntext,
		@�������_�����������_��_������ text
AS
BEGIN
Declare @���_������ int
		IF (ISNUMERIC(@���_������������_������)=0)
			begin
				RaisError(''������������ ������ ������ ������������ ������'',1,16)
				With NoWait Return 1
			end
			Else
				begin
					Set @���_������ = CAST(@���_������������_������ as int)
				end
		
		Insert into dbo.[�����������_������] 
			(���_������������_������,����_�����,������_������������, �������_�����������_��_������,����������)
				Values (@���_������, Getdate(),@������_������������, @�������_�����������_��_������,@����������)
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[�������������_������_��_��������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[�������������_������_��_��������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[�������������_������_��_��������]
	@��������_������ nvarchar(150),
	@���_������������_������ int
		-- ��� � ��������, ����� �� ������
	AS
BEGIN
	Declare @ID_������ nvarchar(20)
Set  @ID_������= 
	 (
	 Select [ID_������] 
	 From [�����]
	 Where (��������_������=@��������_������)
	 )
	 
	Declare @����_�����_������� Datetime
Set  @����_�����_�������= 
	 (
	 Select [����_�����] 
	 From [�����������_������]
	 Where (���_������������_������=@���_������������_������)
	 )
	 
	 Declare @����_�������� int
	Set  @����_��������= 
	 (
	 Select [����_��������] 
	 From [�����]
	 Where (ID_������=@ID_������)
	 )	 
		if (DATEDIFF(MONTH,@����_�����_�������,GetDate())>=@����_��������)
			Begin
				RaisError(''���� �������� ����.'',1,16)
				With NoWait Return 1
			End	
		
	Declare @�����_����� int
	Set  @�����_����� =
	 (Select [����������_�����] From [�����] Where (ID_������=@ID_������))				
	 
	Declare @�����_������� int
	Set  @�����_������� = 
	( Select ����������_������� From [�����] Where (ID_������=@ID_������) )				
	  
	 IF(@�����_�����<1)
	 Begin
		If (@�����_�������<1)
		  Begin
				RaisError(''������ ���'',1,16)
				With NoWait Return 1
		  End
	 End
	 Execute dbo."�������_������_�_�����������_������"  
	 @���_������������_������,''������_��������'','''',''����������� ������''
	 
	 	
END
' 
END
GO
/****** Object:  Trigger [tU_�����������_�����]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_�����������_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_�����������_�����] ON [dbo].[�����������_�����] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on �����������_����� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins���_������������_������ int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* �����������_����� �������� ��� ������� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="0002fa9b", PARENT_OWNER="", PARENT_TABLE="�����������_�����"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="�������� ���", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������_���", FK_COLUMNS="���_������������_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���_������������_������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @ins���_������������_������ = inserted.���_������������_������
        FROM inserted
      UPDATE �������
      SET
        /*  %JoinFKPK(�������,@ins," = ",",") */
        �������.���_������������_������ = @ins���_������������_������
      FROM �������,inserted,deleted
      WHERE
        /*  %JoinFKPK(�������,deleted," = "," AND") */
        �������.���_������������_������ = deleted.���_������������_������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade �����������_����� update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* �����������_�����  �����������_������ on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�����������_�����"
    CHILD_OWNER="", CHILD_TABLE="�����������_������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="���_������������_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���_������������_������)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�����������_������
      WHERE
        /*  %JoinFKPK(�����������_������,deleted," = "," AND") */
        �����������_������.���_������������_������ = deleted.���_������������_������
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = ''Cannot update �����������_����� because �����������_������ exists.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tU_�����������_������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_�����������_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_�����������_������] ON [dbo].[�����������_������] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on �����������_������ */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins����_����� datetime, 
           @ins���_������������_������ int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* �����������_�����  �����������_������ on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00018775", PARENT_OWNER="", PARENT_TABLE="�����������_�����"
    CHILD_OWNER="", CHILD_TABLE="�����������_������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="���_������������_������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���_������������_������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�����������_�����
        WHERE
          /* %JoinFKPK(inserted,�����������_�����) */
          inserted.���_������������_������ = �����������_�����.���_������������_������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = ''Cannot update �����������_������ because �����������_����� does not exist.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_�����������_�����]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_�����������_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_�����������_�����] ON [dbo].[�����������_�����] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on �����������_����� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* �����������_����� �������� ��� ������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00024271", PARENT_OWNER="", PARENT_TABLE="�����������_�����"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="�������� ���", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������_���", FK_COLUMNS="���_������������_������" */
    IF EXISTS (
      SELECT * FROM deleted,�������
      WHERE
        /*  %JoinFKPK(�������,deleted," = "," AND") */
        �������.���_������������_������ = deleted.���_������������_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete �����������_����� because ������� exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* �����������_�����  �����������_������ on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�����������_�����"
    CHILD_OWNER="", CHILD_TABLE="�����������_������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="���_������������_������" */
    IF EXISTS (
      SELECT * FROM deleted,�����������_������
      WHERE
        /*  %JoinFKPK(�����������_������,deleted," = "," AND") */
        �����������_������.���_������������_������ = deleted.���_������������_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete �����������_����� because �����������_������ exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_�����������_������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_�����������_������]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_�����������_������] ON [dbo].[�����������_������] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on �����������_������ */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* �����������_�����  �����������_������ on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00018611", PARENT_OWNER="", PARENT_TABLE="�����������_�����"
    CHILD_OWNER="", CHILD_TABLE="�����������_������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="���_������������_������" */
    IF EXISTS (SELECT * FROM deleted,�����������_�����
      WHERE
        /* %JoinFKPK(deleted,�����������_�����," = "," AND") */
        deleted.���_������������_������ = �����������_�����.���_������������_������ AND
        NOT EXISTS (
          SELECT * FROM �����������_������
          WHERE
            /* %JoinFKPK(�����������_������,�����������_�����," = "," AND") */
            �����������_������.���_������������_������ = �����������_�����.���_������������_������
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = ''Cannot delete last �����������_������ because �����������_����� exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  StoredProcedure [dbo].[��������_�����������_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[��������_�����������_�����]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[��������_�����������_�����]
	@��������_�����_���������� nvarchar(50),
	@���_���������� nvarchar(50)
AS
BEGIN
		Declare @�����_��������_���������� nvarchar(15) 
		Set @�����_��������_���������� = 
		(Select �����_��������_����������
			 From dbo.[���������]
				Where (���_����������=@���_����������)
		)
		
		Insert Into dbo.[�����������_�����]
			([�����_��������_����������],[��������_�����_����������])
				Values (@�����_��������_����������,@��������_�����_����������)
END
' 
END
GO
/****** Object:  Trigger [�������_����_������_������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[�������_����_������_������]'))
EXEC dbo.sp_executesql @statement = N'
Create TRIGGER [dbo].[�������_����_������_������]
   ON  [dbo].[�����_�����_���������]
   for  INSERT
AS 
BEGIN
	Update �����_�����_��������� SET �����_�����_���������.����_������ = GETDATE()
END
'
GO
/****** Object:  Trigger [�������_����_������_������������_�������]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[�������_����_������_������������_�������]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[�������_����_������_������������_�������]
   ON  [dbo].[�����������_������]
   for  INSERT
AS 
BEGIN
	Update �����������_������ SET ����_����� = GETDATE()
END
'
GO
/****** Object:  StoredProcedure [dbo].[������������_������_��_������]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[������������_������_��_������]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[������������_������_��_������]
@���_������������_������ int
AS
BEGIN
	 Update �����������_������
		Set ������_������������=''������ ��������''
			Where (@���_������������_������=���_������������_������)
END
' 
END
GO
/****** Object:  Table [dbo].[UserAccess]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserAccess](
	[UserName] [nvarchar](50) NOT NULL,
	[UserGroup] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserAccess] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[UserAccess] ([UserName], [UserGroup], [Password]) VALUES (N'root', N'admin', N'??????????')
INSERT [dbo].[UserAccess] ([UserName], [UserGroup], [Password]) VALUES (N'user', N'user', N'??????????')
/****** Object:  Trigger [tU_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_�����] ON [dbo].[�����] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ����� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_������ nvarchar(20),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ����� ��������� � ������� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00040a94", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="��������� �", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���������_�", FK_COLUMNS="ID_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insID_������ = inserted.ID_������
        FROM inserted
      UPDATE �������
      SET
        /*  %JoinFKPK(�������,@ins," = ",",") */
        �������.ID_������ = @insID_������
      FROM �������,inserted,deleted
      WHERE
        /*  %JoinFKPK(�������,deleted," = "," AND") */
        �������.ID_������ = deleted.ID_������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ����� update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* �����  �����_�������_������� on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�����_�������_�������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_������)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insID_������ = inserted.ID_������
        FROM inserted
      UPDATE �����_�������_�������
      SET
        /*  %JoinFKPK(�����_�������_�������,@ins," = ",",") */
        �����_�������_�������.ID_������ = @insID_������
      FROM �����_�������_�������,inserted,deleted
      WHERE
        /*  %JoinFKPK(�����_�������_�������,deleted," = "," AND") */
        �����_�������_�������.ID_������ = deleted.ID_������
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade ����� update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* �����  �����_�����_��������� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_������)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�����_�����_���������
      WHERE
        /*  %JoinFKPK(�����_�����_���������,deleted," = "," AND") */
        �����_�����_���������.ID_������ = deleted.ID_������
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = ''Cannot update ����� because �����_�����_��������� exists.''
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [tD_�����]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_�����]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_�����] ON [dbo].[�����] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ����� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ����� ��������� � ������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0003154d", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�������"
    P2C_VERB_PHRASE="��������� �", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���������_�", FK_COLUMNS="ID_������" */
    IF EXISTS (
      SELECT * FROM deleted,�������
      WHERE
        /*  %JoinFKPK(�������,deleted," = "," AND") */
        �������.ID_������ = deleted.ID_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ����� because ������� exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* �����  �����_�������_������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�����_�������_�������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_������" */
    IF EXISTS (
      SELECT * FROM deleted,�����_�������_�������
      WHERE
        /*  %JoinFKPK(�����_�������_�������,deleted," = "," AND") */
        �����_�������_�������.ID_������ = deleted.ID_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ����� because �����_�������_������� exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* �����  �����_�����_��������� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�����"
    CHILD_OWNER="", CHILD_TABLE="�����_�����_���������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_������" */
    IF EXISTS (
      SELECT * FROM deleted,�����_�����_���������
      WHERE
        /*  %JoinFKPK(�����_�����_���������,deleted," = "," AND") */
        �����_�����_���������.ID_������ = deleted.ID_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete ����� because �����_�����_��������� exists.''
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END
'
GO
/****** Object:  Trigger [Hash_pass]    Script Date: 12/03/2013 05:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Hash_pass]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Hash_pass] 
   ON  [dbo].[UserAccess] 
   After INSERT,UPDATE
AS 
BEGIN
	declare @hash_pass nvarchar(50)
	set @hash_pass = Convert(nvarchar(50), HASHBYTES(''SHA1'',(select Password from inserted)))
	UPDATE UserAccess 
		Set Password=@hash_pass
			  WHERE(UserAccess.UserName= (select UserName from inserted)) 
END
'
GO
/****** Object:  StoredProcedure [dbo].[GetUserGROUP]    Script Date: 12/03/2013 05:52:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetUserGROUP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetUserGROUP]
@Username nvarchar(50),
@Password nvarchar(50)
AS
BEGIN
	declare @hash_pass nvarchar(50)
	set @hash_pass = Convert(nvarchar(50), HASHBYTES(''SHA1'',@Password))
	IF Exists (Select *
					From UserAccess 
							Where(@Username = UserName AND @hash_pass = Password))
		begin
			(Select UserGroup as ''UserGroup''
					From UserAccess 
						Where(@Username = UserName AND @hash_pass = Password) )
		end
		Else
			Begin
				Raiserror (''������ ������������ ��� � ����. ���������� � ��������������.'',16,1)
				with nowait return 1 
			End
END
' 
END
GO
/****** Object:  ForeignKey [Relationship_484]    Script Date: 12/03/2013 05:52:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����]'))
ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [Relationship_484] FOREIGN KEY([���_����������_������])
REFERENCES [dbo].[���������_�����] ([���_����������_������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����]'))
ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [Relationship_484]
GO
/****** Object:  ForeignKey [���������]    Script Date: 12/03/2013 05:52:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND parent_object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
ALTER TABLE [dbo].[���������_�������]  WITH CHECK ADD  CONSTRAINT [���������] FOREIGN KEY([�����_��������_�������])
REFERENCES [dbo].[������] ([�����_��������_�������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������]') AND parent_object_id = OBJECT_ID(N'[dbo].[���������_�������]'))
ALTER TABLE [dbo].[���������_�������] CHECK CONSTRAINT [���������]
GO
/****** Object:  ForeignKey [R_23]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������]  WITH CHECK ADD  CONSTRAINT [R_23] FOREIGN KEY([ID_������])
REFERENCES [dbo].[�����] ([ID_������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] CHECK CONSTRAINT [R_23]
GO
/****** Object:  ForeignKey [R_24]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������]  WITH CHECK ADD  CONSTRAINT [R_24] FOREIGN KEY([�����_��������_�������])
REFERENCES [dbo].[������] ([�����_��������_�������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] CHECK CONSTRAINT [R_24]
GO
/****** Object:  ForeignKey [Relationship_456]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������]  WITH NOCHECK ADD  CONSTRAINT [Relationship_456] FOREIGN KEY([���_����������])
REFERENCES [dbo].[���������] ([���_����������])
ON UPDATE CASCADE
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����_�����_���������]'))
ALTER TABLE [dbo].[�����_�����_���������] NOCHECK CONSTRAINT [Relationship_456]
GO
/****** Object:  ForeignKey [��������_���]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[��������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������]  WITH CHECK ADD  CONSTRAINT [��������_���] FOREIGN KEY([���_������������_������])
REFERENCES [dbo].[�����������_�����] ([���_������������_������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[��������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] CHECK CONSTRAINT [��������_���]
GO
/****** Object:  ForeignKey [�����������_���]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[�����������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������]  WITH CHECK ADD  CONSTRAINT [�����������_���] FOREIGN KEY([���_��������])
REFERENCES [dbo].[���������_�������] ([���_��������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[�����������_���]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] CHECK CONSTRAINT [�����������_���]
GO
/****** Object:  ForeignKey [���������_�]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������_�]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������]  WITH CHECK ADD  CONSTRAINT [���������_�] FOREIGN KEY([ID_������])
REFERENCES [dbo].[�����] ([ID_������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[���������_�]') AND parent_object_id = OBJECT_ID(N'[dbo].[�������]'))
ALTER TABLE [dbo].[�������] CHECK CONSTRAINT [���������_�]
GO
/****** Object:  ForeignKey [������]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[������]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_�����]'))
ALTER TABLE [dbo].[�����������_�����]  WITH CHECK ADD  CONSTRAINT [������] FOREIGN KEY([�����_��������_����������])
REFERENCES [dbo].[���������] ([�����_��������_����������])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[������]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_�����]'))
ALTER TABLE [dbo].[�����������_�����] CHECK CONSTRAINT [������]
GO
/****** Object:  ForeignKey [R_16]    Script Date: 12/03/2013 05:52:31 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_������]'))
ALTER TABLE [dbo].[�����������_������]  WITH NOCHECK ADD  CONSTRAINT [R_16] FOREIGN KEY([���_������������_������])
REFERENCES [dbo].[�����������_�����] ([���_������������_������])
ON UPDATE CASCADE
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[�����������_������]'))
ALTER TABLE [dbo].[�����������_������] NOCHECK CONSTRAINT [R_16]
GO
