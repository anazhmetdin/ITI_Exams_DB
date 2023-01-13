USE [ITI_Exams]
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (264, N'MCQ', N'What is an operating system?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (265, N'MCQ', N'What is the main function of the command interpreter?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (266, N'MCQ', N'In Operating Systems, which of the following is a CPU scheduling algorithms?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (268, N'MCQ', N'To access the services of the operating system, the interface is provided by the ___________', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (269, N'MCQ', N'CPU scheduling is the basis of ___________', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (270, N'MCQ', N'Which one of the following is not true?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (271, N'MCQ', N'Which one of the following errors will be handle by the operating system?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (272, N'MCQ', N'Where is the operating system placed in the memory?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (273, N'MCQ', N'If a process fails, most operating system write the error information to a ______', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (275, N'MCQ', N'Which one of the following is not a real time operating system?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (276, N'MCQ', N'What does OS X has?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (277, N'MCQ', N'In operating system, each process has its own __________', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (278, N'MCQ', N'In a timeshare operating system, when the time slot assigned to a process is completed, the process switches from the current state to?', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (279, N'MCQ', N'Cascading termination refers to the termination of all child processes if the parent process terminates ______', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (280, N'MTF', N'Threads within the same process can share data with one another by passing pointers to objects on their stacks.', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (281, N'MTF', N'A user-level process cannot modify its own page table entries.', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (282, N'MTF', N'Immediately after a process has been forked, the same variable in both the parent and the child will have the same virtual memory address but different physical memory addresses.', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (283, N'MTF', N'The scheduler is the part of an Operating System that determines the priority of each process.', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (284, N'MTF', N'"Hyper-threading" refers to the situation in which a modern operating system allows thousands of threads to access the same address space.', 5)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (285, N'MTF', N'Threads in a process share same file descriptors.', 5)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (993, N'interface between the hardware and application programs', 264)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (994, N'collection of programs that manages hardware resources', 264)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (995, N'system service provider to the application programs', 264)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (996, N'all of the mentioned', 264)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (997, N'to provide the interface between the API and application program', 265)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (998, N'to handle the files in the operating system', 265)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (999, N'to get and execute the next user-specified command', 265)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1000, N'none of the mentioned', 265)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1001, N'Priority', 266)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1002, N'Round Robin', 266)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1003, N'Shortest Job First', 266)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1004, N'All of the mentioned', 266)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1009, N'Library', 268)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1010, N'API', 268)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1011, N'System calls', 268)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1012, N'Assembly instructions', 268)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1013, N'multiprogramming operating systems', 269)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1014, N'larger memory sized systems', 269)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1015, N'multiprocessor systems', 269)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1016, N'none of the mentioned', 269)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1017, N'kernel remains in the memory during the entire computer session', 270)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1018, N'kernel is made of various modules which can not be loaded in running operating system', 270)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1019, N'kernel is the first part of the operating system to load into memory during booting', 270)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1020, N'kernel is the program that constitutes the central core of the operating system', 270)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1021, N'lack of paper in printer', 271)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1022, N'connection failure in the network', 271)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1023, N'power failure', 271)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1024, N'all of the mentioned', 271)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1025, N'either low or high memory (depending on the location of interrupt vector)', 272)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1026, N'in the low memory', 272)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1027, N'in the high memory', 272)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1028, N'none of the mentioned', 272)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1029, N'new file', 273)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1030, N'another running process', 273)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1031, N'log file', 273)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1032, N'none of the mentioned', 273)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1037, N'RTLinux', 275)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1038, N'Palm OS', 275)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1039, N'QNX', 275)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1040, N'VxWorks', 275)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1041, N'monolithic kernel with modules', 276)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1042, N'microkernel', 276)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1043, N'monolithic kernel', 276)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1044, N'hybrid kernel', 276)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1045, N'open files', 277)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1046, N'pending alarms, signals, and signal handlers', 277)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1047, N'address space and global variables', 277)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1048, N'all of the mentioned', 277)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1049, N'Suspended state', 278)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1050, N'Terminated state', 278)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1051, N'Ready state', 278)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1052, N'Blocked state', 278)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1053, N'Normally or abnormally', 279)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1054, N'Abnormally', 279)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1055, N'Normally', 279)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1056, N'None of the mentioned', 279)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1057, N'True', 280)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1058, N'False', 280)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1059, N'True', 281)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1061, N'False', 281)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1062, N'True', 282)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1062, N'False', 282)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1063, N'True', 283)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1064, N'False', 283)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1065, N'True', 284)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1066, N'False', 284)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1067, N'True', 285)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1068, N'False', 285)
GO
SET IDENTITY_INSERT [dbo].[Choice] OFF
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (264, 996)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (265, 999)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (266, 1004)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (268, 1011)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (269, 1013)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (270, 1018)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (271, 1024)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (272, 1025)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (273, 1031)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (275, 1038)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (276, 1044)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (277, 1048)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (278, 1051)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (279, 1053)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (280, 1057)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (281, 1059)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (282, 1062)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (283, 1064)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (284, 1066)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (285, 1067)
GO