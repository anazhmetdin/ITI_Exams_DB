USE [ITI_Exams]
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (55, N'MCQ', N'What is the full form of DBMS?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (56, N'MCQ', N'In which of the following formats data is stored in the database management system?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (57, N'MCQ', N'The DBMS acts as an interface between ________________ and ________________ of an enterprise-class system', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (58, N'MCQ', N' ______________ is a set of one or more attributes taken collectively to uniquely identify a record.', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (59, N'MCQ', N'Which forms have a relation that contains information about a single entity?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (60, N'MCQ', N'_______ indicates the maximum number of entities that can be involved in a relationship.', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (61, N'MCQ', N'The user IDs can be added or removed using which of the following fixed roles?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (62, N'MCQ', N'What does a foreign key combined with a primary key create?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (63, N'MCQ', N'Which of the following is correct according to the technology deployed by DBMS?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (64, N'MCQ', N'Which of the following is correct regarding the file produced by a spreadsheet?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (65, N'MCQ', N'______ resembles Create view.', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (66, N'MCQ', N'Which of the following is the best way to represent the attributes in a large db?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (67, N'MCQ', N'Which of the following key is required in to handle the data when the encryption is applied to the data so that the unauthorised usercannot access the data?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (68, N'MCQ', N'Which of the following is known as the process of viewing cross-tab with a fixed value of one attribute?', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (69, N'MTF', N'Properties of an object are stored as rows in a table', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (70, N'MTF', N'DBMS stores data efficiently with little wasted space', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (71, N'MTF', N'A primary goal of a database system is to share data with multiple users', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (72, N'MTF', N'Multiple constraints can be included in a single query', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (73, N'MTF', N'The primary key does not necessarily have to be unique for a given table', 2)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (74, N'MTF', N'Validation can make sure that your data is correct. a or b?', 2)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (175, N'Data of Binary Management System', 55)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (176, N'Database Management System', 55)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (177, N'Database Management Service', 55)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (178, N'Data Backup Management System', 55)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (179, N'Image', 56)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (180, N'Text', 56)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (181, N'Table', 56)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (182, N'Graph', 56)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (183, N'Data and the DBMS', 57)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (184, N'Application and SQL', 57)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (185, N'Database application and the database', 57)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (186, N'he user and the software', 57)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (187, N'Primary Key', 58)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (188, N'Foreign key', 58)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (189, N'Super key', 58)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (190, N'Candidate key', 58)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (191, N'4NF', 59)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (192, N'2NF', 59)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (193, N'3NF', 59)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (194, N'5NF', 59)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (195, N'Greater Entity Count', 60)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (196, N'Minimum cardinality', 60)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (197, N'Maximum cardinality', 60)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (198, N'ERD', 60)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (199, N'db_sysadmin', 61)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (200, N'db_accessadmin', 61)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (201, N'db_securityadmin', 61)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (202, N'db_setupadmin', 61)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (203, N'Network model between the tables that connect them', 62)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (204, N'Parent-Child relationship between the tables that connects them', 62)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (205, N'One to many relationship between the tables that connects them', 62)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (206, N'All of the mentioned', 62)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (207, N'Pointers are used to maintain transactional integrity and consistency', 63)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (208, N'Cursors are used to maintain transactional integrity and consistency', 63)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (209, N'Locks are used to maintain transactional integrity and consistency', 63)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (210, N'Triggers are used to maintain transactional integrity and consistency', 63)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (211, N'can be used as it is by the DBMS', 64)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (212, N'stored on disk in an ASCII text format', 64)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (213, N'all of the mentioned', 64)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (214, N'none of the mentioned', 64)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (215, N'Create table . . . as', 65)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (216, N'Create view as', 65)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (217, N'Create table . . .like', 65)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (218, N'With data', 65)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (219, N'Dot representation', 66)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (220, N'Concatenation', 66)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (221, N'Relational-and', 66)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (222, N'All of the mentioned', 66)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (223, N'Primary key', 67)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (224, N'Authorised key', 67)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (225, N'Encryption key', 67)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (226, N'Decryption key', 67)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (227, N'Dicing', 68)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (228, N'Pivoting', 68)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (229, N'Slicing', 68)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (230, N'Both Pivoting and Dicing', 68)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (231, N'True', 69)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (232, N'False', 69)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (233, N'True', 70)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (234, N'False', 70)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (235, N'True', 71)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (236, N'False', 71)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (237, N'True', 72)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (238, N'False', 72)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (239, N'True', 73)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (240, N'False', 73)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (241, N'True', 74)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (242, N'False', 74)
GO
SET IDENTITY_INSERT [dbo].[Choice] OFF
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (55, 176)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (56, 181)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (57, 185)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (58, 189)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (59, 191)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (60, 197)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (61, 200)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (62, 203)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (63, 209)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (64, 211)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (65, 215)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (66, 220)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (67, 226)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (68, 229)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (69, 232)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (70, 233)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (71, 235)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (72, 237)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (73, 240)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (74, 242)
GO
