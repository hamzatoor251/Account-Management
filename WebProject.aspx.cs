using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Serialization;


namespace DataTable_Project
{
    public partial class WebProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class StaffMember
        {
            public int Rndmnum()
            {
                Random rnd = new Random();
                int rndID = rnd.Next(00, 99);
                return rndID;
            }
            //public List<StaffMember> newStaff = new List<StaffMember>();
            public string Name { get; set; }
            public string ID { get; set; }
            public string Designation { get; set; }
            public List<StaffMember> MakeEmp()
            {
                var newStaff = new List<StaffMember>();
                newStaff.Add(new StaffMember() { Name = "Ali", ID = $"01{Rndmnum()}", Designation = "Founder" });
                newStaff.Add(new StaffMember() { Name = "Ahmad", ID = $"02{Rndmnum()}", Designation = "CEO" });
                newStaff.Add(new StaffMember() { Name = "Ghufi", ID = $"03{Rndmnum()}", Designation = "BOD" });
                newStaff.Add(new StaffMember() { Name = "Ibi", ID = $"04{Rndmnum()}", Designation = "BOD" });
                newStaff.Add(new StaffMember() { Name = "Haday", ID = $"05{Rndmnum()}", Designation = "Staff Manager" });
                newStaff.Add(new StaffMember() { Name = "Iram", ID = $"06{Rndmnum()}", Designation = "Branch Manager" });
                newStaff.Add(new StaffMember() { Name = "Rida", ID = $"07{Rndmnum()}", Designation = "Branch Manager" });
                newStaff.Add(new StaffMember() { Name = "Tahir", ID = $"08{Rndmnum()}", Designation = "HR Manager" });
                newStaff.Add(new StaffMember() { Name = "Bilal", ID = $"09{Rndmnum()}", Designation = "HR Manager" });
                newStaff.Add(new StaffMember() { Name = "Moadib", ID = $"10{Rndmnum()}", Designation = "Associate SA" });
                newStaff.Add(new StaffMember() { Name = "Nasir", ID = $"11{Rndmnum()}", Designation = "Associate SA" });
                newStaff.Add(new StaffMember() { Name = "Osama", ID = $"12{Rndmnum()}", Designation = "Associate SA" });
                newStaff.Add(new StaffMember() { Name = "Roshan", ID = $"13{Rndmnum()}", Designation = "Senior .Net Dev" });
                newStaff.Add(new StaffMember() { Name = "Awais", ID = $"14{Rndmnum()}", Designation = "Senior .Net Dev" });
                newStaff.Add(new StaffMember() { Name = "Kazim", ID = $"15{Rndmnum()}", Designation = "Senior .Net Dev" });
                newStaff.Add(new StaffMember() { Name = "Numan", ID = $"16{Rndmnum()}", Designation = "Senior Mern dev" });
                newStaff.Add(new StaffMember() { Name = "Raza", ID = $"17{Rndmnum()}", Designation = "Senior Mern dev" });
                newStaff.Add(new StaffMember() { Name = "Omer", ID = $"18{Rndmnum()}", Designation = "Senior Mern dev" });
                newStaff.Add(new StaffMember() { Name = "Ashraf", ID = $"19{Rndmnum()}", Designation = "Bussiner Development" });
                newStaff.Add(new StaffMember() { Name = "Asaad", ID = $"20{Rndmnum()}", Designation = "Bussiner Development" });
                newStaff.Add(new StaffMember() { Name = "Majid", ID = $"21{Rndmnum()}", Designation = "Bussiner Development" });
                newStaff.Add(new StaffMember() { Name = "Awais", ID = $"22{Rndmnum()}", Designation = "Senior Mean dev" });
                newStaff.Add(new StaffMember() { Name = "Hadir", ID = $"23{Rndmnum()}", Designation = "Senior Mean dev" });
                newStaff.Add(new StaffMember() { Name = "Atif", ID = $"24{Rndmnum()}", Designation = "Full stack dev" });
                newStaff.Add(new StaffMember() { Name = "Abdullah", ID = $"25{Rndmnum()}", Designation = "Full stack dev" });
                newStaff.Add(new StaffMember() { Name = "Shaukat", ID = $"26{Rndmnum()}", Designation = "Full stack dev" });
                newStaff.Add(new StaffMember() { Name = "Butt", ID = $"27{Rndmnum()}", Designation = "Full stack dev" });
                newStaff.Add(new StaffMember() { Name = "Burhan", ID = $"28{Rndmnum()}", Designation = "Full stack dev" });
                newStaff.Add(new StaffMember() { Name = "Azeem", ID = $"29{Rndmnum()}", Designation = "Full stack dev" });
                newStaff.Add(new StaffMember() { Name = "Sikander", ID = $"30{Rndmnum()}", Designation = "Full stack dev" });

                return newStaff;
            }


        }
        //public string editEmployee(string inPut)
        //{
        //    StaffMember staff = new StaffMember();
        //    JavaScriptSerializer js = new JavaScriptSerializer();
        //    return js.Serialize(staff.MakeEmp().Remove(inPut));
        //}
        [WebMethod]
        public static string GetEmployees()
        {
            StaffMember staff = new StaffMember();
            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(staff.MakeEmp());
        }
    }
}