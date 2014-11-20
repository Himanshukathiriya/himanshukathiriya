using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Button1_click(object sender, EventArgs e)
    {
        double v1 = Convert.ToDouble( TextBox1.Text );
        double v2 = Convert.ToDouble( TextBox2.Text );
        double r1 = v1 + v2 ;
        TextBox3.Text = r1.ToString(  );
    }

    protected void Button2_click(object sender, EventArgs e)
    {
        double v1 = Convert.ToDouble(TextBox1.Text);
        double v2 = Convert.ToDouble(TextBox2.Text);
        double r1 = v1 - v2;
        TextBox3.Text = r1.ToString();
    }

    protected void Button3_click(object sender, EventArgs e)
    {
        double v1 = Convert.ToDouble(TextBox1.Text);
        double v2 = Convert.ToDouble(TextBox2.Text);
        double r1 = v1 * v2;
        TextBox3.Text = r1.ToString();
    }

    protected void Button4_click(object sender, EventArgs e)
    {
        double v1 = Convert.ToDouble(TextBox1.Text);
        double v2 = Convert.ToDouble(TextBox2.Text);
        double r1 = v1 / v2;
        TextBox3.Text = r1.ToString();
    }

    
}
