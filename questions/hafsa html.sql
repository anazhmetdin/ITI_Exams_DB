USE [ITI_Exams]
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (75, N'MCQ', N'What does the abbreviation HTML stand for?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (76, N'MCQ', N'To create HTML page, you need _____', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (77, N'MCQ', N'Choose the correct HTML tag to make a text italic', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (78, N'MCQ', N'What does the <br> tag add to your webpage?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (79, N'MCQ', N'Adding a border to your image helps the visitor to recognize it as what?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (80, N'MCQ', N'The tag which allows you to nest other HTML tags within the description', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (81, N'MCQ', N'Which program do you need to write HTML?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (82, N'MCQ', N'All normal webpages consists of ______.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (83, N'MCQ', N'To created a bulleted list, use _____.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (84, N'MCQ', N'Increasing the cellpadding means __________.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (85, N'MCQ', N'Choose the correct HTML tag to make a text bold', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (86, N'MCQ', N'Which tag will add rows to your tables?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (87, N'MCQ', N'To start a list using circles, use_____.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (88, N'MCQ', N'If you create an HTML page in word processor,____.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (89, N'MTF', N'Are HTML tags case sensitive?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (90, N'MTF', N'Is HTML5 backward compatible with old browsers?', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (91, N'MTF', N'Inline elements are normally displayed without starting a new line.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (92, N'MTF', N'An <iframe> is used to display a web page within a web page.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (93, N'MTF', N'In HTML, you can embed SVG elements directly into an HTML page.', 3)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (94, N'MTF', N'An <iframe> is used to display a web page within a web page.', 3)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (243, N'Hyper Text Markup Language', 75)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (244, N'Holistick Technical Method Library', 75)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (245, N'Hyper Tax Makes Line', 75)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (246, N'None of the above', 75)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (247, N'Web browser', 76)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (248, N'text editor', 76)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (249, N'Both [A] and [B]', 76)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (250, N'None of the above', 76)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (251, N'<i>', 77)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (252, N'<italic>', 77)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (253, N'<it>', 77)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (254, N'<il>', 77)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (255, N'Long break', 78)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (256, N'Paragraph break', 78)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (257, N'Line break', 78)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (258, N'None of the above', 78)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (259, N'A frame', 79)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (260, N'A link', 79)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (261, N'A picture', 79)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (262, N'None of the above', 79)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (263, N'<CAPTION>', 80)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (264, N'<TD>', 80)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (265, N'<TR>', 80)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (266, N'None of the above', 80)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (267, N'A graphics program', 81)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (268, N'Any text editor', 81)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (269, N'HTML -development suite 4', 81)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (270, N'All of the above', 81)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (271, N'Top and bottom', 82)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (272, N'Body and frameset', 82)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (273, N'Head and body', 82)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (274, N'None of the above', 82)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (275, N'<ol>', 83)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (276, N'<ul>', 83)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (277, N'<il>', 83)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (278, N'None of the above', 83)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (279, N'Increase the softness of your site', 84)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (280, N'Increase the space between cells', 84)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (281, N'Increase the distance between cell and content', 84)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (282, N'All of the above', 84)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (283, N'<bd>', 85)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (284, N'<bold>', 85)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (285, N'<bl>', 85)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (286, N'<b>', 85)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (287, N'<tr> and </tr>', 86)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (288, N'<th> and </th>', 86)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (289, N'<td> and </td>', 86)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (290, N'None of the above', 86)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (291, N'<ul "round">', 87)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (292, N'<ul type="circle">', 87)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (293, N'<ul type="round">', 87)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (294, N'<ul ="round">', 87)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (295, N'save it with binary file', 88)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (296, N'save it with WMF file', 88)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (297, N'save it with ASCII text file', 88)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (298, N'All of the above', 88)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (299, N'True', 89)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (300, N'False', 89)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (301, N'True', 90)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (302, N'False', 90)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (303, N'True', 91)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (304, N'False', 91)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (305, N'True', 92)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (306, N'False', 92)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (307, N'True', 93)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (308, N'False', 93)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (309, N'True', 94)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (310, N'False', 94)
GO
SET IDENTITY_INSERT [dbo].[Choice] OFF
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (75, 243)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (76, 249)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (77, 251)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (78, 257)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (79, 260)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (80, 263)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (81, 268)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (82, 273)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (83, 276)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (84, 281)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (85, 286)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (86, 287)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (87, 292)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (88, 297)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (89, 300)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (90, 301)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (91, 303)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (92, 305)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (93, 307)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (94, 309)
GO
