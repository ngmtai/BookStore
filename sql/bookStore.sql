/*
Navicat SQL Server Data Transfer

Source Server         : local
Source Server Version : 100000
Source Host           : ABC:1433
Source Database       : BookStore
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 100000
File Encoding         : 65001

Date: 2014-04-04 14:53:35
*/


-- ----------------------------
-- Table structure for [Author]
-- ----------------------------
DROP TABLE [Author]
GO
CREATE TABLE [Author] (
[Id] uniqueidentifier NOT NULL ,
[Name] text NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of Author
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for [Book]
-- ----------------------------
DROP TABLE [Book]
GO
CREATE TABLE [Book] (
[Id] uniqueidentifier NOT NULL ,
[SubName] text NULL ,
[Page] int NULL ,
[Image] text NULL ,
[FileSize] text NULL ,
[Description] text NULL ,
[FileType] uniqueidentifier NULL ,
[Authors] uniqueidentifier NULL ,
[Tags] text NULL ,
[Language] uniqueidentifier NULL ,
[Publisher] uniqueidentifier NULL ,
[CreateDate] datetime NULL ,
[CreateUser] uniqueidentifier NULL ,
[UpdateDate] datetime NULL ,
[UpdateUser] uniqueidentifier NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of Book
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for [Book_Category]
-- ----------------------------
DROP TABLE [Book_Category]
GO
CREATE TABLE [Book_Category] (
[BookId] uniqueidentifier NOT NULL ,
[CategoryId] uniqueidentifier NOT NULL ,
[CreateDate] datetime NULL ,
[CreateUser] uniqueidentifier NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of Book_Category
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for [Category]
-- ----------------------------
DROP TABLE [Category]
GO
CREATE TABLE [Category] (
[Id] uniqueidentifier NOT NULL ,
[TypeName] text NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of Category
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for [FileType]
-- ----------------------------
DROP TABLE [FileType]
GO
CREATE TABLE [FileType] (
[Id] uniqueidentifier NOT NULL ,
[TypeName] text NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of FileType
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for [Language]
-- ----------------------------
DROP TABLE [Language]
GO
CREATE TABLE [Language] (
[Id] uniqueidentifier NOT NULL ,
[Name] text NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of Language
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Table structure for [Publisher]
-- ----------------------------
DROP TABLE [Publisher]
GO
CREATE TABLE [Publisher] (
[Id] uniqueidentifier NOT NULL ,
[Name] text NULL ,
[Address] text NULL ,
[IsActive] bit NULL ,
[IsDeleted] bit NULL 
)


GO

-- ----------------------------
-- Records of Publisher
-- ----------------------------
BEGIN TRANSACTION
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Indexes structure for table Author
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [Author]
-- ----------------------------
ALTER TABLE [Author] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Book
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [Book]
-- ----------------------------
ALTER TABLE [Book] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Book_Category
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [Book_Category]
-- ----------------------------
ALTER TABLE [Book_Category] ADD PRIMARY KEY ([CategoryId], [BookId])
GO

-- ----------------------------
-- Indexes structure for table Category
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [Category]
-- ----------------------------
ALTER TABLE [Category] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table FileType
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [FileType]
-- ----------------------------
ALTER TABLE [FileType] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Language
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [Language]
-- ----------------------------
ALTER TABLE [Language] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Publisher
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [Publisher]
-- ----------------------------
ALTER TABLE [Publisher] ADD PRIMARY KEY ([Id])
GO
