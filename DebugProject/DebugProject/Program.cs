using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace DebugProject
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader reader = new StreamReader ("StudentGrades.txt"))
            {
                string line;
                List<StudentGrade> gradeList = new List<StudentGrade>();

                while ((line = reader.ReadLine()) != null)
                {
                    string[] row = line.Split(',');

                    StudentGrade grade = new StudentGrade();
                  

                    grade.StudentName = row[0];
                    if('0' <= row[1][0] && '9' >= row[1][0])
                    {
                        grade.PointsEarned = int.Parse(row[1]);
                    }
                    else
                    {
                        grade.PointsEarned = 0;
                    }
                    if ('0' <= row[2][0] && '9' >= row[2][0])
                    {
                        grade.PointsPossible = int.Parse(row[2]);
                    }
                    else
                    {
                        grade.PointsPossible = 100;
                    }

                    gradeList.Add(grade);
                }

                OutputGrades(gradeList);
            }

            Console.ReadLine();
        }

        public static void OutputGrades(List<StudentGrade> grades)
        {
            Console.WriteLine("Name".PadRight(20, ' ') + "Pts Earned".PadRight(20, ' ') + "Pts Possible".PadRight(20, ' ') + "Average".PadRight(10, ' ') + "Ltr Grade");

            for (var x = 0; x < grades.Count; x++ )
            {
                    StudentGrade grade = new StudentGrade {
                    StudentName = grades[x].StudentName,
                    PointsEarned = grades[x].PointsEarned,
                    PointsPossible = grades[x].PointsPossible};

                grade.CalculateAverage();
                grade.DetermineLetterGrade();

                Console.WriteLine(grade.StudentName.PadRight(20, ' ') + grade.PointsEarned.ToString().PadRight(20, ' ') + grade.PointsPossible.ToString().PadRight(20, ' ') + grade.Average.ToString().PadRight(10, ' ') + grade.LetterGrade);
            }
        }
    }
}
