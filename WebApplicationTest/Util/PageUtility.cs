using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace WebApplicationTest.Util
{
    public class PageUtility
    {
        public static void Alert(Control control, string message)
        {
            ScriptManager.RegisterClientScriptBlock(control, control.GetType(), "alertMessage", "alert('" + message + "')", true);
        }
    }
}