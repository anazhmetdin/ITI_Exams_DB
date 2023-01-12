USE [ITI_Exams]
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (1, N'MCQ', N'What is C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (2, N'MCQ', N'Which of the following is the correct syntax of including a user defined header files in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (3, N'MCQ', N'Which of the following is used for comments in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (4, N'MCQ', N'Which of the following user-defined header file extension used in c++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (5, N'MCQ', N'Which of the following is a correct identifier in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (6, N'MCQ', N'Which of the following is not a type of Constructor in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (7, N'MCQ', N'Which of the following approach is used by C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (8, N'MCQ', N'What is virtual inheritance in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (9, N'MCQ', N'What happens if the following C++ statement is compiled and executed?
int *ptr = NULL;
delete ptr;', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (10, N'MCQ', N'What will be the output of the following C++ code?

#include <iostream> 
#include <string>
using namespace std; 
int main(int argc, char const *argv[])
{
	char s1[6] = "Hello";
	char s2[6] = "World";
	char s3[12] = s1 + " " + s2;
	cout<<s3;
	return 0;
}', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (11, N'MCQ', N'What is the difference between delete and delete[] in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (12, N'MCQ', N'What happens if the following program is executed in C and C++?

#include <stdio.h> 
int main(voi
{ 
	int new = 5;
	printf("%d", new); 
}', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (13, N'MCQ', N'What happens if the following program is executed in C and C++?

#include <stdio.h> 
void func(void)
{
	printf("Hello");
}
void main() 
{ 
	func();
	func(2);
}', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (14, N'MCQ', N'Which of the following is correct about this pointer in C++?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (15, N'MCQ', N'What will be the output of the following C++ code?

    #include <iostream>
    #include <string>
    #include <algorithm>
    using namespace std;
    int main() 
    {
        string s = "spaces in text";
        s.erase(remove(s.begin(), s.end(), '' '' ), s.end() ) ;
        cout << s << endl;
    }', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (16, N'MCQ', N'Which of the following C++ code will give error on compilation?

================code 1=================
#include <iostream>
using namespace std;
int main(int argc, char const *argv[])
{
	cout<<"Hello World";
	return 0;
}

================code 2=================
#include <iostream>
int main(int argc, char const *argv[])
{
	std::cout<<"Hello World";
	return 0;
}', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (17, N'MCQ', N'Which of the following type is provided by C++ but not C?', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (18, N'MCQ', N'What is the value of p in the following C++ code snippet?

    #include <iostream>
    using namespace std;
    int main()
    {
        int p;
        bool a = true;
        bool b = false;
        int x = 10;
        int y = 5;
        p = ((x | y) + (a + b));
        cout << p;
        return 0;
    }', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (19, N'MCQ', N'By default, all the files in C++ are opened in _________ mode.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (20, N'MCQ', N'Inside which HTML element do we put the JavaScript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (21, N'MCQ', N'Where is the correct place to insert a JavaScript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (22, N'MCQ', N'Is it necessary for the external script file to contain a <script> tag?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (23, N'MCQ', N'What is the correct syntax for referring to an external script called ''gfg.js''?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (24, N'MCQ', N'How many ways are there with which we can declare a variable in javascript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (25, N'MCQ', N'Is a variable named ''apple'' same as ''Apple'' in javascript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (26, N'MCQ', N'Which of the following represent truthy values in javascript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (27, N'MCQ', N'What will be the output of the following code?
< script >
document.write( typeof( ''1'' + 2) );
</ script >', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (28, N'MCQ', N'What will be the output of the following code?
< script>
let ans = 6 / "3";
document.write ( typeof ans );
< /script>', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (29, N'MCQ', N'What is the correct JavaScript syntax to change the content of the HTML element below?
<p id="demo">May the code be with you.</p>', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (30, N'MCQ', N'What is the correct precedence of the operator in javascript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (31, N'MCQ', N'What will be the output of the following code snippet let gfg = â€‌GeeksforGeeksâ€‌ console.log(gfg.charAt(4))?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (32, N'MCQ', N'What will be the output of the following code snippet let gfg=â€‌GeeksforGeeksâ€‌ console.log(gfg.indexOf(â€کGâ€™))?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (33, N'MCQ', N'Which of the following represent falsy values in javascript?', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (34, N'MTF', N'You can use a text string as a literal value or assign it to a variable', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (35, N'MTF', N'The statement document.write("This is a text string.");
prints "This is a text string".', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (36, N'MTF', N'JavaScript can be used to delete persistent cookies in a program.', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (37, N'MTF', N'To round a number to the next highest integer you will use the round(x) Math class method.', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (38, N'MTF', N'In JavaScript code, you use the words yes and no to indicate Boolean values.', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (39, N'MTF', N'When you add a new property to an object that has been instantiated from a constructor function, the new property is available to all objects.', 4)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (40, N'MTF', N'The computer will carry out the instructions that follow the symbol //', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (41, N'MTF', N'A program must have a main function.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (42, N'MTF', N'The following is an example of a declaration statement:
cout << "Enter a number: ";', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (43, N'MTF', N'An identifier must start with a letter or an underscore.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (44, N'MTF', N'It is best to use very short identifiers.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (45, N'MTF', N'In the statement below: "Hello!" is called a string literal.
cout << "Hello!"', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (46, N'MTF', N'There is no limit on the size of the numbers that can be stored in the int data type.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (47, N'MTF', N'76.45e-2 is a valid value for a float data type.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (48, N'MTF', N'There are only two possible values for the bool data type.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (49, N'MTF', N'All data types take up the same amount of storage.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (50, N'MTF', N'It is good program style to put spaces between words and symbols.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (51, N'MTF', N'A C++ statement cannot extend over more than one line.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (52, N'MTF', N'In C++ addition is always evaluated before subtraction.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (53, N'MTF', N'The value of 3/7 is 0.', 1)
GO
INSERT [dbo].[Question] ([ID], [Type], [Statement], [Course_ID]) VALUES (54, N'MTF', N'>> is used for output.', 1)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Choice] ON 
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (1, N'C++ is an object oriented programming language', 1)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (2, N'C++ is a procedural programming language', 1)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (3, N'C++ supports both procedural and object oriented programming language', 1)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (4, N'C++ is a functional programming language', 1)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (5, N'#include [userdefined]', 2)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (6, N'#include â€œuserdefinedâ€‌', 2)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (7, N'#include <userdefined.h>', 2)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (8, N'#include <userdefined>', 2)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (9, N'/* comment */', 3)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (10, N'// comment */', 3)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (11, N'// comment', 3)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (12, N'both // comment or /* comment */', 3)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (13, N'hg', 4)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (14, N'cpp', 4)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (15, N'h', 4)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (16, N'hf', 4)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (17, N'VAR_1234', 5)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (18, N'$var_name', 5)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (19, N'7VARNAME', 5)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (20, N'7var_name', 5)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (21, N'Default constructor', 6)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (22, N'Parameterized constructor', 6)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (23, N'Copy constructor', 6)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (24, N'Friend constructor', 6)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (25, N'Left-right', 7)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (26, N'Right-left', 7)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (27, N'Bottom-up', 7)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (28, N'Top-down', 7)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (29, N'C++ technique to enhance multiple inheritance', 8)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (30, N'C++ technique to ensure that a private member of the base class can be accessed somehow', 8)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (31, N'C++ technique to avoid multiple inheritances of classes', 8)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (32, N'C++ technique to avoid multiple copies of the base class into children/derived class', 8)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (33, N'The program is not semantically correct', 9)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (34, N'The program is compiled and executed successfully', 9)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (35, N'The program gives a compile-time error', 9)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (36, N'The program compiled successfully but throws an error during run-time', 9)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (37, N'Hello', 10)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (38, N'World', 10)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (39, N'Error', 10)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (40, N'Hello World', 10)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (41, N'delete is syntactically correct but delete[] is wrong and hence will give an error if used in any case', 11)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (42, N'delete is used to delete normal objects whereas delete[] is used to pointer objects', 11)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (43, N'delete is a keyword whereas delete[] is an identifier', 11)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (44, N'delete is used to delete single object whereas delete[] is used to multiple(array/pointer of) objects', 11)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (45, N'Error in C and successful execution in C++', 12)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (46, N'Error in both C and C++', 12)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (47, N'Error in C++ and successful execution in C', 12)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (48, N'A successful run in both C and C++', 12)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (49, N'Outputs Hello twice in both C and C++', 13)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (50, N'Error in C and successful execution in C++', 13)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (51, N'Error in C++ and successful execution in C', 13)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (52, N'Error in both C and C++', 13)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (53, N'this pointer is passed as a hidden argument in all static variables of a class', 14)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (54, N'this pointer is passed as a hidden argument in all the functions of a class', 14)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (55, N'this pointer is passed as a hidden argument in all non-static functions of a class', 14)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (56, N'this pointer is passed as a hidden argument in all static functions of a class', 14)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (57, N'spacesintext', 15)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (58, N'spaces in text', 15)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (59, N'spaces', 15)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (60, N'spaces in', 15)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (61, N'Code 1 only', 16)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (62, N'Neither code 1 nor code 2', 16)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (63, N'Both code 1 and code 2', 16)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (64, N'Code 2 only', 16)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (65, N'double', 17)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (66, N'float', 17)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (67, N'int', 17)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (68, N'bool', 17)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (69, N'12', 18)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (70, N'0', 18)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (71, N'2', 18)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (72, N'16', 18)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (73, N'Binary', 19)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (74, N'VTC', 19)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (75, N'Text', 19)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (76, N'ISCII', 19)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (77, N'<javascript>', 20)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (78, N'<js>', 20)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (79, N'<src>', 20)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (80, N'<script>', 20)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (81, N'Both the head section and the body section are correct', 21)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (82, N'The head section', 21)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (83, N'The body section', 21)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (84, N'None of the above', 21)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (85, N'Yes', 22)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (86, N'No', 22)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (87, N'Depends on the type of include', 22)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (88, N'None of the above', 22)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (89, N'<script name="gfg.js">', 23)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (90, N'<script href="gfg.js">', 23)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (91, N'<script src="gfg.js">', 23)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (92, N'None of these', 23)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (93, N'Only one', 24)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (94, N'Three', 24)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (95, N'Infinitely many', 24)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (96, N'None of the above', 24)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (97, N'Yes', 25)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (98, N'No', 25)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (99, N'Only when we use ''strict''', 25)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (100, N'None of the above', 25)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (101, N'true', 26)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (102, N'{}', 26)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (103, N'[]', 26)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (104, N'All of the above', 26)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (105, N'''boolean''', 27)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (106, N'''string''', 27)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (107, N'''number''', 27)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (108, N'None of the above', 27)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (109, N'None of the above', 28)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (110, N'''number''', 28)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (111, N'''integer''', 28)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (112, N'''string', 28)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (113, N'document.getElementById("demo").innerHTML = "Hola!";', 29)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (114, N'document.getElement("p").innerHTML = "Hola!";', 29)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (115, N'#demo.innerHTML = "Hola!";', 29)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (116, N'document.getElementByName("p").innerHTML = "Hola!";', 29)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (117, N'() [] . ++', 30)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (118, N'++ . [] ()', 30)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (119, N'. ++ [] ()', 30)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (120, N'() ++ . []', 30)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (121, N'o', 31)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (122, N'f', 31)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (123, N'k', 31)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (124, N's', 31)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (125, N'8', 32)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (126, N'0  ', 32)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (127, N'-1', 32)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (128, N'2', 32)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (129, N'false', 33)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (130, N''' ''', 33)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (131, N'undefined', 33)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (132, N'All of the above', 33)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (133, N'True', 34)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (134, N'False', 34)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (135, N'True', 35)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (136, N'False', 35)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (137, N'True', 36)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (138, N'False', 36)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (139, N'True', 37)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (140, N'False', 37)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (141, N'True', 38)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (142, N'False', 38)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (143, N'True', 39)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (144, N'False', 39)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (145, N'True', 40)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (146, N'False', 40)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (147, N'True', 41)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (148, N'False', 41)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (149, N'True', 42)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (150, N'False', 42)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (151, N'True', 43)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (152, N'False', 43)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (153, N'True', 44)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (154, N'False', 44)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (155, N'True', 45)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (156, N'False', 45)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (157, N'True', 46)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (158, N'False', 46)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (159, N'True', 47)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (160, N'False', 47)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (161, N'True', 48)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (162, N'False', 48)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (163, N'True', 49)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (164, N'False', 49)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (165, N'True', 50)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (166, N'False', 50)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (167, N'True', 51)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (168, N'False', 51)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (169, N'True', 52)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (170, N'False', 52)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (171, N'True', 53)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (172, N'False', 53)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (173, N'True', 54)
GO
INSERT [dbo].[Choice] ([ID], [Text], [Question_ID]) VALUES (174, N'False', 54)
GO
SET IDENTITY_INSERT [dbo].[Choice] OFF
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (1, 3)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (2, 6)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (3, 12)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (4, 15)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (5, 17)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (6, 24)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (7, 27)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (8, 32)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (9, 34)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (10, 39)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (11, 44)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (12, 47)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (13, 52)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (14, 55)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (15, 57)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (16, 62)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (17, 68)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (18, 72)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (19, 75)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (20, 80)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (21, 81)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (22, 86)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (23, 91)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (24, 94)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (25, 98)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (26, 104)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (27, 106)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (28, 110)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (29, 113)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (30, 117)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (31, 124)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (32, 126)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (33, 132)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (34, 133)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (35, 136)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (36, 137)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (37, 140)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (38, 142)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (39, 144)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (40, 146)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (41, 147)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (42, 150)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (43, 151)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (44, 154)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (45, 155)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (46, 158)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (47, 159)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (48, 161)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (49, 164)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (50, 165)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (51, 168)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (52, 170)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (53, 171)
GO
INSERT [dbo].[Question_Answer] ([Question_ID], [Answer]) VALUES (54, 174)
GO
