
Use master;
Go
--Drop and recreate Database
 If EXISTS (Select 1 from sys.databases where name='DataWarehouse')
 Begin
 Alter DataBase DataWarehouse  Set Single_User With Rollback immediate;
 Drop Database DataWarehouse
 End;
 Go

-- Create Database 'DataWarehouse'
Create Database DataWarehouse;
GO
  
Use DataWarehouse;
Go

--Create Schema
Create Schema Bronze;
Go
  
Create Schema Silver;
Go
  
Create Schema Gold;
Go
