using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;

public partial class test : System.Web.UI.Page
{
   

    protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView.EditIndex = e.NewEditIndex;

        BindGridData1();
    }
    
    private void BindGridData(string Query)
    {
        SqlConnection con =new SqlConnection( @"Data Source=SERVER\SQLEXPRESS;Initial Catalog=Himanshu;Persist Security Info=True;User ID=sa;Password=admin@123");

        SqlCommand com = new SqlCommand(Query,con);

        con.Open();
        
        com.ExecuteNonQuery();        

        con.Close();
        BindGridData1();
    }
    
    private void BindGridData1()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Form_1", @"Data Source=SERVER\SQLEXPRESS;Initial Catalog=Himanshu;Persist Security Info=True;User ID=sa;Password=admin@123");
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView.DataSource = dt;
        GridView.DataBind();
    }
    
    protected void GridView_RowCancelling(object sender, GridViewCancelEditEventArgs e)
    {
        GridView.EditIndex = -1;

        BindGridData1();
    }

    protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Id = Int32.Parse(GridView.DataKeys[e.RowIndex].Value.ToString());
        string Query = "delete from Form_1 where Id=" + Id;
        delete_Image(Id);
        BindGridData(Query);
    }

    protected void delete_Image(int Id)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SERVER\SQLEXPRESS;Initial Catalog=Himanshu;Persist Security Info=True;User ID=sa;Password=admin@123");
                
        SqlCommand cmd = new SqlCommand("select top 1 Image from Form_1 where Id="+Id,con);

        DataTable dt=new DataTable();

        SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, con);
        da.Fill(dt);
        string img = Server.MapPath(dt.Rows[0]["Image"].ToString());
        if (File.Exists(img))
        {
            File.Delete(img);
        }
        
    }
    
    protected void GridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        string s = GridView.DataKeys[e.RowIndex].Value.ToString();

        int Id = Int32.Parse(GridView.DataKeys[e.RowIndex].Value.ToString());

        TextBox Name = GridView.Rows[e.RowIndex].FindControl("txtName") as TextBox;

        TextBox EmailId = GridView.Rows[e.RowIndex].FindControl("txtEmailId") as TextBox;

        TextBox ContactNo = GridView.Rows[e.RowIndex].FindControl("txtContactNo") as TextBox;

        String UpdateQuery = string.Format("UPDATE Form_1 SET Name='{0}',EmailId='{1}',ContactNo='{2}' WHERE ID = '{3}'", Name.Text, EmailId.Text, ContactNo.Text, Id);

        GridView.EditIndex = -1;

        BindGridData(UpdateQuery);

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridData1();
        }
    }

    public char img { get; set; }
}
