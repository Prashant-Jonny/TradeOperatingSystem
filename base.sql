USE [master]
GO
/****** Object:  Database [ComputerFirm]    Script Date: 11/19/2013 05:25:14 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'ComputerFirm')
BEGIN
CREATE DATABASE [ComputerFirm] ON  PRIMARY 
( NAME = N'ComputerFirm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ComputerFirm.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ComputerFirm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ComputerFirm_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  ForeignKey [Relationship_484]    Script Date: 11/19/2013 05:25:14 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[Товар]'))
ALTER TABLE [dbo].[Товар] DROP CONSTRAINT [Relationship_484]
GO
/****** Object:  ForeignKey [заключает]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Кредитный_договор]'))
ALTER TABLE [dbo].[Кредитный_договор] DROP CONSTRAINT [заключает]
GO
/****** Object:  ForeignKey [R_23]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] DROP CONSTRAINT [R_23]
GO
/****** Object:  ForeignKey [R_24]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] DROP CONSTRAINT [R_24]
GO
/****** Object:  ForeignKey [Relationship_456]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] DROP CONSTRAINT [Relationship_456]
GO
/****** Object:  ForeignKey [выдается_при]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] DROP CONSTRAINT [выдается_при]
GO
/****** Object:  ForeignKey [заключается_при]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] DROP CONSTRAINT [заключается_при]
GO
/****** Object:  ForeignKey [участвует_в]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[участвует_в]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] DROP CONSTRAINT [участвует_в]
GO
/****** Object:  ForeignKey [выдает]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_талон]'))
ALTER TABLE [dbo].[Гарантийный_талон] DROP CONSTRAINT [выдает]
GO
/****** Object:  ForeignKey [R_16]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_журнал]'))
ALTER TABLE [dbo].[Гарантийный_журнал] DROP CONSTRAINT [R_16]
GO
/****** Object:  View [dbo].[Товары_с_частой_поломкой]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Товары_с_частой_поломкой]'))
DROP VIEW [dbo].[Товары_с_частой_поломкой]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_вставка_Сервисного_центра_ОШИБКА]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_вставка_Сервисного_центра_ОШИБКА]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_вставка_Сервисного_центра_ОШИБКА]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_Добавление_сотрудника_]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_Добавление_сотрудника_]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_Добавление_сотрудника_]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_запись_в_гарантийный_журнал_ОШИБКА]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_запись_в_гарантийный_журнал_ОШИБКА]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_запись_в_гарантийный_журнал_ОШИБКА]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_Изменение_фамилии_Сотрудник]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_Изменение_фамилии_Сотрудник]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_Изменение_фамилии_Сотрудник]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_ПроверкаЛатиницы_Клиент_БЕЗ_ОШИБКИ]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_ПроверкаЛатиницы_Клиент_БЕЗ_ОШИБКИ]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_ПроверкаЛатиницы_Клиент_БЕЗ_ОШИБКИ]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_ПроверкаЛатиницы_Клиент_Ошибка]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_ПроверкаЛатиницы_Клиент_Ошибка]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_ПроверкаЛатиницы_Клиент_Ошибка]
GO
/****** Object:  StoredProcedure [dbo].[Триггер_удалить_поставщика]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_удалить_поставщика]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Триггер_удалить_поставщика]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Максимальная_цена_категории]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Максимальная_цена_категории]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_Максимальная_цена_категории]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Показать_Ближайшие_Заказы]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Показать_Ближайшие_Заказы]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_Показать_Ближайшие_Заказы]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Продажи_за_Год]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Продажи_за_Год]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_Продажи_за_Год]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Сформировать_прайс]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Сформировать_прайс]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_Сформировать_прайс]
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Товары_с_частой_поломкой]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Товары_с_частой_поломкой]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CURSOR_Товары_с_частой_поломкой]
GO
/****** Object:  View [dbo].[Max_Цены_по_категориям]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Max_Цены_по_категориям]'))
DROP VIEW [dbo].[Max_Цены_по_категориям]
GO
/****** Object:  StoredProcedure [dbo].[Выписать_гарантийный_талон]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Выписать_гарантийный_талон]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Выписать_гарантийный_талон]
GO
/****** Object:  StoredProcedure [dbo].[Зафиксировать_замену_по_гарантии]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зафиксировать_замену_по_гарантии]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Зафиксировать_замену_по_гарантии]
GO
/****** Object:  StoredProcedure [dbo].[Занести_запись_в_гарантийный_журнал]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Занести_запись_в_гарантийный_журнал]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Занести_запись_в_гарантийный_журнал]
GO
/****** Object:  StoredProcedure [dbo].[Зафиксировать_результаты_ремонта]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зафиксировать_результаты_ремонта]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Зафиксировать_результаты_ремонта]
GO
/****** Object:  StoredProcedure [dbo].[Количество_гарантийного_ремонта_по_категории]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Количество_гарантийного_ремонта_по_категории]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Количество_гарантийного_ремонта_по_категории]
GO
/****** Object:  View [dbo].[Список_вещей_на_гарантийной_замене]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Список_вещей_на_гарантийной_замене]'))
DROP VIEW [dbo].[Список_вещей_на_гарантийной_замене]
GO
/****** Object:  Table [dbo].[Гарантийный_журнал]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_журнал]'))
ALTER TABLE [dbo].[Гарантийный_журнал] DROP CONSTRAINT [R_16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Гарантийный_журнал]') AND type in (N'U'))
DROP TABLE [dbo].[Гарантийный_журнал]
GO
/****** Object:  StoredProcedure [dbo].[Зарегистрировать_покупку]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зарегистрировать_покупку]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Зарегистрировать_покупку]
GO
/****** Object:  StoredProcedure [dbo].[Продажи_за_Год]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_Год]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Продажи_за_Год]
GO
/****** Object:  StoredProcedure [dbo].[Продажи_за_Месяц_Года]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_Месяц_Года]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Продажи_за_Месяц_Года]
GO
/****** Object:  View [dbo].[Продажи_за_текущий_год]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_текущий_год]'))
DROP VIEW [dbo].[Продажи_за_текущий_год]
GO
/****** Object:  View [dbo].[Продажи_за_текущий_месяц]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_текущий_месяц]'))
DROP VIEW [dbo].[Продажи_за_текущий_месяц]
GO
/****** Object:  View [dbo].[Сотрудник_Прибыль]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Сотрудник_Прибыль]'))
DROP VIEW [dbo].[Сотрудник_Прибыль]
GO
/****** Object:  View [dbo].[Детали_наименьшего_количества]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Детали_наименьшего_количества]'))
DROP VIEW [dbo].[Детали_наименьшего_количества]
GO
/****** Object:  View [dbo].[Доля_покупок_по_кредитному_договору]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Доля_покупок_по_кредитному_договору]'))
DROP VIEW [dbo].[Доля_покупок_по_кредитному_договору]
GO
/****** Object:  StoredProcedure [dbo].[Есть_ли_товар]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Есть_ли_товар]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Есть_ли_товар]
GO
/****** Object:  StoredProcedure [dbo].[Оформить_заказ_товара]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Оформить_заказ_товара]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Оформить_заказ_товара]
GO
/****** Object:  View [dbo].[Показать_50_Ближайших_Заказов]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Показать_50_Ближайших_Заказов]'))
DROP VIEW [dbo].[Показать_50_Ближайших_Заказов]
GO
/****** Object:  StoredProcedure [dbo].[Показать_Ближайшие_Заказы]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Показать_Ближайшие_Заказы]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Показать_Ближайшие_Заказы]
GO
/****** Object:  Table [dbo].[Поставщик]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Поставщик]') AND type in (N'U'))
DROP TABLE [dbo].[Поставщик]
GO
/****** Object:  StoredProcedure [dbo].[Заключить_кредитный_договор]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Заключить_кредитный_договор]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Заключить_кредитный_договор]
GO
/****** Object:  StoredProcedure [dbo].[Зарегистрировать_Клиента]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зарегистрировать_Клиента]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Зарегистрировать_Клиента]
GO
/****** Object:  View [dbo].[Информация_о_Клиенте]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Информация_о_Клиенте]'))
DROP VIEW [dbo].[Информация_о_Клиенте]
GO
/****** Object:  View [dbo].[Информация_о_Сотруднике]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Информация_о_Сотруднике]'))
DROP VIEW [dbo].[Информация_о_Сотруднике]
GO
/****** Object:  View [dbo].[Клиенты_по_возрасту]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Клиенты_по_возрасту]'))
DROP VIEW [dbo].[Клиенты_по_возрасту]
GO
/****** Object:  View [dbo].[Количество_видов_отсутствующих_на_складе_товаров]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Количество_видов_отсутствующих_на_складе_товаров]'))
DROP VIEW [dbo].[Количество_видов_отсутствующих_на_складе_товаров]
GO
/****** Object:  StoredProcedure [dbo].[Максимальная_цена_категории]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Максимальная_цена_категории]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Максимальная_цена_категории]
GO
/****** Object:  StoredProcedure [dbo].[Минимальная_цена_категории]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Минимальная_цена_категории]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Минимальная_цена_категории]
GO
/****** Object:  StoredProcedure [dbo].[Отправить_в_магазин]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Отправить_в_магазин]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Отправить_в_магазин]
GO
/****** Object:  View [dbo].[Прайс]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Прайс]'))
DROP VIEW [dbo].[Прайс]
GO
/****** Object:  StoredProcedure [dbo].[Приёмка_Товара]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Приёмка_Товара]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Приёмка_Товара]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сотрудник]') AND type in (N'U'))
DROP TABLE [dbo].[Сотрудник]
GO
/****** Object:  Table [dbo].[Гарантийный_талон]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_талон]'))
ALTER TABLE [dbo].[Гарантийный_талон] DROP CONSTRAINT [выдает]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Гарантийный_талон]') AND type in (N'U'))
DROP TABLE [dbo].[Гарантийный_талон]
GO
/****** Object:  Table [dbo].[Продажа]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] DROP CONSTRAINT [выдается_при]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] DROP CONSTRAINT [заключается_при]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[участвует_в]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] DROP CONSTRAINT [участвует_в]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Продажа]') AND type in (N'U'))
DROP TABLE [dbo].[Продажа]
GO
/****** Object:  Table [dbo].[Кредитный_договор]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Кредитный_договор]'))
ALTER TABLE [dbo].[Кредитный_договор] DROP CONSTRAINT [заключает]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Кредитный_договор]') AND type in (N'U'))
DROP TABLE [dbo].[Кредитный_договор]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Клиент]') AND type in (N'U'))
DROP TABLE [dbo].[Клиент]
GO
/****** Object:  Table [dbo].[Заказ_Товар_Поставщик]    Script Date: 11/19/2013 05:25:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] DROP CONSTRAINT [R_23]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] DROP CONSTRAINT [R_24]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] DROP CONSTRAINT [Relationship_456]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]') AND type in (N'U'))
DROP TABLE [dbo].[Заказ_Товар_Поставщик]
GO
/****** Object:  Table [dbo].[Сервисный_центр]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сервисный_центр]') AND type in (N'U'))
DROP TABLE [dbo].[Сервисный_центр]
GO
/****** Object:  StoredProcedure [dbo].[Средняя_цена_категории]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Средняя_цена_категории]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Средняя_цена_категории]
GO
/****** Object:  View [dbo].[Средняя_Цена_по_категории]    Script Date: 11/19/2013 05:25:17 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Средняя_Цена_по_категории]'))
DROP VIEW [dbo].[Средняя_Цена_по_категории]
GO
/****** Object:  StoredProcedure [dbo].[Сформировать_прайс]    Script Date: 11/19/2013 05:25:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сформировать_прайс]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Сформировать_прайс]
GO
/****** Object:  Table [dbo].[Товар]    Script Date: 11/19/2013 05:25:14 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[Товар]'))
ALTER TABLE [dbo].[Товар] DROP CONSTRAINT [Relationship_484]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Товар]') AND type in (N'U'))
DROP TABLE [dbo].[Товар]
GO
/****** Object:  Table [dbo].[Товар]    Script Date: 11/19/2013 05:25:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Товар]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Товар](
	[ID_товара] [nvarchar](20) NOT NULL,
	[Название_товара] [nvarchar](150) NOT NULL,
	[Категория] [nvarchar](75) NOT NULL,
	[Количество_склад] [int] NULL,
	[Цена] [money] NULL,
	[Количество_магазин] [int] NULL,
	[Срок_гарантии] [int] NULL,
	[Код_сервисного_центра] [int] NULL,
 CONSTRAINT [XPKТовар] PRIMARY KEY CLUSTERED 
(
	[ID_товара] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF3010', N'МФУ A4 Canon i-SENSYS MF3010 (МФУ)', N'Монохромные_лазерные_МФУ', 18, 1880500.0000, 9, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF4410', N'МФУ A4 Canon i-SENSYS MF4410 (МФУ)', N'Монохромные_лазерные_МФУ', 15, 2172000.0000, 6, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF4450', N'МФУ A4 Canon i-SENSYS MF4450 (МФУ)', N'Монохромные_лазерные_МФУ', 13, 2443000.0000, 7, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF4550D', N'МФУ A4 Canon i-SENSYS MF4550D (МФУ/факс)', N'Монохромные_лазерные_МФУ', 12, 2359500.0000, NULL, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF4570DN', N'МФУ A4 Canon i-SENSYS MF4570DN (МФУ/факс)', N'Монохромные_лазерные_МФУ', 21, 3405500.0000, 12, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF4730', N'МФУ A4 Canon i-SENSYS MF4730 (МФУ)', N'Монохромные_лазерные_МФУ', 8, 2276000.0000, 5, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF4750', N'МФУ A4 Canon i-SENSYS MF4750 (МФУ/факс)', N'Монохромные_лазерные_МФУ', 22, 2784500.0000, 13, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'COCAMF5940DN', N'МФУ A4 Canon i-SENSYS MF5940DN (МФУ/факс)', N'Монохромные_лазерные_МФУ', 15, 7524500.0000, 9, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHP4844', N'Картридж C4844AE HP', N'Расходные_материалы', 16, 429000.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHP51645A', N'Картридж 51645A HP', N'Расходные_материалы', 10, 392000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHP6656ae', N'Картридж C6656AE HP', N'Расходные_материалы', 8, 257500.0000, 2, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHP6657ae', N'Картридж C6657AE HP', N'Расходные_материалы', 23, 422000.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC4092A', N'Картридж C4092A HP', N'Расходные_материалы', 20, 764000.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC6578AE', N'Картридж C6578A HP', N'Расходные_материалы', 14, 716500.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC6578DE', N'Картридж C6578D HP', N'Расходные_материалы', 16, 420000.0000, 11, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC7115A', N'Картридж C7115A HP', N'Расходные_материалы', 11, 832000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC7115X', N'Картридж C7115X HP', N'Расходные_материалы', 14, 886000.0000, 12, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8719HE', N'Картридж C8719HE  HP', N'Расходные_материалы', 23, 393000.0000, 13, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8727A', N'Картридж C8727AE  HP', N'Расходные_материалы', 10, 240000.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8728A', N'Картридж C8728AE  HP', N'Расходные_материалы', 23, 281000.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8765HE', N'Картридж C8765HE  HP', N'Расходные_материалы', 17, 278500.0000, 9, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8766HE', N'Картридж C8766HE  HP', N'Расходные_материалы', 13, 316000.0000, 9, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8767HE', N'Картридж C8767HE  HP', N'Расходные_материалы', 9, 396000.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8771HE', N'Картридж C8771HE  HP', N'Расходные_материалы', 7, 142000.0000, 3, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8772HE', N'Картридж C8772HE  HP', N'Расходные_материалы', 15, 142000.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC8773HE_', N'Картридж C8773HE  HP', N'Расходные_материалы', 8, 141500.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9351AE', N'Картридж C9351AE  HP', N'Расходные_материалы', 9, 199500.0000, 9, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9352AE', N'Картридж C9352AE  HP', N'Расходные_материалы', 9, 230500.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9361HE', N'Картридж C9361HE  HP', N'Расходные_материалы', 11, 252000.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9362HE', N'Картридж C9362HE  HP', N'Расходные_материалы', 14, 202000.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9363HE', N'Картридж C9363HE  HP', N'Расходные_материалы', 24, 449000.0000, 11, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9364HE', N'Картридж C9364HE  HP', N'Расходные_материалы', 13, 252000.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPC9369HE', N'Картридж C9369HE  HP', N'Расходные_материалы', 13, 361500.0000, 2, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCB335A', N'Картридж CB335HE  HP', N'Расходные_материалы', 12, 204500.0000, 11, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCB336HE', N'Картридж HP 140XL (CB336HE) черный', N'Расходные_материалы', 15, 395000.0000, 13, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCB337H', N'Картридж CB337H  HP', N'Расходные_материалы', 5, 240000.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCB338HE', N'Картридж НР 141XL (CB338HE) tri-colour magenta, yellow, cyan', N'Расходные_материалы', 4, 460500.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCB435A', N'Картридж CB435A  HP', N'Расходные_материалы', 8, 740000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCB436A', N'Картридж CB436A  HP', N'Расходные_материалы', 9, 801500.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC530HE', N'Картридж CC530A HP', N'Расходные_материалы', 17, 1463500.0000, 10, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC531HE', N'Картридж CC531HE HP', N'Расходные_материалы', 21, 1257500.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC532HE', N'Картридж CC532HE HP', N'Расходные_материалы', 11, 1257500.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC533HE', N'Картридж CC533HE HP', N'Расходные_материалы', 11, 1268500.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC640HE', N'Картридж CC640HE  HP', N'Расходные_материалы', 12, 192500.0000, 3, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC641HE', N'Картридж CC641HE  HP', N'Расходные_материалы', 24, 386000.0000, 9, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC643HE', N'Картридж CC643HE  HP', N'Расходные_материалы', 12, 233500.0000, 2, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCC644HE', N'Картридж CC644HE  HP', N'Расходные_материалы', 10, 438000.0000, 9, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCD972AE', N'Картридж CD972AE HP (№920XL) голубой', N'Расходные_материалы', 12, 154500.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCD973AE', N'Картридж CD973AE HP (№920XL) пурпурный', N'Расходные_материалы', 8, 154500.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCD974AE', N'Картридж CD974AE HP (№920XL) желтый', N'Расходные_материалы', 15, 154500.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCD975AE', N'Картридж CD975AE HP (№920XL) черный', N'Расходные_материалы', 24, 358000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE255A', N'Картридж CE255A HP', N'Расходные_материалы', 11, 1521000.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE278A', N'Картридж CE278A  HP', N'Расходные_материалы', 22, 843500.0000, 12, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE285A', N'Картридж CE285A  HP', N'Расходные_материалы', 11, 741000.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE310A', N'Картридж CE310A HP Black (черный)', N'Расходные_материалы', 6, 592000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE311A', N'Картридж CE311A HP Cyan (голубой)', N'Расходные_материалы', 7, 617000.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE312A', N'Картридж CE312A HP Yellow (желтый)', N'Расходные_материалы', 20, 617000.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE313A', N'Картридж CE313A HP Purple (фиолетовый)', N'Расходные_материалы', 9, 642000.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE505A', N'Картридж CE505A HP', N'Расходные_материалы', 7, 907500.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCE505X', N'Картридж CE505X HP', N'Расходные_материалы', 9, 1603000.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCF280X', N'Картридж CF280X  HP', N'Расходные_материалы', 14, 1938000.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCH561HE', N'Картридж HP 122 (CH561HE) черный', N'Расходные_материалы', 15, 126000.0000, 12, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCH562HE', N'Картридж HP 122 (CH562HE) цветной', N'Расходные_материалы', 24, 139500.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCH563HE', N'Картридж HP 122XL (CH563HE) черный - расширенный', N'Расходные_материалы', 14, 357000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPCH564HE', N'Картридж HP 122XL (CH564HE) цветной- расширенный', N'Расходные_материалы', 16, 348000.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ1338A', N'Картридж Q1338A  HP', N'Расходные_материалы', 23, 1709500.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ2612A', N'Картридж Q2612A  HP', N'Расходные_материалы', 14, 808000.0000, 14, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ2613A', N'Картридж Q2613A  HP', N'Расходные_материалы', 13, 880500.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ2613X', N'Картридж Q2613X  HP', N'Расходные_материалы', 22, 1038000.0000, 13, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ5949A', N'Картридж Q5949A  HP', N'Расходные_материалы', 17, 881500.0000, 12, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ5949X', N'Картридж Q5949X  HP', N'Расходные_материалы', 7, 1667500.0000, 6, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ6000A', N'Картридж Q6000A HP', N'Расходные_материалы', 25, 917000.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ6001A', N'Картридж Q6001A HP', N'Расходные_материалы', 12, 987500.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ6002A', N'Картридж Q6002A HP', N'Расходные_материалы', 18, 1002500.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ6003A', N'Картридж Q6003A HP', N'Расходные_материалы', 10, 990500.0000, 10, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ7551A', N'Картридж Q7551A  HP', N'Расходные_материалы', 21, 1374500.0000, 10, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ7551X', N'Картридж Q7551X  HP', N'Расходные_материалы', 11, 2016000.0000, 9, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ7553A', N'Картридж Q7553A  HP', N'Расходные_материалы', 11, 872000.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRHPQ7553X', N'Картридж Q7553X  HP', N'Расходные_материалы', 12, 1623500.0000, 11, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSCLT-M406S', N'Картридж  Samsung CLT-M406S пурпурный для серий CLP-360 и CLX-3300 на 1000стр', N'Расходные_материалы', 9, 608500.0000, 3, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSCLT-Y406S', N'Картридж  Samsung CLT-Y406S желтый для серий CLP-360 и CLX-3300 на 1000стр', N'Расходные_материалы', 10, 638500.0000, 5, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSCLT-С406S', N'Картридж  Samsung CLT-С406S голубой для серий CLP-360 и CLX-3300 на 1000стр', N'Расходные_материалы', 14, 585500.0000, 9, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSM1210D3', N'Картридж Samsung ML-1210D3 для ML-1010/1210/1220M/1250/1430  2500стр.', N'Расходные_материалы', 12, 633000.0000, 5, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSM1610D2', N'Картридж Samsung ML-1610D2 для ML-1610/1615  2000стр.', N'Расходные_материалы', 17, 638500.0000, 12, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSM2010D3', N'Картридж Samsung ML-2010D3', N'Расходные_материалы', 15, 849000.0000, 13, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSM4100D3', N'Картридж Samsung SCX-4100 D3', N'Расходные_материалы', 13, 717500.0000, 4, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSM4200A', N'Картридж  Samsung SCX-D4200A для SCX-4200/4220  3000стр.', N'Расходные_материалы', 15, 802500.0000, 5, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMC407S', N'Картридж Samsung CLT-C407S для CLP-320/320N/325/ CLX-3185/3185N/3185FN  1000стр.', N'Расходные_материалы', 3, 494000.0000, 2, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMC409S', N'Картридж Samsung CLT-C409S для CLP-310/315/ CLX-3170/3175  1000стр.', N'Расходные_материалы', 20, 568500.0000, 7, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD105L', N'Картридж  Samsung MLT-D105L для SCX-46хх/ML-19хх/ML-25xx/SF-650  2500стр', N'Расходные_материалы', 12, 934500.0000, 4, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD105S', N'Картридж  Samsung MLT-D105S для SCX-46хх/ML-19хх/ML-25xx/SF-650  1500стр', N'Расходные_материалы', 5, 833000.0000, 3, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD108S', N'Картридж  Samsung MLT-D108S для серий  ML-1640/2240  2500стр.', N'Расходные_материалы', 12, 664500.0000, 6, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD109S', N'Картридж  Samsung MLT-D109S для SCX-4300  2000стр', N'Расходные_материалы', 13, 602000.0000, 10, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD1630A', N'Картридж Samsung ML-D1630A', N'Расходные_материалы', 9, 872000.0000, 5, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD205E', N'Картридж  Samsung MLT-D205E для ML-3710D/3710ND / SCX-5637FR  10000стр.', N'Расходные_материалы', 19, 2057000.0000, 12, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD205L', N'Картридж  Samsung MLT-D205L для ML-3710D/3710ND / SCX-5637FR  5000стр.', N'Расходные_материалы', 14, 1350000.0000, 10, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD205S', N'Картридж  Samsung MLT-D205S для ML-3310D/3310ND/3710D/3710ND/SCX-4833FD/4833FR/5637FR  2000стр', N'Расходные_материалы', 19, 629000.0000, 14, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD209L', N'Картридж  Samsung MLT-D209L для ML-2855ND/SCX-4824FN/4828FN  5000стр.', N'Расходные_материалы', 16, 1315000.0000, 12, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMD209S', N'Картридж  Samsung MLT-D209S для ML-2855ND/SCX-4824FN/4828FN  2000стр.', N'Расходные_материалы', 8, 891000.0000, 4, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMK407S', N'Картридж Samsung CLT-K407S для CLP-320/320N/325/ CLX-3185/3185N/3185FN  1500стр.', N'Расходные_материалы', 10, 554500.0000, 6, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMK409S', N'Картридж Samsung CLT-K409S для CLP-310/315/ CLX-3170/3175  1500стр.', N'Расходные_материалы', 25, 656000.0000, 13, 0, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMLD2850A', N'Картридж Samsung ML-D2850A', N'Расходные_материалы', 18, 754000.0000, 8, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMLD3470B', N'Картридж Samsung ML-D3470B', N'Расходные_материалы', 19, 1975500.0000, 6, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMLT101S', N'Картридж  Samsung MLT-D101S для серий ML-216X/ SCX-340X на 1500стр', N'Расходные_материалы', 9, 1070500.0000, 8, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMLT104S', N'Картридж  Samsung MLT-D104S для ML-1660/1665/SCX-3200/3205/3207  1000стр.', N'Расходные_материалы', 24, 851500.0000, 15, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMLT104X', N'Картридж  Samsung MLT-D104X для ML-1660/1665/SCX-3200/3205/3207  700стр.', N'Расходные_материалы', 16, 503000.0000, 7, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMLTD117S', N'Картридж  Samsung MLT-D117S для SCX-4650/4655  2500стр.', N'Расходные_материалы', 5, 988500.0000, 2, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMM407S', N'Картридж Samsung CLT-M407S для CLP-320/320N/325/ CLX-3185/3185N/3185FN  1000стр.', N'Расходные_материалы', 8, 496500.0000, 2, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMM409S', N'Картридж Samsung CLT-M409S для CLP-310/315/ CLX-3170/3175  1000стр.', N'Расходные_материалы', 24, 532500.0000, 10, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMMLT-D119S', N'Картридж Samsung MLT-D119S для ML-1615/2015/2510/2570 SCX-4321/4521F', N'Расходные_материалы', 15, 618000.0000, 12, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMY407S', N'Картридж Samsung CLT-Y407S для CLP-320/320N/325/ CLX-3185/3185N/3185FN  1000стр.', N'Расходные_материалы', 7, 446000.0000, 5, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'CRSMY409S', N'Картридж Samsung CLT-Y409S для CLP-310/315/ CLX-3170/3175  1000стр.', N'Расходные_материалы', 10, 510000.0000, 6, 0, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS2103', N'D-Link Сетевая камера DCS-2103', N'IP-камеры', 7, 1110000.0000, 19, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS2130', N'D-Link Сетевая камера DCS-2130', N'IP-камеры', 11, 1404000.0000, 7, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS2132L', N'D-Link Сетевая камера DCS-2132L', N'IP-камеры', 15, 1723000.0000, 13, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS2210', N'D-Link Сетевая камера DCS-2103', N'IP-камеры', 5, 2276000.0000, NULL, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS2230', N'D-Link Сетевая камера DCS-2230', N'IP-камеры', 4, 2151000.0000, 1, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS2310L', N'D-Link Сетевая камера DCS-2310L', N'IP-камеры', 8, 2412000.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS5222L', N'D-Link Сетевая камера DCS-5222L', N'IP-камеры', 9, 2412000.0000, NULL, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS7110', N'D-Link Сетевая камера DCS-7110', N'IP-камеры', 12, 3674500.0000, 3, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS930L', N'D-Link Сетевая камера DCS-930L', N'IP-камеры', 17, 539000.0000, 10, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS932L', N'D-Link Сетевая камера DCS-932L', N'IP-камеры', 21, 738000.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMDLDCS942L', N'D-Link Сетевая камера DCS-942L', N'IP-камеры', 11, 1085500.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTNIP312', N'TrendNet Сетевая камера TV-IP312', N'IP-камеры', 15, 1888000.0000, 5, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTNIP512WN', N'TrendNet Сетевая камера TV-IP512WN', N'IP-камеры', 24, 1945000.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTPLSC3130', N'TP-Link Сетевая камера TL-SC3130', N'IP-камеры', 24, 1025000.0000, 9, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTPLSC3130G', N'TP-Link Сетевая камера TL-SC3130G', N'IP-камеры', 12, 1147000.0000, 2, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTPLSC3171', N'TP-Link Сетевая камера TL-SC3171', N'IP-камеры', 10, 1337500.0000, 9, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTPLSC3430', N'TP-Link Сетевая камера TL-SC3430', N'IP-камеры', 12, 1376500.0000, 5, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'IPCAMTPLSC4171G', N'TP-Link Сетевая камера TL-SC4171G', N'IP-камеры', 8, 2722500.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMCLP-365', N' Samsung Color CLP-365', N'Цветные_лазерные_принтеры', 14, 2019500.0000, 10, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMCLP-365W', N' Samsung Color CLP-365W', N'Цветные_лазерные_принтеры', 19, 2474500.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMCLP-415N', N' Samsung Color CLP-415N', N'Цветные_лазерные_принтеры', 16, 2950000.0000, 12, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMML2160', N' Samsung ML-2160/XEV ', N'Монохромные_лазерные_принтеры', 15, 922500.0000, 5, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMML-2950ND', N' Samsung ML-2950ND(R) ', N'Монохромные_лазерные_принтеры', 15, 1737500.0000, 13, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMML-2955DW', N' Samsung ML-2955DW ', N'Монохромные_лазерные_принтеры', 13, 2006000.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX3400', N'МФУ A4 Samsung SCX-3400/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 7, 1555000.0000, 3, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX3400F', N'МФУ A4 Samsung SCX-3400F/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 7, 2130000.0000, 7, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX3405F', N'МФУ A4 Samsung SCX-3405F/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 15, 2087000.0000, 7, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX-3405FW', N'МФУ A4 Samsung SCX-3405FW/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 13, 2359500.0000, 2, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX4650N', N'МФУ A4 Samsung SCX-4650N/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 25, 2286500.0000, 8, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX4655FN', N'МФУ A4 Samsung SCX-4655FN/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 7, 2380500.0000, 5, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX4727FD', N'МФУ A4 Samsung SCX-4727FD (МФУ, факс)', N'Монохромные_лазерные_МФУ', 11, 2547500.0000, 4, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX4833FD', N'МФУ A4 Samsung SCX-4833FD/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 10, 3664000.0000, 8, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'MFSMSCX4833FR', N'МФУ A4 Samsung SCX-4833FR/XEV (МФУ)', N'Монохромные_лазерные_МФУ', 18, 3974500.0000, 7, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB1530RUB', N'МФУ Panasonic KX-MB1530RUB   МФУ, факс/PC-факс) USB2.0', N'Монохромные_лазерные_МФУ', 15, 2276000.0000, 15, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB2000RUB', N'МФУ Panasonic KX-MB2000RUB МФУ', N'Монохромные_лазерные_МФУ', 23, 1800000.0000, 5, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB2000RUW', N'МФУ Panasonic KX-MB2000RUW МФУ', N'Монохромные_лазерные_МФУ', 18, 1802000.0000, 15, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB2020RU', N'МФУ Panasonic KX-MB2020RU МФУ,PC-факс, АОН)', N'Монохромные_лазерные_МФУ', 9, 1985000.0000, 6, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB2020RUB', N'МФУ Panasonic KX-MB2020RUB МФУ,PC-факс, АОН)', N'Монохромные_лазерные_МФУ', 15, 1955500.0000, 2, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB2030RU', N'МФУ Panasonic KX-MB2030RU МФУ, PC-факс, АОН)', N'Монохромные_лазерные_МФУ', 17, 2763500.0000, 3, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PANASKX-MB2051RUB', N'МФУ Panasonic KX-MB2051RUB   МФУ радиотрубка АО (30 мин.), AOH', N'Монохромные_лазерные_МФУ', 14, 2805000.0000, 4, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRCNLBP6020B', N'Canon I-SENSYS LBP6020B', N'Монохромные_лазерные_принтеры', 10, 1147000.0000, 10, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRCNLBP6020W', N'Canon I-SENSYS LBP6020', N'Монохромные_лазерные_принтеры', 21, 1135500.0000, 10, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRCNLBP7100Cn', N' Canon I-SENSYS LBP7100Cn', N'Цветные_лазерные_принтеры', 5, 1980500.0000, 3, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRCNLBP7110Cw', N' Canon I-SENSYS LBP7110Cw ', N'Цветные_лазерные_принтеры', 12, 2474500.0000, 1, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJ2035', N'HP LaserJet P2035 (CE461A)', N'Монохромные_лазерные_принтеры', 11, 2380500.0000, 9, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJ3015D', N'HP LaserJet P3015D (CE526A)', N'Монохромные_лазерные_принтеры', 11, 5982500.0000, 5, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJ3015DN', N'HP LaserJet P3015DN (CE528A)', N'Монохромные_лазерные_принтеры', 12, 7090000.0000, 11, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJCM251n', N' HP Color LaserJet Pro M251n (CF146A)', N'Цветные_лазерные_принтеры', 13, 2795000.0000, 10, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJCM351a', N' HP Color LaserJet Pro 300 M351a (CE955A)', N'Цветные_лазерные_принтеры', 9, 3705500.0000, 5, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJCM451nw', N' HP Color LaserJet Pro M451nw (CE956A)', N'Цветные_лазерные_принтеры', 19, 4668000.0000, 12, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1132', N'MФУ A4 HP LaserJet Pro M1132 (МФУ A4) - CE847A', N'Монохромные_лазерные_МФУ', 22, 1889000.0000, 3, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1132_RU', N'MФУ A4 HP LaserJet Pro M1132 RU (МФУ A4) - CE847A#ACB', N'Монохромные_лазерные_МФУ', 24, 1977500.0000, 7, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1212NF', N'MФУ A4 HP LaserJet Pro M1212nf (МФУ A4) - CE841A', N'Монохромные_лазерные_МФУ', 13, 2370000.0000, 12, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1212NF_RU', N'MФУ A4 HP LaserJet Pro M1212nf RU (МФУ A4) - CE841A#ACB', N'Монохромные_лазерные_МФУ', 10, 2600000.0000, 5, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1214MFH', N'MФУ А4 HP LaserJet M1214nfh  (МФУ, сетевой) (CE842A)', N'Монохромные_лазерные_МФУ', 12, 2701500.0000, 6, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1217NFW_RU', N'MФУ A4 HP LaserJet Pro M1217nfw RU МФУ A4,  CE844A#ACB', N'Монохромные_лазерные_МФУ', 16, 2857000.0000, 11, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1536DNF', N'MФУ А4 HP LaserJet M1536dnf MFP (МФУ, сетевой) (CE538A)', N'Монохромные_лазерные_МФУ', 6, 3240000.0000, 6, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJM1536DNF_RU', N'MФУ A4 HP LaserJet Pro M1536dnf RU (МФУ A4 CE538A#ACB', N'Монохромные_лазерные_МФУ', 21, 3384500.0000, 13, 12, 5)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJP1102', N'HP LaserJet Pro P1102 (CE651A)', N'Монохромные_лазерные_принтеры', 23, 1147000.0000, 7, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJP1102_RU', N'HP LaserJet Pro P1102 RU CE651A#ACB', N'Монохромные_лазерные_принтеры', 7, 1233000.0000, 6, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJP1102W_CE658A', N'HP LaserJet Pro P1102W CE658A', N'Монохромные_лазерные_принтеры', 9, 1397000.0000, 3, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJPM401a', N'HP LaserJet Pro 400 M401a (CF270A)', N'Монохромные_лазерные_принтеры', 14, 2670500.0000, 9, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJPM401D', N' HP LaserJet Pro 400 M401d (CF274A)  замена P2055D', N'Монохромные_лазерные_принтеры', 12, 3002000.0000, 5, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRHPLJPM401DN', N' HP LaserJet Pro 400 M401dn (CF278A)  замена P2055DN', N'Монохромные_лазерные_принтеры', 17, 3488000.0000, 12, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRSM3310D', N' Samsung ML-3310D/XEV ', N'Монохромные_лазерные_принтеры', 3, 2172000.0000, 1, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRSM3310ND', N' Samsung ML-3310ND/XEV ', N'Монохромные_лазерные_принтеры', 20, 2328500.0000, 7, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'PRSM3710ND', N' Samsung ML-3710ND/XEV ', N'Монохромные_лазерные_принтеры', 12, 3177500.0000, 4, 12, 1)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWin8Pro32', N'FQC-05936 Windows 8 Pro 32bit Russian OEI', N'Операционные_Системы', 12, 1508500.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWin8Pro64', N'FQC-05972 Windows 8 Pro 64bit Russian OEI', N'Операционные_Системы', 18, 1544500.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWin8SL32', N'4HR-00053 Windows 8 SL 32bit Russian OEI', N'Операционные_Системы', 17, 875000.0000, 12, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWin8SL64', N'4HR-00066 Windows 8 SL 64bit Russian OEI', N'Операционные_Системы', 25, 875000.0000, 7, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinHB7_32bit', N'F2C-00884 Win Home Basic 7 SP1 32-bit Russian 1pk DSP OEI DVD', N'Операционные_Системы', 24, 867500.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinHB7_64bit', N'F2C-00886 Win Home Basic 7 SP1 64-bit Russian CIS and Georgia 1pk DSP OEI DVD', N'Операционные_Системы', 12, 868500.0000, 5, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinHP7_32bit', N'Win Home Prem 7 32-bit Russian Single package DSP OEI DVD (GFC-00642 / GFC-02089)', N'Операционные_Системы', 24, 1036000.0000, 11, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinHP7_64bit', N'GFC-02091 Win Home Prem 7 SP1 64-bit Russian CIS and Georgia 1pk DSP OEI DVD', N'Операционные_Системы', 25, 1065000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinHP7_box', N'Windows Home Prem 7 Russian DVD SP1 (GFC-02398)', N'Операционные_Системы', 13, 1560500.0000, 8, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinPro7_32bit', N'FQC-04671Win Pro 7 SP1 32-bit Russian CIS and Georgia 1pk DSP OEI DVD)', N'Операционные_Системы', 9, 1502000.0000, 4, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinPro7_64bit', N'FQC-04673 Win Pro 7 SP1 64-bit Russian CIS and Georgia 1pk DSP OEI DVD', N'Операционные_Системы', 7, 1520000.0000, NULL, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinPro7_box', N'FQC-00265 Windows Pro 7 Russian DVD  / FQC-05347 Win Pro 7 Russian Russia Only DVD', N'Операционные_Системы', 22, 2433000.0000, 13, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWinUlt7_64bit', N'ПО MS Win Ultimate 7 SP1 64-bit Russian 1pk DSP OEI DVD (GLC-01860)', N'Операционные_Системы', 14, 1957500.0000, 14, 12, NULL)
INSERT [dbo].[Товар] ([ID_товара], [Название_товара], [Категория], [Количество_склад], [Цена], [Количество_магазин], [Срок_гарантии], [Код_сервисного_центра]) VALUES (N'SFMSWS2008_R2', N'P73-05121 Windows Server Std 2008 R2 w/SP1 x64 Russian 1pk DSP OEI DVD 1-4CPU 5 Clt', N'Операционные_Системы', 16, 7266000.0000, 8, 12, NULL)
/****** Object:  StoredProcedure [dbo].[Сформировать_прайс]    Script Date: 11/19/2013 05:25:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сформировать_прайс]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Сформировать_прайс]
AS
BEGIN
	Select  (Select COUNT([Название_товара]) 
				From [Товар]) as ''Общее количество товаров'',
			[Название_товара],
			[Категория],
			[Количество_склад]+[Количество_магазин] as "Количество",
			[Цена],
			[Срок_гарантии]
	   From [Товар]
	   Order by  [Категория] ASC
	   
	 
END
' 
END
GO
/****** Object:  View [dbo].[Средняя_Цена_по_категории]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Средняя_Цена_по_категории]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Средняя_Цена_по_категории]
AS
SELECT     Категория, AVG(Цена) AS [Средняя цена]
FROM         dbo.Товар
GROUP BY Категория
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Средняя_Цена_по_категории', NULL,NULL))
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
         Begin Table = "Товар"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Средняя_Цена_по_категории'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Средняя_Цена_по_категории', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Средняя_Цена_по_категории'
GO
/****** Object:  StoredProcedure [dbo].[Средняя_цена_категории]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Средняя_цена_категории]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Средняя_цена_категории]
	@Категория_товара [nvarchar](75)
AS
BEGIN
	SELECT AVG([Товар].[Цена]) FROM dbo.[Товар] WHERE (@Категория_товара=Категория)
END
' 
END
GO
/****** Object:  Table [dbo].[Сервисный_центр]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сервисный_центр]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Сервисный_центр](
	[Код_сервисного_центра] [int] IDENTITY(1,1) NOT NULL,
	[Название_сервисного_центра] [nvarchar](50) NOT NULL,
	[Адрес] [nvarchar](100) NULL,
	[Телефон] [nvarchar](20) NULL,
 CONSTRAINT [XPKСервисный_центр] PRIMARY KEY CLUSTERED 
(
	[Код_сервисного_центра] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Сервисный_центр] ON
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (1, N'Элси (Asus)', N'Могилёв, ул. Лепешинского, 12', N'(0222) 25-91-05')
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (2, N'ЧПУП "Система сервис(Samsung)', N'Могилёв, ул. Ленинская, 29а, 12', N'(0222) 31-05-98')
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (3, N'ЦТИ (Sony)', N'г. Минск, ул. Короля 26', N'(017) 210-56-78 ')
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (4, N'ОДО"КВИНТАСТАДОР"', N'г. Минск, ул. Гикало, 1', N'(017) 284-42-00')
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (5, N'ООО "Компьютеры и периферия (HP)"', N'г. Минск, 1-ый Измайловский пер, д. 51, корп. 5', N' (017) 210 1146')
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (6, N'СЗАО «БелАВМ»', N'Минск, пр-т Машерова, 25', N'+375 (17) 283-22-45 ')
INSERT [dbo].[Сервисный_центр] ([Код_сервисного_центра], [Название_сервисного_центра], [Адрес], [Телефон]) VALUES (7, N'Оффиц. предст. D-link Inc.', N'Минск, пр-т Независимости,д.169,оф.801', N'тел.(17)218-13-61')
SET IDENTITY_INSERT [dbo].[Сервисный_центр] OFF
/****** Object:  Trigger [Русскоязычное_название]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Русскоязычное_название]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Русскоязычное_название]  
   ON   [dbo].[Сервисный_центр]
   FOR INSERT
AS 
BEGIN TRANSACTION
		DECLARE @position int, @string nvarchar(50), @end_position int
SET @position = 1 
SET @string = (Select Название_сервисного_центра
				from inserted )
SET @end_position = PATINDEX ( '' '' , @string )

WHILE (@position <= @end_position)
   BEGIN
	IF ( ASCII(SUBSTRING(@string, @position, 1)) >127)
	goto error
 SET @position = @position + 1
   END
   
Error:
begin
	Raiserror (''Первое слово должно быть русскоязычным'',1,16)
	rollback transaction
End'
GO
/****** Object:  Table [dbo].[Заказ_Товар_Поставщик]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Заказ_Товар_Поставщик](
	[Код_поставщика] [int] NOT NULL,
	[Количество_заказано] [int] NULL,
	[ID_товара] [nvarchar](20) NOT NULL,
	[ID_Заказа] [int] IDENTITY(1,1) NOT NULL,
	[Дата_заказа] [datetime] NULL,
	[Номер_паспорта_клиента] [nvarchar](15) NOT NULL,
 CONSTRAINT [XPKЗаказ_Товар_Поставщик] PRIMARY KEY CLUSTERED 
(
	[ID_Заказа] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Заказ_Товар_Поставщик] ON
INSERT [dbo].[Заказ_Товар_Поставщик] ([Код_поставщика], [Количество_заказано], [ID_товара], [ID_Заказа], [Дата_заказа], [Номер_паспорта_клиента]) VALUES (3, 2, N'CRHP51645A', 2, CAST(0x0000A24A013711CA AS DateTime), N'KB1234567890')
INSERT [dbo].[Заказ_Товар_Поставщик] ([Код_поставщика], [Количество_заказано], [ID_товара], [ID_Заказа], [Дата_заказа], [Номер_паспорта_клиента]) VALUES (2, 1, N'CRHPC8766HE', 9, CAST(0x0000A25300B2AEF8 AS DateTime), N'KB1234567890')
INSERT [dbo].[Заказ_Товар_Поставщик] ([Код_поставщика], [Количество_заказано], [ID_товара], [ID_Заказа], [Дата_заказа], [Номер_паспорта_клиента]) VALUES (1, 1, N'PRHPLJCM351a', 10, CAST(0x0000A247013711CA AS DateTime), N'KB1234567890')
INSERT [dbo].[Заказ_Товар_Поставщик] ([Код_поставщика], [Количество_заказано], [ID_товара], [ID_Заказа], [Дата_заказа], [Номер_паспорта_клиента]) VALUES (4, 4, N'SFMSWinHB7_32bit', 11, CAST(0x0000A25B012A0110 AS DateTime), N'KB1234567890')
INSERT [dbo].[Заказ_Товар_Поставщик] ([Код_поставщика], [Количество_заказано], [ID_товара], [ID_Заказа], [Дата_заказа], [Номер_паспорта_клиента]) VALUES (6, 4, N'SFMSWinPro7_64bit', 12, CAST(0x0000A265013711CA AS DateTime), N'KB1234567890')
INSERT [dbo].[Заказ_Товар_Поставщик] ([Код_поставщика], [Количество_заказано], [ID_товара], [ID_Заказа], [Дата_заказа], [Номер_паспорта_клиента]) VALUES (5, 2, N'PANASKX-MB1530RUB', 13, CAST(0x0000A2620131938A AS DateTime), N'KB1234567890')
SET IDENTITY_INSERT [dbo].[Заказ_Товар_Поставщик] OFF
/****** Object:  Table [dbo].[Клиент]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Клиент]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Клиент](
	[ФИО_клиента] [nvarchar](20) NULL,
	[Дата_рождения] [datetime] NULL,
	[Адрес_клиента] [nvarchar](100) NULL,
	[Телефон_домашний] [nvarchar](15) NULL,
	[Телефон_мобильный] [nvarchar](20) NULL,
	[Номер_паспорта_клиента] [nvarchar](15) NOT NULL,
 CONSTRAINT [XPKКлиент] PRIMARY KEY CLUSTERED 
(
	[Номер_паспорта_клиента] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Клиент] ([ФИО_клиента], [Дата_рождения], [Адрес_клиента], [Телефон_домашний], [Телефон_мобильный], [Номер_паспорта_клиента]) VALUES (N'Степанов С.С', CAST(0x0000787B00000000 AS DateTime), N'Могилёв, Димитрова 23', N'483249', N'+375259364593', N'KB1234567890')
INSERT [dbo].[Клиент] ([ФИО_клиента], [Дата_рождения], [Адрес_клиента], [Телефон_домашний], [Телефон_мобильный], [Номер_паспорта_клиента]) VALUES (N'Жукова Ю.С', CAST(0x00007E7900000000 AS DateTime), N'Могилёв, Пушкина 35', N'278165', N'+375291801723', N'KB2343652452')
INSERT [dbo].[Клиент] ([ФИО_клиента], [Дата_рождения], [Адрес_клиента], [Телефон_домашний], [Телефон_мобильный], [Номер_паспорта_клиента]) VALUES (N'Новый', CAST(0x000072F000000000 AS DateTime), N'Могилёв', N'464837', N'3264874', N'qw123456789')
/****** Object:  Table [dbo].[Кредитный_договор]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Кредитный_договор]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Кредитный_договор](
	[Код_договора] [int] IDENTITY(1,1) NOT NULL,
	[Ежемесячная_выплата] [money] NULL,
	[Первоначальный_взнос] [money] NULL,
	[Срок_оплаты] [int] NULL,
	[Номер_паспорта_клиента] [nvarchar](15) NOT NULL,
 CONSTRAINT [XPKКредитный_договор] PRIMARY KEY CLUSTERED 
(
	[Код_договора] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Кредитный_договор] ON
INSERT [dbo].[Кредитный_договор] ([Код_договора], [Ежемесячная_выплата], [Первоначальный_взнос], [Срок_оплаты], [Номер_паспорта_клиента]) VALUES (10, 230000.0000, 0.0000, 100, N'KB1234567890')
SET IDENTITY_INSERT [dbo].[Кредитный_договор] OFF
/****** Object:  Table [dbo].[Продажа]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Продажа]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Продажа](
	[Цена] [money] NULL,
	[Количество] [int] NULL,
	[ID_товара] [nvarchar](20) NOT NULL,
	[Код_договора] [int] NULL,
	[Тип_оплаты] [nvarchar](30) NULL,
	[Код_гарантийного_талона] [int] NOT NULL,
 CONSTRAINT [XPKПродажа] PRIMARY KEY CLUSTERED 
(
	[ID_товара] ASC,
	[Код_гарантийного_талона] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Продажа] ([Цена], [Количество], [ID_товара], [Код_договора], [Тип_оплаты], [Код_гарантийного_талона]) VALUES (832000.0000, 1, N'CRHPC7115A', NULL, N'Наличный', 4)
INSERT [dbo].[Продажа] ([Цена], [Количество], [ID_товара], [Код_договора], [Тип_оплаты], [Код_гарантийного_талона]) VALUES (638500.0000, 1, N'CRSM1610D2', NULL, N'Наличный', 5)
INSERT [dbo].[Продажа] ([Цена], [Количество], [ID_товара], [Код_договора], [Тип_оплаты], [Код_гарантийного_талона]) VALUES (1147000.0000, 2, N'IPCAMTPLSC3130G', NULL, N'Наличный', 6)
/****** Object:  Table [dbo].[Гарантийный_талон]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Гарантийный_талон]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Гарантийный_талон](
	[Дата_время] [datetime] NOT NULL,
	[Номер_паспорта_сотрудника] [nvarchar](15) NOT NULL,
	[Код_гарантийного_талона] [int] IDENTITY(1,1) NOT NULL,
	[Серийный_номер_экземпляра] [nvarchar](20) NOT NULL,
 CONSTRAINT [XPKГарантийный_талон] PRIMARY KEY CLUSTERED 
(
	[Код_гарантийного_талона] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Гарантийный_талон] ON
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A1E100000000 AS DateTime), N'KB1532550', 4, N'UI37YFG38FHB3IFN')
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A1E500000000 AS DateTime), N'KB1532550', 5, N'G39VBWRUJ74BF93N')
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A26200000000 AS DateTime), N'KB1532550', 6, N'832TBW875NWFEOW3')
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A1E400000000 AS DateTime), N'KB1532550', 7, N'03BF673L689DS48I')
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A1EE00000000 AS DateTime), N'KB1532550', 8, N'04HBG8WEKG74KRY4')
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A1E100000000 AS DateTime), N'KB1532550', 9, N'9VE67G3IYG238N8W')
INSERT [dbo].[Гарантийный_талон] ([Дата_время], [Номер_паспорта_сотрудника], [Код_гарантийного_талона], [Серийный_номер_экземпляра]) VALUES (CAST(0x0000A1E200000000 AS DateTime), N'KB1532550', 10, N'984E3TY5N34MQPV8')
SET IDENTITY_INSERT [dbo].[Гарантийный_талон] OFF
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Сотрудник]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Сотрудник](
	[Номер_паспорта_сотрудника] [nvarchar](15) NOT NULL,
	[ФИО_сотрудника] [nvarchar](50) NOT NULL,
	[Дата_рождения] [datetime] NOT NULL,
	[Адрес_сотрудника] [nvarchar](100) NULL,
	[Телефон_домашний] [varchar](20) NULL,
	[Телефон_мобильный] [varchar](20) NULL,
	[Должность] [nvarchar](50) NULL,
 CONSTRAINT [XPKСотрудник] PRIMARY KEY CLUSTERED 
(
	[Номер_паспорта_сотрудника] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Сотрудник] ([Номер_паспорта_сотрудника], [ФИО_сотрудника], [Дата_рождения], [Адрес_сотрудника], [Телефон_домашний], [Телефон_мобильный], [Должность]) VALUES (N'KB1532550', N'ЖУКОВ РОМАН', CAST(0x000084DE00000000 AS DateTime), N'Могилёв, пр-т Пушкина, 35', N'453919', N'+375296580681', N'Мастер по ремонту оргтехники')
INSERT [dbo].[Сотрудник] ([Номер_паспорта_сотрудника], [ФИО_сотрудника], [Дата_рождения], [Адрес_сотрудника], [Телефон_домашний], [Телефон_мобильный], [Должность]) VALUES (N'КВ1545374', N'Краснов О.О.', CAST(0x00006E2000000000 AS DateTime), N'Могилёв, пр-т Непокорённых, 10', N'440516', N'+375259465161', N'Мастер по ремонту оргтехники')
INSERT [dbo].[Сотрудник] ([Номер_паспорта_сотрудника], [ФИО_сотрудника], [Дата_рождения], [Адрес_сотрудника], [Телефон_домашний], [Телефон_мобильный], [Должность]) VALUES (N'КВ1684611', N'Кокоренко О.С.', CAST(0x0000707C00000000 AS DateTime), N'Могилёв, Крупской, 95', N'702325', N'+375292436886', N'Глав.Бухгалтер')
INSERT [dbo].[Сотрудник] ([Номер_паспорта_сотрудника], [ФИО_сотрудника], [Дата_рождения], [Адрес_сотрудника], [Телефон_домашний], [Телефон_мобильный], [Должность]) VALUES (N'КВ1685416', N'Дмитров Е.А.', CAST(0x00007CCA00000000 AS DateTime), N'Могилёв, пр-т Мира, 15', N'656654', N'+375229466185', N'Менеджер по работе с Клиентами')
INSERT [dbo].[Сотрудник] ([Номер_паспорта_сотрудника], [ФИО_сотрудника], [Дата_рождения], [Адрес_сотрудника], [Телефон_домашний], [Телефон_мобильный], [Должность]) VALUES (N'КВ1767768', N'Новицкая Е.А.', CAST(0x00007CA100000000 AS DateTime), N'Могилёв, пр-т Дмитрова, 29', N'202125', N'+375299431361', N'Бухгалтер')
INSERT [dbo].[Сотрудник] ([Номер_паспорта_сотрудника], [ФИО_сотрудника], [Дата_рождения], [Адрес_сотрудника], [Телефон_домашний], [Телефон_мобильный], [Должность]) VALUES (N'КВ1896165', N'Кокоренко А.А.', CAST(0x00006D8900000000 AS DateTime), N'Могилёв, Крупской, 95', N'702325', N'+375228468548', N'Директор')
/****** Object:  Trigger [проверка_возраста]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[проверка_возраста]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[проверка_возраста]
   ON  [dbo].[Сотрудник] 
   for INSERT
AS 
BEGIN
Declare @дата_рожд datetime
Set @дата_рожд = 
 (Select Дата_рождения from inserted)

	IF not (DATEDIFF(Y,@дата_рожд, GETDATE()) <18) 
		Begin
		 IF(DATEDIFF(Y,@дата_рожд, GETDATE()) >62)
			Begin
				Raiserror (''Этого работника нельзя нанимать'',1,16)
			End
	    End
END
'
GO
/****** Object:  StoredProcedure [dbo].[Приёмка_Товара]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Приёмка_Товара]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Приёмка_Товара]
	
	@Название_товара [nvarchar](150),
	@Категория [nvarchar](75),
	@Количество_Прибывшего_склад int,
	@Цена money,
	@Срок_гарантии int,
	@Название_сервисного_центра [nvarchar](50)
	
AS 
	IF @Название_сервисного_центра <> '''' AND 
		NOT EXISTS (SELECT Код_сервисного_центра
			   FROM  Сервисный_центр
			   WHERE Название_сервисного_центра =  @Название_сервисного_центра)	
	BEGIN
		RAISERROR (''Не найден Код сервисного центра по переданному названию.'', 16, 1)
		RETURN 1
	END
	DECLARE @Код_сервисного_центра int
	SET @Код_сервисного_центра = (SELECT Код_сервисного_центра
				   FROM  Сервисный_центр
				   WHERE Название_сервисного_центра =  @Название_сервисного_центра)
	
	IF (ISNUMERIC(@цена)=0) 
	BEGIN
		RAISERROR (''Неправильное значение цены товара'', 16, 1)
		RETURN 1
	END

Declare	@ID_товара [nvarchar](20)	
	If (not exists
		(select  Название_товара FROM [Товар])
		)
		Begin              --if not exist - we''ll create it =)
		INSERT INTO [dbo].[Товар]
		(ID_товара,
		Название_товара,
		Категория,
		Количество_склад,
		Количество_магазин,
		Цена,
		Срок_гарантии,
		Код_сервисного_центра) 
	VALUES 
		(NEWID(),
		@Название_товара,
		Upper(@Категория),
		@Количество_Прибывшего_склад,
		0,
		Convert(money,@Цена),
		@Срок_гарантии,
		@Код_сервисного_центра)
	
		End
		Else
			begin
			set @ID_товара = (select  ID_товара
								 FROM [Товар] Where (Название_товара=@Название_товара))
			
			if (select Цена from Товар where(@ID_товара=ID_товара)) <@цена
				begin
					Update [Товар]
						Set [Цена]=@Цена,[Количество_склад] = [Количество_склад]+@Количество_Прибывшего_склад
							Where (@ID_товара=ID_товара)
				 end
				 Else
				 Begin
				 Update [Товар]
						Set [Количество_склад] = [Количество_склад]+@Количество_Прибывшего_склад
							Where (@ID_товара=ID_товара)
				 End
		End ' 
END
GO
/****** Object:  View [dbo].[Прайс]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Прайс]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Прайс]
AS
SELECT     Название_товара, Категория, Цена, Срок_гарантии, Количество_магазин + Количество_склад AS [Общее Количество], 
                      Цена * (Количество_магазин + Количество_склад) AS Баланс
FROM         dbo.Товар
GROUP BY Категория, Цена, Срок_гарантии, Количество_магазин + Количество_склад, Цена * (Количество_магазин + Количество_склад), Название_товара
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Прайс', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[26] 2[15] 3) )"
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
         Begin Table = "Товар"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 203
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
         Width = 5580
         Width = 2835
         Width = 1500
         Width = 1365
         Width = 1095
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Прайс'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Прайс', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Прайс'
GO
/****** Object:  StoredProcedure [dbo].[Отправить_в_магазин]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Отправить_в_магазин]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Отправить_в_магазин]
		@Название_товара nvarchar(150),
		@Количество int
	AS
BEGIN
Declare @ID_товара nvarchar(20)
Set  @ID_товара= 
	 (
	 Select [ID_товара] 
	 From [Товар]
	 Where (Название_товара=@Название_товара)
	 )
	 		
	 IF(ISNULL(@ID_товара,'''')=0)
	 Begin
		RaisError(''На складе меньше товаров, чем запрошено'',1,16)
		With NoWait Return 1
	 End
	 	 
Declare @колво_склад int
Set  @колво_склад=
	 (
	 Select [Количество_склад] 
	 From [Товар]
	 Where (ID_товара=@ID_товара)
	 )				
	 IF(@колво_склад<@Количество)
	 Begin
		RaisError(''На складе меньше товаров, чем запрошено'',1,16)
		With NoWait Return 1
	 End
	 
Declare @колво_магазин int
Set  @колво_магазин=
	 (
	 Select [Количество_магазин] 
	 From [Товар]
	 Where (ID_товара=@ID_товара)
	 )		
	 
	 Update [Товар] 
		Set [Количество_магазин]=@колво_магазин+@Количество, 
			[Количество_склад]= @колво_склад-@Количество
			Where (ID_товара=@ID_товара)	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Минимальная_цена_категории]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Минимальная_цена_категории]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[Минимальная_цена_категории]
	@Категория_товара [nvarchar](75)
AS
BEGIN
	SELECT Min([Товар].[Цена]) FROM dbo.[Товар] WHERE (@Категория_товара=Категория)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Максимальная_цена_категории]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Максимальная_цена_категории]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[Максимальная_цена_категории]
	@Категория_товара [nvarchar](75)
AS
BEGIN
	SELECT Max([Товар].[Цена]) FROM dbo.[Товар] WHERE (@Категория_товара=Категория)
END
' 
END
GO
/****** Object:  View [dbo].[Количество_видов_отсутствующих_на_складе_товаров]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Количество_видов_отсутствующих_на_складе_товаров]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Количество_видов_отсутствующих_на_складе_товаров]
AS
SELECT     COUNT(ID_товара) AS Количество_товаров
FROM         dbo.Товар
WHERE     (Количество_склад = 0)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Количество_видов_отсутствующих_на_складе_товаров', NULL,NULL))
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
         Begin Table = "Товар"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Количество_видов_отсутствующих_на_складе_товаров'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Количество_видов_отсутствующих_на_складе_товаров', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Количество_видов_отсутствующих_на_складе_товаров'
GO
/****** Object:  Trigger [Проверка_латиницы_в_серии_паспорта]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Проверка_латиницы_в_серии_паспорта]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Проверка_латиницы_в_серии_паспорта] 
   ON  [dbo].[Клиент] 
   For INSERT
AS 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
IF ASCII
		(Substring((Select Номер_паспорта_клиента From inserted ),1,2))>127	
	BEGIN
		Raiserror (''Введите серию паспорта латинскими буквами'',1,16)
	
	Rollback transaction
	END'
GO
/****** Object:  Trigger [Номер_паспорта_малыми]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Номер_паспорта_малыми]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Номер_паспорта_малыми]
   ON  [dbo].[Клиент] 
   FOR INSERT,UPDATE
AS 
BEGIN
declare @Номер_паспорта_ nvarchar(15)
Set @Номер_паспорта_ = (Select Номер_паспорта_клиента
							from inserted)
							
declare @ФИО nvarchar(15)
Set @ФИО = (Select ФИО_клиента
							from inserted)
							
Update Клиент
	Set Номер_паспорта_клиента=Lower(@Номер_паспорта_)
		Where (ФИО_клиента=@ФИО)
	
	
END
'
GO
/****** Object:  View [dbo].[Клиенты_по_возрасту]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Клиенты_по_возрасту]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Клиенты_по_возрасту]
AS
SELECT     TOP (100) PERCENT ФИО_клиента, Адрес_клиента, Телефон_мобильный, DATEDIFF(Year, Дата_рождения, GETDATE()) AS Возраст
FROM         dbo.Клиент
ORDER BY Возраст
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Клиенты_по_возрасту', NULL,NULL))
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
         Begin Table = "Клиент"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Клиенты_по_возрасту'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Клиенты_по_возрасту', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Клиенты_по_возрасту'
GO
/****** Object:  View [dbo].[Информация_о_Сотруднике]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Информация_о_Сотруднике]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[Информация_о_Сотруднике]
AS
Select ФИО_сотрудника, Upper(Номер_паспорта_сотрудника)AS ''Номер_паспорта_сотрудника'' ,
	 CAST(Дата_рождения as nvarchar(10)) as ''Дата_рождения'', Адрес_сотрудника, Телефон_мобильный
	from Сотрудник
	'
GO
/****** Object:  View [dbo].[Информация_о_Клиенте]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Информация_о_Клиенте]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[Информация_о_Клиенте]
AS
Select ФИО_клиента, Upper(Номер_паспорта_клиента)AS ''Номер_паспорта_клиента'' , Адрес_клиента, Телефон_мобильный
	from Клиент
	'
GO
/****** Object:  Trigger [Изменение_фамилии]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Изменение_фамилии]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Изменение_фамилии]
   ON  [dbo].[Сотрудник] 
   FOR UPDATE,Insert
AS 
BEGIN

declare @Номер_паспорта_ nvarchar(15)
Set @Номер_паспорта_ = (Select Номер_паспорта_сотрудника
							from inserted)
							
declare @ФИО nvarchar(15)
Set @ФИО = (Select ФИО_сотрудника
							from inserted)
							
Update Сотрудник
	Set ФИО_сотрудника=UPPER(@ФИО)
		Where (Номер_паспорта_сотрудника=@Номер_паспорта_)

END'
GO
/****** Object:  StoredProcedure [dbo].[Зарегистрировать_Клиента]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зарегистрировать_Клиента]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Зарегистрировать_Клиента]
	@Номер_паспорта_клиента 	[nvarchar](20),
	@ФИО_клиента 		[nvarchar](50),
	@Дата_рождения			[nvarchar](30),
	@Адрес_клиента 		[nvarchar](100),
	@Телефон_домашний 		[nvarchar](15),
	@Телефон_мобильный 		[nvarchar](20)
AS 
	IF ISDATE(@Дата_рождения) = 0
	BEGIN
		RAISERROR (''Неверное значение даты рождения Клиента.'', 16, 1)
			WITH NOWAIT
		RETURN 1
	END

	INSERT INTO [ComputerFirm].[dbo].[Клиент] 
		([Номер_паспорта_клиента],
		[ФИО_клиента],
		[Дата_рождения],
		[Адрес_клиента],
		[Телефон_домашний],
		[Телефон_мобильный]) 
	VALUES 
		(@Номер_паспорта_клиента,
		@ФИО_клиента,
		CONVERT(datetime, @Дата_рождения),
		@Адрес_клиента,
		@Телефон_домашний,
		@Телефон_мобильный)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Заключить_кредитный_договор]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Заключить_кредитный_договор]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Заключить_кредитный_договор]
	@Ежемесячная_выплата money,
	@Первоначальный_взнос money,
	@Срок_оплаты int,
	@ФИО_клиента nvarchar(50)	
AS
BEGIN

	Declare @Номер_паспорта_клиента nvarchar(15)
	set @Номер_паспорта_клиента = 
		(Select [Номер_паспорта_клиента]
			From dbo.Клиент
				Where (ФИО_клиента=@ФИО_клиента) 
		)
	
	Insert into dbo.[Кредитный_договор]
		(
		[Ежемесячная_выплата],
		[Первоначальный_взнос],
		[Срок_оплаты],
		[Номер_паспорта_клиента]
		)
			Values
			(
			Convert(money,@Ежемесячная_выплата),
			Convert(money,@Первоначальный_взнос),
			@Срок_оплаты,
			@Номер_паспорта_клиента	
			)
	
END
' 
END
GO
/****** Object:  Table [dbo].[Поставщик]    Script Date: 11/19/2013 05:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Поставщик]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Поставщик](
	[Код_поставщика] [int] IDENTITY(1,1) NOT NULL,
	[Название_поставщика] [nvarchar](50) NOT NULL,
	[Адрес_поставщика] [nvarchar](100) NULL,
	[Телефон_поставщика] [nvarchar](20) NULL,
	[Описание] [ntext] NULL,
 CONSTRAINT [XPKПоставщик] PRIMARY KEY CLUSTERED 
(
	[Код_поставщика] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Поставщик] ON
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (1, N'БелПринт', N'Г.Минск, пр-т Партизанский, 8а', N'', N'Магазин-склад запчастей для печатной техники')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (2, N'E-MOGILEV', N'г. Могилев, ул. Миронова 33', N'8(0222) 31-08-31', N'Фирма-Посредник')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (3, N'Амега-Лайф ЧУП', N'г.Могилев, Непокоренных, 37-1', N'480008', N'')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (4, N'БАТАРЕЙКА ПЛЮС', N'г.Могилев, Крыленко 9', N'258582', N'Электронные и радиокомпоненты')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (5, N'Ньютрейдинг', N'г.Минск, ул. Чорного д. 5а офис №4', N'(017) 385-23-94', N'Novatek')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (6, N'ООО "ЗИПЗИП"', N'Москва, Дмитровское ш. 5/1', N'+7 499 9765811', N'')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (7, N'Ультра Прайс', N'г. Минск, ул. Сурганова 17', N'(017) 284-08-52', N'')
INSERT [dbo].[Поставщик] ([Код_поставщика], [Название_поставщика], [Адрес_поставщика], [Телефон_поставщика], [Описание]) VALUES (8, N'D-Link International', N'220114, г. Минск, пр-т Независимости, 169', N'218-1362', N' Оф. представительство Dlink')
SET IDENTITY_INSERT [dbo].[Поставщик] OFF
/****** Object:  StoredProcedure [dbo].[Показать_Ближайшие_Заказы]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Показать_Ближайшие_Заказы]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Показать_Ближайшие_Заказы]
AS
BEGIN
	Select  Str([ID_Заказа]),[Номер_паспорта_клиента],[ID_товара],
			DATEDIFF(D,[Дата_заказа], GETDATE()) as ''Дней_до_выдачи''
		From Заказ_Товар_Поставщик
			Where ( DATEDIFF(D,[Дата_заказа],GETDATE())<7)
			Order By DATEDIFF(D,[Дата_заказа],GETDATE()) Asc
END
' 
END
GO
/****** Object:  View [dbo].[Показать_50_Ближайших_Заказов]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Показать_50_Ближайших_Заказов]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Показать_50_Ближайших_Заказов]
AS
	Select Top 50 Str([ID_Заказа]) AS ''ID_Заказа'',[Номер_паспорта_клиента],[ID_товара],
			DATEDIFF(D,[Дата_заказа], GETDATE()) as ''Дней_до_выдачи''
		From [Заказ_Товар_Поставщик]
			Where ( DATEDIFF(D,[Дата_заказа],GETDATE())<7)
			Order By DATEDIFF(D,[Дата_заказа],GETDATE()) Asc
'
GO
/****** Object:  StoredProcedure [dbo].[Оформить_заказ_товара]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Оформить_заказ_товара]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Оформить_заказ_товара]
		@ФИО_клиента nvarchar(20),
		@Название_товара nvarchar(150),
		@Поставщик nvarchar(50),
		@Количество int
		
AS
BEGIN
	if (ISNULL(@поставщик,'''')=0)
	Begin
		RAISERROR (''Не указано имя поставщика'', 16, 1)
			WITH NOWAIT
		RETURN 1
	End
	Else
	Begin
Declare	@Код_поставщика int
set @Код_поставщика= 
	(
	Select [Код_поставщика]
		From dbo.[Поставщик]
			Where (@Поставщик = Название_поставщика)
	)
	End
Declare	@Номер_паспорта_клиента nvarchar(15)
	Set @Номер_паспорта_клиента =
	(
	Select Номер_паспорта_клиента 
		From dbo.[Клиент]
			Where (ФИО_клиента=@ФИО_клиента)
	)
	
Declare	@ID_товара nvarchar(20)
	Set @ID_товара =
	(
	Select ID_товара 
		From dbo.[Товар]
			Where (@Название_товара=Название_товара)
	)
	
	Insert Into dbo.[Заказ_Товар_Поставщик]
	(Номер_паспорта_клиента,ID_товара,Дата_заказа,Количество_заказано,Код_поставщика)
		Values (@Номер_паспорта_клиента,@ID_товара, SYSDATETIME(),@Количество,@Код_поставщика)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Есть_ли_товар]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Есть_ли_товар]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Есть_ли_товар]
	@Часть_Названия nvarchar(50)
AS
BEGIN
	(
	Select PATINDEX (''%''+@Часть_Названия+''%'', @Часть_Названия), Количество_магазин, Количество_склад   
	  	from [Товар]
	)   	

END
' 
END
GO
/****** Object:  View [dbo].[Доля_покупок_по_кредитному_договору]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Доля_покупок_по_кредитному_договору]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Доля_покупок_по_кредитному_договору]
AS
SELECT     COUNT(ID_товара) /
                          (SELECT     COUNT(ID_товара) AS Expr1
                            FROM          dbo.Продажа) AS Доля_кредитов
FROM         dbo.Продажа AS Продажа_1
WHERE     (ISNULL(Код_договора, '' '') = 1)
GROUP BY Код_договора, Количество
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Доля_покупок_по_кредитному_договору', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[29] 2[25] 3) )"
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
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Продажа_1"
            Begin Extent = 
               Top = 294
               Left = 38
               Bottom = 441
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 2
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Доля_покупок_по_кредитному_договору'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Доля_покупок_по_кредитному_договору', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Доля_покупок_по_кредитному_договору'
GO
/****** Object:  View [dbo].[Детали_наименьшего_количества]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Детали_наименьшего_количества]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Детали_наименьшего_количества]
AS
SELECT     TOP (15) Название_товара, Категория, Цена, Срок_гарантии, MIN(Количество_склад + Количество_магазин) AS [Осталось,шт]
FROM         dbo.Товар
GROUP BY Название_товара, Категория, Цена, Срок_гарантии
ORDER BY [Осталось,шт]
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Детали_наименьшего_количества', NULL,NULL))
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
         Begin Table = "Товар"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Детали_наименьшего_количества'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Детали_наименьшего_количества', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Детали_наименьшего_количества'
GO
/****** Object:  View [dbo].[Сотрудник_Прибыль]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Сотрудник_Прибыль]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Сотрудник_Прибыль]
AS
SELECT TOP(100) Сотрудник.ФИО_сотрудника, Общая_прибыль 
	FROM dbo.Сотрудник
		Inner JOIN
		(
			SELECT Номер_паспорта_сотрудника, SUM( Прибыль) AS ''Общая_прибыль''	
				FROM Гарантийный_талон
				 INNER JOIN 
					( 
					SELECT SUM(Цена*Количество) AS ''Прибыль'', Код_гарантийного_талона  
						FROM dbo.Продажа
						   GROUP BY Код_гарантийного_талона
					) AS tmp1
				 ON (tmp1.Код_гарантийного_талона=Гарантийный_талон.Код_гарантийного_талона)
					 GROUP BY Номер_паспорта_сотрудника
		 ) as tmp2
  ON (tmp2.Номер_паспорта_сотрудника=dbo.Сотрудник.Номер_паспорта_сотрудника)
ORDER BY Общая_прибыль ASC
'
GO
/****** Object:  View [dbo].[Продажи_за_текущий_месяц]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_текущий_месяц]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Продажи_за_текущий_месяц]
AS
SELECT     dbo.Товар.Название_товара, dbo.Продажа.Количество, dbo.Продажа.Цена, dbo.Гарантийный_талон.Дата_время
FROM         dbo.Продажа INNER JOIN
                      dbo.Товар ON dbo.Продажа.ID_товара = dbo.Товар.ID_товара INNER JOIN
                      dbo.Гарантийный_талон ON dbo.Продажа.Код_гарантийного_талона = dbo.Гарантийный_талон.Код_гарантийного_талона
WHERE     (YEAR(dbo.Гарантийный_талон.Дата_время) = YEAR(GETDATE())) AND (MONTH(dbo.Гарантийный_талон.Дата_время) = MONTH(GETDATE()))
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Продажи_за_текущий_месяц', NULL,NULL))
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
         Begin Table = "Продажа"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Товар"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 125
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Гарантийный_талон"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Продажи_за_текущий_месяц'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Продажи_за_текущий_месяц', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Продажи_за_текущий_месяц'
GO
/****** Object:  View [dbo].[Продажи_за_текущий_год]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_текущий_год]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Продажи_за_текущий_год]
AS
SELECT     dbo.Товар.Название_товара, dbo.Продажа.Количество, dbo.Продажа.Цена, dbo.Гарантийный_талон.Дата_время
FROM         dbo.Продажа INNER JOIN
                      dbo.Товар ON dbo.Продажа.ID_товара = dbo.Товар.ID_товара INNER JOIN
                      dbo.Гарантийный_талон ON dbo.Продажа.Код_гарантийного_талона = dbo.Гарантийный_талон.Код_гарантийного_талона
WHERE     (YEAR(dbo.Гарантийный_талон.Дата_время) = YEAR(GETDATE()))
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Продажи_за_текущий_год', NULL,NULL))
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
         Begin Table = "Продажа"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Товар"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 125
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Гарантийный_талон"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Продажи_за_текущий_год'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Продажи_за_текущий_год', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Продажи_за_текущий_год'
GO
/****** Object:  StoredProcedure [dbo].[Продажи_за_Месяц_Года]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_Месяц_Года]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[Продажи_за_Месяц_Года]
	@НомерМесяца int,
	@НомерГода int
AS
BEGIN
	If((@НомерМесяца<1) or (@НомерМесяца > 12))
		Begin
			RaisError ('''',1,16)
			With NoWait
			Return 1
		End
	
	Declare @Талон int
	Set @Талон = 
		(
		Select [Код_гарантийного_талона]
			From dbo.[Гарантийный_талон]
				Where (Year([Дата_время])=@НомерГода
					and MONTH ([Дата_время])= @НомерМесяца)
		)
		
 Select Sum([цена]) as ''Выручка'' 
	FROM [dbo].Продажа 
		 Where (@Талон=Код_гарантийного_талона)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Продажи_за_Год]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Продажи_за_Год]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[Продажи_за_Год]
	@НомерГода int
AS
BEGIN
	Declare @Талон int
	Set @Талон = 
		(
		Select [Код_гарантийного_талона]
			From dbo.[Гарантийный_талон]
				Where (Year([Дата_время])=@НомерГода)
		)
		
 Select Sum([цена]) as ''Выручка'' 
	FROM [dbo].Продажа 
		 Where (@Талон=Код_гарантийного_талона)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Зарегистрировать_покупку]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зарегистрировать_покупку]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Зарегистрировать_покупку]
	@Название_товара as nvarchar(50),
	@Количество as int,
	@Тип_оплаты nvarchar(30),
	@Серийный_номер_экземпляра nvarchar(20),
	@Код_договора int
AS
BEGIN
	Declare @общ_колво int
	Set @общ_колво=
	(Select Sum(Количество_магазин)+Sum(Количество_склад) 
			from dbo.[Товар]
				Where  (@Название_товара=Название_товара)) 
	If(@общ_колво=0)
	Begin
		Raiserror (''Товара нет'',1,16)
		With NoWait Return 1
	End	
	
	Declare @ID_ nvarchar(20)
	Set @ID_ = 
	(Select [ID_товара] 
		From dbo.[Товар]
			Where @Название_товара=Название_товара)
	
	Declare @Сумм_цена money
	Set @Сумм_цена = 
	(Select [Цена]*@Количество
		From dbo.[Товар]
			Where @Название_товара=Название_товара) 
	 
	 Declare @код_гарантийного_талона int
	 Set @код_гарантийного_талона = 
	 (
	  Select [Код_гарантийного_талона] 
		From dbo.[Гарантийный_талон]
			where (@Серийный_номер_экземпляра=Серийный_номер_экземпляра)
	 )
			
	
	Insert Into dbo.[Продажа](Код_договора,Код_гарантийного_талона,ID_товара,Тип_оплаты,Количество,Цена)
		Values (@Код_договора,@код_гарантийного_талона,@ID_,@Тип_оплаты,@Количество,@Сумм_цена)
		
	
END
' 
END
GO
/****** Object:  Table [dbo].[Гарантийный_журнал]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Гарантийный_журнал]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Гарантийный_журнал](
	[Статус_обслуживания] [nvarchar](20) NOT NULL,
	[Примечание] [ntext] NULL,
	[Причина_направления_на_замену] [text] NULL,
	[Дата_время] [datetime] NOT NULL,
	[Код_гарантийного_талона] [int] NOT NULL,
 CONSTRAINT [XPKГарантийный_журнал] PRIMARY KEY CLUSTERED 
(
	[Дата_время] ASC,
	[Код_гарантийного_талона] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечание', N'Гарантийный ремонт', CAST(0x0000A26C0169EDE9 AS DateTime), 6)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D000C7790 AS DateTime), 5)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D000C836E AS DateTime), 4)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D000C8694 AS DateTime), 4)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D000C8B5D AS DateTime), 6)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D000C90DB AS DateTime), 8)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D00125053 AS DateTime), 8)
INSERT [dbo].[Гарантийный_журнал] ([Статус_обслуживания], [Примечание], [Причина_направления_на_замену], [Дата_время], [Код_гарантийного_талона]) VALUES (N'Ремонт', N'примечания', N'Гарантийный ремонт', CAST(0x0000A26D001257F0 AS DateTime), 3)
/****** Object:  View [dbo].[Список_вещей_на_гарантийной_замене]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Список_вещей_на_гарантийной_замене]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Список_вещей_на_гарантийной_замене]
AS
SELECT     dbo.Товар.Название_товара, dbo.Гарантийный_журнал.Дата_время, dbo.Гарантийный_журнал.Код_гарантийного_талона
FROM         dbo.Гарантийный_журнал INNER JOIN
                      dbo.Продажа ON dbo.Продажа.Код_гарантийного_талона = dbo.Гарантийный_журнал.Код_гарантийного_талона INNER JOIN
                      dbo.Товар ON dbo.Товар.ID_товара = dbo.Продажа.ID_товара
WHERE     (CONVERT(nvarchar(50), dbo.Гарантийный_журнал.Причина_направления_на_замену) = ''Гарантийная замена'')
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'Список_вещей_на_гарантийной_замене', NULL,NULL))
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
         Begin Table = "Гарантийный_журнал"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 150
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Продажа"
            Begin Extent = 
               Top = 6
               Left = 660
               Bottom = 164
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Товар"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Список_вещей_на_гарантийной_замене'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'Список_вещей_на_гарантийной_замене', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Список_вещей_на_гарантийной_замене'
GO
/****** Object:  StoredProcedure [dbo].[Количество_гарантийного_ремонта_по_категории]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Количество_гарантийного_ремонта_по_категории]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Количество_гарантийного_ремонта_по_категории]
	@Категория nvarchar(75)
AS
BEGIN
	declare @ID_товара int
	set @ID_товара = 
		
		(Select ID_товара
			From dbo.Товар
				Where (Категория=Upper(@Категория))
			)
			
	declare @Код_гарантийного_талона int
	set @Код_гарантийного_талона = 
		(Select   Код_гарантийного_талона
			From dbo.Продажа
				Where (@ID_товара = ID_товара)
		)
		Select Count(Дата_время)
			From Гарантийный_журнал
				Where ([Причина_направления_на_замену] Like ''Гарантийная замена'' and
						[Код_гарантийного_талона] Like @Код_гарантийного_талона)
				
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Зафиксировать_результаты_ремонта]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зафиксировать_результаты_ремонта]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Зафиксировать_результаты_ремонта]
		@Код_гарантийного_талона int,
		@Статус_обслуживания nvarchar(20)
	AS
BEGIN
		If Not EXISTS (
				Select Дата_время
			    	 From dbo.[Гарантийный_журнал] 
				    	Where ([Код_гарантийного_талона]=@Код_гарантийного_талона) 
				   	   )
		Begin
				RaisError(''В гарантийном журнале такой записи нет'',1,16)
		End		    	
		-- проверка на существование

		Update [Гарантийный_журнал]
		Set Статус_обслуживания = ltrim(rtrim(@Статус_обслуживания))
		Where (@Код_гарантийного_талона =Код_гарантийного_талона)
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Занести_запись_в_гарантийный_журнал]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Занести_запись_в_гарантийный_журнал]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Занести_запись_в_гарантийный_журнал]
		@Код_гарантийного_талона nvarchar(10),
		@Статус_обслуживания nvarchar(20),
		@Примечание ntext,
		@Причина_направления_на_замену text
AS
BEGIN
Declare @код_талона int
		IF (ISNUMERIC(@Код_гарантийного_талона)=0)
			begin
				RaisError(''Неправильный формат номера гарантийного талона'',1,16)
				With NoWait Return 1
			end
			Else
				begin
					Set @Код_талона = CAST(@Код_гарантийного_талона as int)
				end
		
		Insert into dbo.[Гарантийный_журнал] 
			(Код_гарантийного_талона,Дата_время,Статус_обслуживания, Причина_направления_на_замену,Примечание)
				Values (@код_талона, Getdate(),@Статус_обслуживания, @Причина_направления_на_замену,@Примечание)
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Зафиксировать_замену_по_гарантии]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Зафиксировать_замену_по_гарантии]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Зафиксировать_замену_по_гарантии]
	@Название_товара nvarchar(150),
	@Код_гарантийного_талона int
		-- нет в магазине, снять со склада
	AS
BEGIN
	Declare @ID_товара nvarchar(20)
Set  @ID_товара= 
	 (
	 Select [ID_товара] 
	 From [Товар]
	 Where (Название_товара=@Название_товара)
	 )
	 
	Declare @Дата_время_покупки Datetime
Set  @Дата_время_покупки= 
	 (
	 Select [Дата_время] 
	 From [Гарантийный_журнал]
	 Where (Код_гарантийного_талона=@Код_гарантийного_талона)
	 )
	 
	 Declare @срок_гарантия int
	Set  @срок_гарантия= 
	 (
	 Select [Срок_гарантии] 
	 From [Товар]
	 Where (ID_товара=@ID_товара)
	 )	 
		if (DATEDIFF(MONTH,@Дата_время_покупки,GetDate())>=@срок_гарантия)
			Begin
				RaisError(''Срок гарантии истёк.'',1,16)
				With NoWait Return 1
			End	
		
	Declare @колво_склад int
	Set  @колво_склад =
	 (Select [Количество_склад] From [Товар] Where (ID_товара=@ID_товара))				
	 
	Declare @колво_магазин int
	Set  @колво_магазин = 
	( Select Количество_магазин From [Товар] Where (ID_товара=@ID_товара) )				
	  
	 IF(@колво_склад<1)
	 Begin
		If (@колво_магазин<1)
		  Begin
				RaisError(''Товара нет'',1,16)
				With NoWait Return 1
		  End
	 End
	 Execute dbo."Занести_запись_в_гарантийный_журнал"  
	 @Код_гарантийного_талона,''Только_поступил'','''',''Гарантийная замена''
	 
	 	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Выписать_гарантийный_талон]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Выписать_гарантийный_талон]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Выписать_гарантийный_талон]
	@Серийный_номер_экземпляра nvarchar(50),
	@ФИО_сотрудника nvarchar(50)
AS
BEGIN
		Declare @Номер_паспорта_сотрудника nvarchar(15) 
		Set @Номер_паспорта_сотрудника = 
		(Select Номер_паспорта_сотрудника
			 From dbo.[Сотрудник]
				Where (ФИО_сотрудника=@ФИО_сотрудника)
		)
		
		Insert Into dbo.[Гарантийный_талон]
			([Номер_паспорта_сотрудника],[Серийный_номер_экземпляра])
				Values (@Номер_паспорта_сотрудника,@Серийный_номер_экземпляра)
END
' 
END
GO
/****** Object:  Trigger [tU_Сотрудник]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Сотрудник]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Сотрудник] ON [dbo].[Сотрудник] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Сотрудник */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insНомер_паспорта_сотрудника nvarchar(15),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Сотрудник выдает Гарантийный_талон on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="0001cb1a", PARENT_OWNER="", PARENT_TABLE="Сотрудник"
    CHILD_OWNER="", CHILD_TABLE="Гарантийный_талон"
    P2C_VERB_PHRASE="выдает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выдает", FK_COLUMNS="Номер_паспорта_сотрудника" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Номер_паспорта_сотрудника)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insНомер_паспорта_сотрудника = inserted.Номер_паспорта_сотрудника
        FROM inserted
      UPDATE Гарантийный_талон
      SET
        /*  %JoinFKPK(Гарантийный_талон,@ins," = ",",") */
        Гарантийный_талон.Номер_паспорта_сотрудника = @insНомер_паспорта_сотрудника
      FROM Гарантийный_талон,inserted,deleted
      WHERE
        /*  %JoinFKPK(Гарантийный_талон,deleted," = "," AND") */
        Гарантийный_талон.Номер_паспорта_сотрудника = deleted.Номер_паспорта_сотрудника
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Сотрудник update because more than one row has been affected.''
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
/****** Object:  Trigger [tU_Сервисный_центр]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Сервисный_центр]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Сервисный_центр] ON [dbo].[Сервисный_центр] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Сервисный_центр */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insКод_сервисного_центра int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Сервисный_центр  Товар on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="000190bd", PARENT_OWNER="", PARENT_TABLE="Сервисный_центр"
    CHILD_OWNER="", CHILD_TABLE="Товар"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="Relationship_484", FK_COLUMNS="Код_сервисного_центра" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Код_сервисного_центра)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insКод_сервисного_центра = inserted.Код_сервисного_центра
        FROM inserted
      UPDATE Товар
      SET
        /*  %JoinFKPK(Товар,@ins," = ",",") */
        Товар.Код_сервисного_центра = @insКод_сервисного_центра
      FROM Товар,inserted,deleted
      WHERE
        /*  %JoinFKPK(Товар,deleted," = "," AND") */
        Товар.Код_сервисного_центра = deleted.Код_сервисного_центра
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Сервисный_центр update because more than one row has been affected.''
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
/****** Object:  Trigger [tU_Поставщик]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Поставщик]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Поставщик] ON [dbo].[Поставщик] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Поставщик */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insКод_поставщика int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Поставщик  Заказ_Товар_Поставщик on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="0001a575", PARENT_OWNER="", PARENT_TABLE="Поставщик"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="Relationship_456", FK_COLUMNS="Код_поставщика" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Код_поставщика)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insКод_поставщика = inserted.Код_поставщика
        FROM inserted
      UPDATE Заказ_Товар_Поставщик
      SET
        /*  %JoinFKPK(Заказ_Товар_Поставщик,@ins," = ",",") */
        Заказ_Товар_Поставщик.Код_поставщика = @insКод_поставщика
      FROM Заказ_Товар_Поставщик,inserted,deleted
      WHERE
        /*  %JoinFKPK(Заказ_Товар_Поставщик,deleted," = "," AND") */
        Заказ_Товар_Поставщик.Код_поставщика = deleted.Код_поставщика
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Поставщик update because more than one row has been affected.''
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
/****** Object:  Trigger [tU_Кредитный_договор]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Кредитный_договор]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Кредитный_договор] ON [dbo].[Кредитный_договор] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Кредитный_договор */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insКод_договора int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Кредитный_договор заключается при Продажа on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00017316", PARENT_OWNER="", PARENT_TABLE="Кредитный_договор"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="заключается при", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="заключается_при", FK_COLUMNS="Код_договора" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Код_договора)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insКод_договора = inserted.Код_договора
        FROM inserted
      UPDATE Продажа
      SET
        /*  %JoinFKPK(Продажа,@ins," = ",",") */
        Продажа.Код_договора = @insКод_договора
      FROM Продажа,inserted,deleted
      WHERE
        /*  %JoinFKPK(Продажа,deleted," = "," AND") */
        Продажа.Код_договора = deleted.Код_договора
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Кредитный_договор update because more than one row has been affected.''
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
/****** Object:  Trigger [tU_Клиент]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Клиент]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Клиент] ON [dbo].[Клиент] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Клиент */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insНомер_паспорта_клиента nvarchar(15),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Клиент заключает Кредитный_договор on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00030449", PARENT_OWNER="", PARENT_TABLE="Клиент"
    CHILD_OWNER="", CHILD_TABLE="Кредитный_договор"
    P2C_VERB_PHRASE="заключает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="заключает", FK_COLUMNS="Номер_паспорта_клиента" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Номер_паспорта_клиента)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insНомер_паспорта_клиента = inserted.Номер_паспорта_клиента
        FROM inserted
      UPDATE Кредитный_договор
      SET
        /*  %JoinFKPK(Кредитный_договор,@ins," = ",",") */
        Кредитный_договор.Номер_паспорта_клиента = @insНомер_паспорта_клиента
      FROM Кредитный_договор,inserted,deleted
      WHERE
        /*  %JoinFKPK(Кредитный_договор,deleted," = "," AND") */
        Кредитный_договор.Номер_паспорта_клиента = deleted.Номер_паспорта_клиента
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Клиент update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Клиент  Заказ_Товар_Поставщик on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Клиент"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="Номер_паспорта_клиента" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Номер_паспорта_клиента)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Заказ_Товар_Поставщик
      WHERE
        /*  %JoinFKPK(Заказ_Товар_Поставщик,deleted," = "," AND") */
        Заказ_Товар_Поставщик.Номер_паспорта_клиента = deleted.Номер_паспорта_клиента
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = ''Cannot update Клиент because Заказ_Товар_Поставщик exists.''
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
/****** Object:  Trigger [tU_Заказ_Товар_Поставщик]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Заказ_Товар_Поставщик]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Заказ_Товар_Поставщик] ON [dbo].[Заказ_Товар_Поставщик] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Заказ_Товар_Поставщик */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_Заказа int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Товар  Заказ_Товар_Поставщик on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002a1b4", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_товара" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID_товара)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Товар
        WHERE
          /* %JoinFKPK(inserted,Товар) */
          inserted.ID_товара = Товар.ID_товара
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = ''Cannot update Заказ_Товар_Поставщик because Товар does not exist.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Клиент  Заказ_Товар_Поставщик on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Клиент"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="Номер_паспорта_клиента" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Номер_паспорта_клиента)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Клиент
        WHERE
          /* %JoinFKPK(inserted,Клиент) */
          inserted.Номер_паспорта_клиента = Клиент.Номер_паспорта_клиента
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = ''Cannot update Заказ_Товар_Поставщик because Клиент does not exist.''
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
/****** Object:  Trigger [tU_Гарантийный_талон]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Гарантийный_талон]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Гарантийный_талон] ON [dbo].[Гарантийный_талон] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Гарантийный_талон */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insКод_гарантийного_талона int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Гарантийный_талон выдается при Продажа on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="0002fa9b", PARENT_OWNER="", PARENT_TABLE="Гарантийный_талон"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="выдается при", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выдается_при", FK_COLUMNS="Код_гарантийного_талона" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Код_гарантийного_талона)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insКод_гарантийного_талона = inserted.Код_гарантийного_талона
        FROM inserted
      UPDATE Продажа
      SET
        /*  %JoinFKPK(Продажа,@ins," = ",",") */
        Продажа.Код_гарантийного_талона = @insКод_гарантийного_талона
      FROM Продажа,inserted,deleted
      WHERE
        /*  %JoinFKPK(Продажа,deleted," = "," AND") */
        Продажа.Код_гарантийного_талона = deleted.Код_гарантийного_талона
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Гарантийный_талон update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Гарантийный_талон  Гарантийный_журнал on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Гарантийный_талон"
    CHILD_OWNER="", CHILD_TABLE="Гарантийный_журнал"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Код_гарантийного_талона" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Код_гарантийного_талона)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Гарантийный_журнал
      WHERE
        /*  %JoinFKPK(Гарантийный_журнал,deleted," = "," AND") */
        Гарантийный_журнал.Код_гарантийного_талона = deleted.Код_гарантийного_талона
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = ''Cannot update Гарантийный_талон because Гарантийный_журнал exists.''
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
/****** Object:  Trigger [tU_Гарантийный_журнал]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Гарантийный_журнал]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Гарантийный_журнал] ON [dbo].[Гарантийный_журнал] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Гарантийный_журнал */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insДата_время datetime, 
           @insКод_гарантийного_талона int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Гарантийный_талон  Гарантийный_журнал on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00018775", PARENT_OWNER="", PARENT_TABLE="Гарантийный_талон"
    CHILD_OWNER="", CHILD_TABLE="Гарантийный_журнал"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Код_гарантийного_талона" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Код_гарантийного_талона)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Гарантийный_талон
        WHERE
          /* %JoinFKPK(inserted,Гарантийный_талон) */
          inserted.Код_гарантийного_талона = Гарантийный_талон.Код_гарантийного_талона
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = ''Cannot update Гарантийный_журнал because Гарантийный_талон does not exist.''
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
/****** Object:  Trigger [tI_Продажа]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tI_Продажа]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tI_Продажа] ON [dbo].[Продажа] FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on Продажа */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Кредитный_договор заключается при Продажа on child insert set null */
  /* ERWIN_RELATION:CHECKSUM="00016df8", PARENT_OWNER="", PARENT_TABLE="Кредитный_договор"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="заключается при", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="заключается_при", FK_COLUMNS="Код_договора" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Код_договора)
  BEGIN
    UPDATE Продажа
      SET
        /* %SetFK(Продажа,NULL) */
        Продажа.Код_договора = NULL
      FROM Продажа,inserted
      WHERE
        /* %JoinPKPK(Продажа,inserted," = "," AND") */
       Продажа.ID_товара = inserted.ID_товара AND
        Продажа.Код_гарантийного_талона = inserted.Код_гарантийного_талона AND
        
        NOT EXISTS (
          SELECT * FROM Кредитный_договор
          WHERE
            /* %JoinFKPK(inserted,Кредитный_договор," = "," AND") */
            inserted.Код_договора = Кредитный_договор.Код_договора
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
/****** Object:  Trigger [tD_Сотрудник]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Сотрудник]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Сотрудник] ON [dbo].[Сотрудник] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Сотрудник */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Сотрудник выдает Гарантийный_талон on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000121b6", PARENT_OWNER="", PARENT_TABLE="Сотрудник"
    CHILD_OWNER="", CHILD_TABLE="Гарантийный_талон"
    P2C_VERB_PHRASE="выдает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выдает", FK_COLUMNS="Номер_паспорта_сотрудника" */
    IF EXISTS (
      SELECT * FROM deleted,Гарантийный_талон
      WHERE
        /*  %JoinFKPK(Гарантийный_талон,deleted," = "," AND") */
        Гарантийный_талон.Номер_паспорта_сотрудника = deleted.Номер_паспорта_сотрудника
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Сотрудник because Гарантийный_талон exists.''
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
/****** Object:  Trigger [tD_Сервисный_центр]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Сервисный_центр]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Сервисный_центр] ON [dbo].[Сервисный_центр] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Сервисный_центр */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Сервисный_центр  Товар on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000101b5", PARENT_OWNER="", PARENT_TABLE="Сервисный_центр"
    CHILD_OWNER="", CHILD_TABLE="Товар"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="Relationship_484", FK_COLUMNS="Код_сервисного_центра" */
    IF EXISTS (
      SELECT * FROM deleted,Товар
      WHERE
        /*  %JoinFKPK(Товар,deleted," = "," AND") */
        Товар.Код_сервисного_центра = deleted.Код_сервисного_центра
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Сервисный_центр because Товар exists.''
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
/****** Object:  Trigger [tD_Кредитный_договор]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Кредитный_договор]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Кредитный_договор] ON [dbo].[Кредитный_договор] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Кредитный_договор */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Кредитный_договор заключается при Продажа on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00010332", PARENT_OWNER="", PARENT_TABLE="Кредитный_договор"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="заключается при", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="заключается_при", FK_COLUMNS="Код_договора" */
    IF EXISTS (
      SELECT * FROM deleted,Продажа
      WHERE
        /*  %JoinFKPK(Продажа,deleted," = "," AND") */
        Продажа.Код_договора = deleted.Код_договора
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Кредитный_договор because Продажа exists.''
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
/****** Object:  Trigger [tD_Клиент]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Клиент]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Клиент] ON [dbo].[Клиент] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Клиент */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Клиент заключает Кредитный_договор on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000243c2", PARENT_OWNER="", PARENT_TABLE="Клиент"
    CHILD_OWNER="", CHILD_TABLE="Кредитный_договор"
    P2C_VERB_PHRASE="заключает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="заключает", FK_COLUMNS="Номер_паспорта_клиента" */
    IF EXISTS (
      SELECT * FROM deleted,Кредитный_договор
      WHERE
        /*  %JoinFKPK(Кредитный_договор,deleted," = "," AND") */
        Кредитный_договор.Номер_паспорта_клиента = deleted.Номер_паспорта_клиента
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Клиент because Кредитный_договор exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Клиент  Заказ_Товар_Поставщик on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Клиент"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="Номер_паспорта_клиента" */
    IF EXISTS (
      SELECT * FROM deleted,Заказ_Товар_Поставщик
      WHERE
        /*  %JoinFKPK(Заказ_Товар_Поставщик,deleted," = "," AND") */
        Заказ_Товар_Поставщик.Номер_паспорта_клиента = deleted.Номер_паспорта_клиента
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Клиент because Заказ_Товар_Поставщик exists.''
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
/****** Object:  Trigger [tD_Заказ_Товар_Поставщик]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Заказ_Товар_Поставщик]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Заказ_Товар_Поставщик] ON [dbo].[Заказ_Товар_Поставщик] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Заказ_Товар_Поставщик */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Товар  Заказ_Товар_Поставщик on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028244", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_товара" */
    IF EXISTS (SELECT * FROM deleted,Товар
      WHERE
        /* %JoinFKPK(deleted,Товар," = "," AND") */
        deleted.ID_товара = Товар.ID_товара AND
        NOT EXISTS (
          SELECT * FROM Заказ_Товар_Поставщик
          WHERE
            /* %JoinFKPK(Заказ_Товар_Поставщик,Товар," = "," AND") */
            Заказ_Товар_Поставщик.ID_товара = Товар.ID_товара
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = ''Cannot delete last Заказ_Товар_Поставщик because Товар exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Клиент  Заказ_Товар_Поставщик on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Клиент"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="Номер_паспорта_клиента" */
    IF EXISTS (SELECT * FROM deleted,Клиент
      WHERE
        /* %JoinFKPK(deleted,Клиент," = "," AND") */
        deleted.Номер_паспорта_клиента = Клиент.Номер_паспорта_клиента AND
        NOT EXISTS (
          SELECT * FROM Заказ_Товар_Поставщик
          WHERE
            /* %JoinFKPK(Заказ_Товар_Поставщик,Клиент," = "," AND") */
            Заказ_Товар_Поставщик.Номер_паспорта_клиента = Клиент.Номер_паспорта_клиента
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = ''Cannot delete last Заказ_Товар_Поставщик because Клиент exists.''
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
/****** Object:  Trigger [tD_Гарантийный_талон]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Гарантийный_талон]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Гарантийный_талон] ON [dbo].[Гарантийный_талон] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Гарантийный_талон */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Гарантийный_талон выдается при Продажа on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00024271", PARENT_OWNER="", PARENT_TABLE="Гарантийный_талон"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="выдается при", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выдается_при", FK_COLUMNS="Код_гарантийного_талона" */
    IF EXISTS (
      SELECT * FROM deleted,Продажа
      WHERE
        /*  %JoinFKPK(Продажа,deleted," = "," AND") */
        Продажа.Код_гарантийного_талона = deleted.Код_гарантийного_талона
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Гарантийный_талон because Продажа exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Гарантийный_талон  Гарантийный_журнал on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Гарантийный_талон"
    CHILD_OWNER="", CHILD_TABLE="Гарантийный_журнал"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Код_гарантийного_талона" */
    IF EXISTS (
      SELECT * FROM deleted,Гарантийный_журнал
      WHERE
        /*  %JoinFKPK(Гарантийный_журнал,deleted," = "," AND") */
        Гарантийный_журнал.Код_гарантийного_талона = deleted.Код_гарантийного_талона
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Гарантийный_талон because Гарантийный_журнал exists.''
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
/****** Object:  Trigger [tD_Гарантийный_журнал]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Гарантийный_журнал]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Гарантийный_журнал] ON [dbo].[Гарантийный_журнал] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Гарантийный_журнал */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Гарантийный_талон  Гарантийный_журнал on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00018611", PARENT_OWNER="", PARENT_TABLE="Гарантийный_талон"
    CHILD_OWNER="", CHILD_TABLE="Гарантийный_журнал"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Код_гарантийного_талона" */
    IF EXISTS (SELECT * FROM deleted,Гарантийный_талон
      WHERE
        /* %JoinFKPK(deleted,Гарантийный_талон," = "," AND") */
        deleted.Код_гарантийного_талона = Гарантийный_талон.Код_гарантийного_талона AND
        NOT EXISTS (
          SELECT * FROM Гарантийный_журнал
          WHERE
            /* %JoinFKPK(Гарантийный_журнал,Гарантийный_талон," = "," AND") */
            Гарантийный_журнал.Код_гарантийного_талона = Гарантийный_талон.Код_гарантийного_талона
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = ''Cannot delete last Гарантийный_журнал because Гарантийный_талон exists.''
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
/****** Object:  View [dbo].[Max_Цены_по_категориям]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Max_Цены_по_категориям]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Max_Цены_по_категориям]
AS
SELECT     MAX(Цена) AS [Max Цена], Категория
FROM         dbo.Товар
GROUP BY Категория
'
GO
/****** Object:  Trigger [Insert_date]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Insert_date]'))
EXEC dbo.sp_executesql @statement = N'
CREATE TRIGGER [dbo].[Insert_date]
   ON  [dbo].[Заказ_Товар_Поставщик]
   for  INSERT
AS 
BEGIN
	Update Заказ_Товар_Поставщик SET Заказ_Товар_Поставщик.Дата_заказа = GETDATE()
END
'
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Товары_с_частой_поломкой]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Товары_с_частой_поломкой]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_Товары_с_частой_поломкой]
AS
BEGIN
Declare defect cursor local scroll
	FOR
SELECT top (15) Название_товара, COUNT(Гарантийный_журнал.Код_гарантийного_талона)AS ''Количество_замен'' 
  FROM  ( Товар   	INNER JOIN     Продажа
    ON (Товар.ID_товара=Продажа.ID_товара)
	   INNER JOIN 		 Гарантийный_талон
	   ON (Гарантийный_талон.Код_гарантийного_талона = Продажа.Код_гарантийного_талона)
		  INNER JOIN     Гарантийный_журнал
		  ON (Гарантийный_журнал.Код_гарантийного_талона= Гарантийный_талон.Код_гарантийного_талона)									
   )
   GROUP BY Название_товара
   ORDER BY Количество_замен ASC
   
	Open defect
	While (@@FETCH_STATUS=0)
	Begin
		Fetch next from defect
	End 
	close defect
	deallocate defect
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Сформировать_прайс]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Сформировать_прайс]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_Сформировать_прайс]
AS
BEGIN
Declare price cursor local FORWARD_ONLY
	For
	Select
			(Select COUNT(*) From [Товар]) ''Общее количество товаров'',
				[Название_товара],
				[Категория],
				[Количество_склад]+[Количество_магазин] as "Количество",
				[Цена],
				[Срок_гарантии]
		   From [Товар]
		   Order by  [Категория] ASC
  
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
/****** Object:  StoredProcedure [dbo].[CURSOR_Продажи_за_Год]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Продажи_за_Год]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_Продажи_за_Год]

AS
BEGIN
 Declare	@НомерГода int
	set @НомерГода = YEAR(GETDATE())
 Declare sells cursor local dynamic	
 FOR		
   Select Sum([цена]) as ''Выручка'' 
	 FROM [dbo].Продажа 
	 Where (Продажа.Код_гарантийного_талона in
		(Select [Код_гарантийного_талона]
			From dbo.[Гарантийный_талон]
				Where (Year([Дата_время])=@НомерГода))
		)
 Open sells
 While (@@FETCH_STATUS=0)
	Begin
	Fetch next from sells
	End
CLOSE sells
DEALLOCATE sells	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CURSOR_Показать_Ближайшие_Заказы]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Показать_Ближайшие_Заказы]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_Показать_Ближайшие_Заказы]
AS
BEGIN
Declare orders cursor local scroll
	FOR
	Select  Str([ID_Заказа]) as ''ID_заказа'',[Номер_паспорта_клиента],[ID_товара],
			DATEDIFF(D,[Дата_заказа], GETDATE()) as ''Дней_с_регистрации''
		From Заказ_Товар_Поставщик
			Where ( DATEDIFF(D,[Дата_заказа],GETDATE())>7)
			Order By DATEDIFF(D,[Дата_заказа],GETDATE()) Asc
			
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
/****** Object:  StoredProcedure [dbo].[CURSOR_Максимальная_цена_категории]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CURSOR_Максимальная_цена_категории]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CURSOR_Максимальная_цена_категории]
	
AS
BEGIN
	Declare prices_goods cursor local DYNAMIC 
	FOR
		SELECT DISTINCT [Товар].Категория, Max([Товар].[Цена]) as ''MaxЦена'' 
			FROM dbo.[Товар]
				 Group BY Категория
	open prices_goods
	While (@@FETCH_STATUS=0)
	Begin
		Fetch next from prices_goods
	End 
	Close prices_goods
	deallocate prices_goods
END
' 
END
GO
/****** Object:  Trigger [Удалить_талон]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Удалить_талон]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Удалить_талон] 
   ON  [dbo].[Гарантийный_талон]
   AFTER DELETE
AS 
BEGIN
	
Declare	@Код_талона int
Set @Код_талона = 
	(Select Код_гарантийного_талона from deleted )
	
	if IsNull(@Код_талона,''новыйкод'')=1
	Begin
		Raiserror (''Пустой код талона'',1,16) 
		
	End
	
	Update Продажа
		Set Код_гарантийного_талона = Null
			Where (Код_гарантийного_талона = @Код_талона)
END
'
GO
/****** Object:  Trigger [Удаление_с_проверкой_товара]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Удаление_с_проверкой_товара]'))
EXEC dbo.sp_executesql @statement = N'Create TRIGGER [dbo].[Удаление_с_проверкой_товара] 
   ON  [dbo].[Поставщик] 
   for DELETE
AS 
BEGIN
	Begin transaction
 Declare @код_поставщика int
 Set @код_поставщика = 
	(Select  Код_поставщика
     From deleted)
 if (Select COUNT(ID_заказа)
		 From 	Заказ_Товар_Поставщик
			 Where (@код_поставщика=Код_поставщика)
	) >0
	Begin
		raiserror (''Товар от этого поставщика ещё в заказе. Удаление невозможно.'',1,16)
		rollback transaction
	End	 
END
'
GO
/****** Object:  StoredProcedure [dbo].[Триггер_удалить_поставщика]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_удалить_поставщика]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Триггер_удалить_поставщика]
AS
BEGIN
	Delete from dbo.Поставщик 
		where (Поставщик.Код_поставщика=1)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Триггер_ПроверкаЛатиницы_Клиент_Ошибка]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_ПроверкаЛатиницы_Клиент_Ошибка]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Триггер_ПроверкаЛатиницы_Клиент_Ошибка]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


 --	@Номер_паспорта_клиента 	[nvarchar](20),
--	@ФИО_клиента 		[nvarchar](50),
--	@Дата_рождения			[nvarchar](30),
--	@Адрес_клиента 		[nvarchar](100),
--	@Телефон_домашний 		[nvarchar](15),
--	@Телефон_мобильный 		[nvarchar](20) 
begin Transaction
BEGIN TRY
	 EXEC [Зарегистрировать_Клиента] N''КВ23242342'', N''Новый Человек'', N''12.12.12'', 
		N''Могилёв, ул.Неизвестная'', N''489618'', N''+375259485485''
END TRY
BEGIN CATCH
    rollback transaction 
END CATCH;
 
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Триггер_ПроверкаЛатиницы_Клиент_БЕЗ_ОШИБКИ]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_ПроверкаЛатиницы_Клиент_БЕЗ_ОШИБКИ]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[Триггер_ПроверкаЛатиницы_Клиент_БЕЗ_ОШИБКИ]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 --	@Номер_паспорта_клиента 	[nvarchar](20),
--	@ФИО_клиента 		[nvarchar](50),
--	@Дата_рождения			[nvarchar](30),
--	@Адрес_клиента 		[nvarchar](100),
--	@Телефон_домашний 		[nvarchar](15),
--	@Телефон_мобильный 		[nvarchar](20)
  EXEC [Зарегистрировать_Клиента] N''RB23242342'', N''Новый Человек'', N''12.12.12'', 
 N''Могилёв, ул.Неизвестная'', N''489618'', N''+375259485485''

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Триггер_Изменение_фамилии_Сотрудник]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_Изменение_фамилии_Сотрудник]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Триггер_Изменение_фамилии_Сотрудник]
AS
BEGIN
	Update Сотрудник Set ФИО_сотрудника=''Жуков Роман'' where Сотрудник.ФИО_сотрудника=''ЖУКОВ Р.С.''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Триггер_запись_в_гарантийный_журнал_ОШИБКА]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_запись_в_гарантийный_журнал_ОШИБКА]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Триггер_запись_в_гарантийный_журнал_ОШИБКА]
AS
BEGIN
/*		@Код_гарантийного_талона nvarchar(10),
		@Статус_обслуживания nvarchar(20),
		@Примечание ntext,
		@Причина text
*/

	EXEC  Занести_запись_в_гарантийный_журнал N''12312'',''Новый_статус'','''',''новая причина''
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Триггер_Добавление_сотрудника_]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_Добавление_сотрудника_]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create procedure [dbo].[Триггер_Добавление_сотрудника_]
As
--Begin transaction
Insert Сотрудник (Номер_паспорта_сотрудника,ФИО_сотрудника,Дата_рождения,
					Адрес_сотрудника,Телефон_домашний,Телефон_мобильный,Должность)
	   Values ( ''ET34097213'', ''Новый_Человек'', ''10.01.1985'',''Могилёв, Ул. Неизвестная'',
				 ''453048'',''+37559461563'',''Чернорабочий'')
--rollback transaction' 
END
GO
/****** Object:  StoredProcedure [dbo].[Триггер_вставка_Сервисного_центра_ОШИБКА]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Триггер_вставка_Сервисного_центра_ОШИБКА]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Триггер_вставка_Сервисного_центра_ОШИБКА]
AS
BEGIN
	insert into Сервисный_центр (Название_сервисного_центра,Адрес,Телефон)
	Values (''new сервисный центр'',null,null)
END
' 
END
GO
/****** Object:  View [dbo].[Товары_с_частой_поломкой]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Товары_с_частой_поломкой]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Товары_с_частой_поломкой]
AS
 -- взять Гарантийный_журнал.Код_гарантийного_талона , найти ID_товара, Найти название.
 --  Найти количество Гарантийный_журнал.Код_гарантийного_талона 
   		
SELECT top (15) Название_товара, COUNT(Гарантийный_журнал.Код_гарантийного_талона)AS ''Количество_замен'' 
  FROM
  ( Товар
  	INNER JOIN 
	  Продажа
    ON (Товар.ID_товара=Продажа.ID_товара)
	   INNER JOIN
		 Гарантийный_талон
	   ON (Гарантийный_талон.Код_гарантийного_талона = Продажа.Код_гарантийного_талона)
		  INNER JOIN	     	  	    		
			Гарантийный_журнал
		  ON (Гарантийный_журнал.Код_гарантийного_талона= Гарантийный_талон.Код_гарантийного_талона)									
   )
   GROUP BY Название_товара
   ORDER BY Количество_замен ASC'
GO
/****** Object:  Trigger [tU_Товар]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tU_Товар]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tU_Товар] ON [dbo].[Товар] FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Товар */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insID_товара nvarchar(20),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Товар участвует в Продажа on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00040a94", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="участвует в", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="участвует_в", FK_COLUMNS="ID_товара" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_товара)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insID_товара = inserted.ID_товара
        FROM inserted
      UPDATE Продажа
      SET
        /*  %JoinFKPK(Продажа,@ins," = ",",") */
        Продажа.ID_товара = @insID_товара
      FROM Продажа,inserted,deleted
      WHERE
        /*  %JoinFKPK(Продажа,deleted," = "," AND") */
        Продажа.ID_товара = deleted.ID_товара
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Товар update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Товар  Товар_Готовое_решение on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Товар_Готовое_решение"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_товара" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_товара)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insID_товара = inserted.ID_товара
        FROM inserted
      UPDATE Товар_Готовое_решение
      SET
        /*  %JoinFKPK(Товар_Готовое_решение,@ins," = ",",") */
        Товар_Готовое_решение.ID_товара = @insID_товара
      FROM Товар_Готовое_решение,inserted,deleted
      WHERE
        /*  %JoinFKPK(Товар_Готовое_решение,deleted," = "," AND") */
        Товар_Готовое_решение.ID_товара = deleted.ID_товара
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = ''Cannot cascade Товар update because more than one row has been affected.''
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Товар  Заказ_Товар_Поставщик on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_товара" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID_товара)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Заказ_Товар_Поставщик
      WHERE
        /*  %JoinFKPK(Заказ_Товар_Поставщик,deleted," = "," AND") */
        Заказ_Товар_Поставщик.ID_товара = deleted.ID_товара
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = ''Cannot update Товар because Заказ_Товар_Поставщик exists.''
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
/****** Object:  Trigger [tD_Товар]    Script Date: 11/19/2013 05:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[tD_Товар]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[tD_Товар] ON [dbo].[Товар] FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Товар */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Товар участвует в Продажа on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0003154d", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Продажа"
    P2C_VERB_PHRASE="участвует в", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="участвует_в", FK_COLUMNS="ID_товара" */
    IF EXISTS (
      SELECT * FROM deleted,Продажа
      WHERE
        /*  %JoinFKPK(Продажа,deleted," = "," AND") */
        Продажа.ID_товара = deleted.ID_товара
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Товар because Продажа exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Товар  Товар_Готовое_решение on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Товар_Готовое_решение"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="ID_товара" */
    IF EXISTS (
      SELECT * FROM deleted,Товар_Готовое_решение
      WHERE
        /*  %JoinFKPK(Товар_Готовое_решение,deleted," = "," AND") */
        Товар_Готовое_решение.ID_товара = deleted.ID_товара
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Товар because Товар_Готовое_решение exists.''
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Товар  Заказ_Товар_Поставщик on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Товар"
    CHILD_OWNER="", CHILD_TABLE="Заказ_Товар_Поставщик"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="ID_товара" */
    IF EXISTS (
      SELECT * FROM deleted,Заказ_Товар_Поставщик
      WHERE
        /*  %JoinFKPK(Заказ_Товар_Поставщик,deleted," = "," AND") */
        Заказ_Товар_Поставщик.ID_товара = deleted.ID_товара
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = ''Cannot delete Товар because Заказ_Товар_Поставщик exists.''
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
/****** Object:  ForeignKey [Relationship_484]    Script Date: 11/19/2013 05:25:14 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[Товар]'))
ALTER TABLE [dbo].[Товар]  WITH CHECK ADD  CONSTRAINT [Relationship_484] FOREIGN KEY([Код_сервисного_центра])
REFERENCES [dbo].[Сервисный_центр] ([Код_сервисного_центра])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_484]') AND parent_object_id = OBJECT_ID(N'[dbo].[Товар]'))
ALTER TABLE [dbo].[Товар] CHECK CONSTRAINT [Relationship_484]
GO
/****** Object:  ForeignKey [заключает]    Script Date: 11/19/2013 05:25:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Кредитный_договор]'))
ALTER TABLE [dbo].[Кредитный_договор]  WITH CHECK ADD  CONSTRAINT [заключает] FOREIGN KEY([Номер_паспорта_клиента])
REFERENCES [dbo].[Клиент] ([Номер_паспорта_клиента])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Кредитный_договор]'))
ALTER TABLE [dbo].[Кредитный_договор] CHECK CONSTRAINT [заключает]
GO
/****** Object:  ForeignKey [R_23]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик]  WITH CHECK ADD  CONSTRAINT [R_23] FOREIGN KEY([ID_товара])
REFERENCES [dbo].[Товар] ([ID_товара])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_23]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] CHECK CONSTRAINT [R_23]
GO
/****** Object:  ForeignKey [R_24]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик]  WITH CHECK ADD  CONSTRAINT [R_24] FOREIGN KEY([Номер_паспорта_клиента])
REFERENCES [dbo].[Клиент] ([Номер_паспорта_клиента])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_24]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] CHECK CONSTRAINT [R_24]
GO
/****** Object:  ForeignKey [Relationship_456]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик]  WITH NOCHECK ADD  CONSTRAINT [Relationship_456] FOREIGN KEY([Код_поставщика])
REFERENCES [dbo].[Поставщик] ([Код_поставщика])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Relationship_456]') AND parent_object_id = OBJECT_ID(N'[dbo].[Заказ_Товар_Поставщик]'))
ALTER TABLE [dbo].[Заказ_Товар_Поставщик] NOCHECK CONSTRAINT [Relationship_456]
GO
/****** Object:  ForeignKey [выдается_при]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа]  WITH CHECK ADD  CONSTRAINT [выдается_при] FOREIGN KEY([Код_гарантийного_талона])
REFERENCES [dbo].[Гарантийный_талон] ([Код_гарантийного_талона])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] CHECK CONSTRAINT [выдается_при]
GO
/****** Object:  ForeignKey [заключается_при]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа]  WITH CHECK ADD  CONSTRAINT [заключается_при] FOREIGN KEY([Код_договора])
REFERENCES [dbo].[Кредитный_договор] ([Код_договора])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[заключается_при]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] CHECK CONSTRAINT [заключается_при]
GO
/****** Object:  ForeignKey [участвует_в]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[участвует_в]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа]  WITH CHECK ADD  CONSTRAINT [участвует_в] FOREIGN KEY([ID_товара])
REFERENCES [dbo].[Товар] ([ID_товара])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[участвует_в]') AND parent_object_id = OBJECT_ID(N'[dbo].[Продажа]'))
ALTER TABLE [dbo].[Продажа] CHECK CONSTRAINT [участвует_в]
GO
/****** Object:  ForeignKey [выдает]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_талон]'))
ALTER TABLE [dbo].[Гарантийный_талон]  WITH CHECK ADD  CONSTRAINT [выдает] FOREIGN KEY([Номер_паспорта_сотрудника])
REFERENCES [dbo].[Сотрудник] ([Номер_паспорта_сотрудника])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[выдает]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_талон]'))
ALTER TABLE [dbo].[Гарантийный_талон] CHECK CONSTRAINT [выдает]
GO
/****** Object:  ForeignKey [R_16]    Script Date: 11/19/2013 05:25:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_журнал]'))
ALTER TABLE [dbo].[Гарантийный_журнал]  WITH NOCHECK ADD  CONSTRAINT [R_16] FOREIGN KEY([Код_гарантийного_талона])
REFERENCES [dbo].[Гарантийный_талон] ([Код_гарантийного_талона])
NOT FOR REPLICATION
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[R_16]') AND parent_object_id = OBJECT_ID(N'[dbo].[Гарантийный_журнал]'))
ALTER TABLE [dbo].[Гарантийный_журнал] NOCHECK CONSTRAINT [R_16]
GO
