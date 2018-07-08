using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddClubs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            Label4.Text = "Data Saved";
            Label4.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label4.Text = "invalid data";
            Label4.ForeColor = System.Drawing.Color.Red;
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Clubs;Integrated Security=True;Pooling=False";
        string query1 = "insert into Club(RegNo,ClubName,ClubCity) values ('" + TextName.Text + "," + TextClubCity.Text + "," + TextBox1.Text + "')";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();

        //int[] a = (int[])Session["Clubname"];
        // Application["ClubName"] = TextName.Text;
        //String ClubName = (string)Application["Clubs"];


        //int arr = Convert.ToInt32(TextName.Text);

        //string[] name= (string[])Application["Clubname"];

    //Session["values"] = a;
        //Response.Redirect("Clubs.aspx");
    }
}