using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default : System.Web.UI.Page
{
    protected void Button1_click(object sender, EventArgs e)
    
    {
        if (FileUpload1.HasFile)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=SERVER\SQLEXPRESS;Initial Catalog=Himanshu;User ID=sa;Password=admin@123"))
            {
                string str = Guid.NewGuid().ToString();
                string FileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/") + "uploads/"+ str + FileExtension);
                string path = "~//uploads//" + str + FileExtension;
                SqlCommand comm = new SqlCommand("INSERT INTO Form_1 " + "(Name,EmailId,ContactNo,Image) " + "  VALUES(@Name, @EmailId, @ContactNo, @Image)", conn);
                comm.Parameters.AddWithValue("@Name", Name.Text);
                comm.Parameters.AddWithValue("@EmailID", EmailId.Text);
                comm.Parameters.AddWithValue("@ContactNo", ContactNo.Text);
                comm.Parameters.AddWithValue("@Image", path);

                try
                {
                    conn.Open();
                    comm.ExecuteNonQuery();
                }
                catch
                {
                    conn.Close();
                }
                Name.Text = "";
                EmailId.Text = "";
                ContactNo.Text = "";
                Lable1.Text = "Record Inserted Successfully...";
            }
        }
      }
  

    protected void Button2_click(object sender,EventArgs e)
    {
        Name.Text = "";
        EmailId.Text = "";
        ContactNo.Text = "";
    }



    protected void Button3_click(object sender, EventArgs e)
    {
        Response.Redirect("~/Display_Data.aspx");
    }
}
