using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Clubs : System.Web.UI.Page
{
    private readonly object reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        // string a = (string)Application["Clubname"];
        //  Response.Write(a);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Clubs;Integrated Security=True;Pooling=False";

          con.Open();


        string query1 = "Select * from Club " + "ClubName";

        SqlCommand cmd1 = new SqlCommand(query1, con);
        con.Open();
        cmd1.ExecuteReader();


     


    }
}