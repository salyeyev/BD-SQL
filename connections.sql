/*
   10 травня 2016 р.0:24:15
   User: 
   Server: Я-ПК\SQLEXPRESS
   Database: DB
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
use db
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Request SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Request ADD CONSTRAINT
	FK_Requests FOREIGN KEY
	(
	ID
	) REFERENCES dbo.Request_state
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Request SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Author SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Supported_language SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Album ADD CONSTRAINT
	FK_Albums_Singers FOREIGN KEY
	(
	ID_of_singer
	) REFERENCES dbo.Singer
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Album SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Translation ADD CONSTRAINT
	FK_Translations_Supported_languages FOREIGN KEY
	(
	Language_of_translation
	) REFERENCES dbo.Supported_language
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Translation ADD CONSTRAINT
	FK_Translations_Authors FOREIGN KEY
	(
	Author_of_translation
	) REFERENCES dbo.Author
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Translation SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Song ADD CONSTRAINT
	FK_Songs_Albums FOREIGN KEY
	(
	Album_
	) REFERENCES dbo.Album
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Song ADD CONSTRAINT
	FK_Songs_Translation FOREIGN KEY
	(
	Translation_of_song
	) REFERENCES dbo.Translation
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Song SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Idiom ADD CONSTRAINT
	FK_Idioms_Songs FOREIGN KEY
	(
	Song_id
	) REFERENCES dbo.Song
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Idiom SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
