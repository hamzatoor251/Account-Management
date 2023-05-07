using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gridview_assignment
{
    public partial class gridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            empgrid.DataSource = new EmpAdd().MakeEmp();
            empgrid.DataBind();
        }
        public class EmpAdd
        {
            public string Name { get; set; }
            public string Rollno { get; set; }
            public string Address { get; set; }
            public List<EmpAdd> MakeEmp()
            {
                List<EmpAdd> empList = new List<EmpAdd>();
                empList.Add(new EmpAdd() { Name = "Ali", Rollno = "01", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Ahmad", Rollno = "02", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Ghufi", Rollno = "03", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Ibi", Rollno = "04", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Haday", Rollno = "05", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Iram", Rollno = "06", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Rida", Rollno = "07", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Tahir", Rollno = "08", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Bilal", Rollno = "09", Address = "Abcd" });
                empList.Add(new EmpAdd() { Name = "Moadib", Rollno = "10", Address = "Abcd" });

                return empList;
            }


        }

    }
}