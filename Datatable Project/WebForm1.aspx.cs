using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Serialization;

namespace Web_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
     
        }
        public class Student    // Class to make objects of student
        {
            public string ID { get; set; }
            public string Name { get; set; }
            public string Gender { get; set; }
            public string Email { get; set; }
            public string Phone { get; set; }

            public List<Student> Data() // list of students
            {
                var studentList = new List<Student>();
                studentList.Add(new Student() { ID = "1", Name = "Rida Fatima", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "2", Name = "Fatima Tayyab", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "3", Name = "Hadiqa Rabnawaz", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "4", Name = "Hafsa Shahid", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "5", Name = "Noor-ul-Ain", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "6", Name = "Muhammad Asaad", Gender = "Male", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "7", Name = "Omar Ashraf", Gender = "Male", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "8", Name = "Roshaan Sajjad", Gender = "Male", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "9", Name = "Ayesha Aslam", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "10", Name = "Hamza Mushtaq Toor", Gender = "Male", Email = "123@gmail.com", Phone = "090078601" });
                studentList.Add(new Student() { ID = "11", Name = "Iram Fiyyaz", Gender = "Female", Email = "123@gmail.com", Phone = "090078601" });
                return studentList;
            }
        }

        
        [WebMethod]
        public static string getStudents()  
        {
            Student stud = new Student();
            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(stud.Data()) ;
        }
    }
}