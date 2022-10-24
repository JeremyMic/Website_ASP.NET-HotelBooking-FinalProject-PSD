using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Model;
using WebApplicationTest.Util;

namespace WebApplicationTest.View
{
    public partial class ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = DbManager.Get("SELECT * FROM [User]");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow newRow = new TableRow();
                UserTable.Controls.Add(newRow);
                TableCell numberCell = new TableCell();
                numberCell.Controls.Add(new Label() { Text = (i + 1) + "." });
                newRow.Cells.Add(numberCell);
                TableCell usernameCell = new TableCell();
                usernameCell.Controls.Add(new Label()
                {
                    Text = dt.Rows[i]["username"].ToString()
                });
                newRow.Cells.Add(usernameCell);
                TableCell emailCell = new TableCell();
                emailCell.Controls.Add(new Label()
                {
                    Text = dt.Rows[i]["email"].ToString()
                });
                newRow.Cells.Add(emailCell);
                TableCell nameCell = new TableCell();
                nameCell.Controls.Add(new Label()
                {
                    Text = dt.Rows[i]["name"].ToString()
                });
                newRow.Cells.Add(nameCell);
                TableCell passwordCell = new TableCell();
                passwordCell.Controls.Add(new Label()
                {
                    Text = dt.Rows[i]["password"].ToString()
                });
                newRow.Cells.Add(passwordCell);
                TableCell editButtonCell = new TableCell();
                Button editButton = new Button()
                {
                    Text = "Edit",
                    CssClass = "btn btn-warning"
                };
                editButton.Click += EditButton_Click;
                editButtonCell.Controls.Add(editButton);
                newRow.Cells.Add(editButtonCell);
                TableCell deleteButtonCell = new TableCell();
                Button deleteButton = new Button()
                {
                    Text = "Delete",
                    CssClass = "btn btn-danger"
                };
                deleteButton.Click += DeleteButton_Click;
                deleteButtonCell.Controls.Add(deleteButton);
                newRow.Cells.Add(deleteButtonCell);
            }
        }
        private void DeleteButton_Click(object sender, EventArgs e)
        {
            Button currentButton = sender as Button;
            int selectedRowIndex = 0;
            if (int.TryParse(currentButton.ID.Substring(0,
            currentButton.ID.Length - 2),
            out selectedRowIndex))
            {
                string username = ((Label)UserTable.Rows[selectedRowIndex]
                .Cells[1].Controls[0])
               .Text;
                DbManager.Execute("DELETE FROM [User] WHERE username='"
                + username + "'");
                Response.Redirect(Request.RawUrl);
            }

        }
        private void EditButton_Click(object sender, EventArgs e)
        {
            Button currentButton = (Button)sender;
            string buttonId = currentButton.ID;
            int selectedRowIndex = 0;
            if (int.TryParse(buttonId.Substring(0,buttonId.Length - 2),out selectedRowIndex))
            {
                UserClass user = new UserClass();
                user.Username = ((Label)UserTable.Rows[selectedRowIndex].Cells[1].Controls[0]).Text;
                user.Email = ((Label)UserTable.Rows[selectedRowIndex].Cells[2].Controls[0]).Text;
                user.Name = ((Label)UserTable.Rows[selectedRowIndex].Cells[3].Controls[0]).Text;
                user.Password = ((Label)UserTable.Rows[selectedRowIndex].Cells[4].Controls[0]).Text;
                user.Role = ((Label)UserTable.Rows[selectedRowIndex].Cells[5].Controls[0]).Text;
                Session.Add("user_to_edit", user);
                Response.Redirect("MasterUser.aspx");
            }
        }

        protected void btnAddNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterUser.aspx");
        }
    }
}