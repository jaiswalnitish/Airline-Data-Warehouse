-- Sp to create database from master
IF OBJECT_ID('SP_CREATE_DB_AIRLINE_DWH', 'P') IS NOT NULL  
    DROP PROCEDURE SP_CREATE_DB_AIRLINE_DWH;  
GO  
CREATE PROCEDURE SP_CREATE_DB_AIRLINE_DWH
AS
BEGIN
SET NOCOUNT ON 

	PRINT 'Creating datatabse Airline_DWH.....'

	IF NOT EXISTS(SELECT 1 FROM SYS.DATABASES WHERE NAME='Airline_DWH')
		CREATE DATABASE [Airline_DWH]	

	PRINT 'Datatabse Airline_DWH Created Successfully.....'	

END