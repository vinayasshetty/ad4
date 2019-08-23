using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Caching;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string data;
        if(Cache["x"]==null)
        {
            data=File.ReadAllText(Server.MapPath("TextFile.txt"));
            CacheDependency dep = new CacheDependency(Server.MapPath("TextFile.txt"));
            // data = "welcome";//from soure like database,service
            //Cache["x"] = data;
            Cache.Add("x", data, dep,new DateTime(2019,08,23,18,0,0), Cache.NoSlidingExpiration,CacheItemPriority.Default,null);
        }
        else
        {
            data = Cache["x"].ToString();
        }
        Label1.Text = data;

    }
}