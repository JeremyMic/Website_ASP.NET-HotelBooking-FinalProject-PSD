using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Model;

namespace WebApplicationTest.View
{
    public partial class MasterHotel : System.Web.UI.Page
    {
        Hotel currentHotel;

        int hotelId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            currentHotel = ((Hotel)Session["hotel_to_edit"]);
            if (currentHotel != null && !IsPostBack)
            {
                hotelId = currentHotel.hotelId;
                txtName.Text = currentHotel.name;
                txtAddress.Text = currentHotel.address;
                txtRoomType.Text = currentHotel.roomType;
                txtPrice.Text = currentHotel.price.ToString();
            }

        }
        protected void btnProcess_Click(object sender, EventArgs e)
        {
            using (HotelReservationEntities db = new HotelReservationEntities())
            {
                if(currentHotel == null)
                {
                    currentHotel = new Hotel();
                    currentHotel.name = txtName.Text;
                    currentHotel.address = txtAddress.Text;
                    currentHotel.roomType = txtRoomType.Text;
                    currentHotel.price = decimal.Parse(txtPrice.Text);

                    db.Hotel.Add(currentHotel);
                }
                else
                {
                    Hotel toUpdateHotel = db.Hotel.Find(currentHotel.hotelId);
                    // Operasi Update
                    toUpdateHotel.name = txtName.Text;
                    toUpdateHotel.address = txtAddress.Text;
                    toUpdateHotel.roomType = txtRoomType.Text;
                    toUpdateHotel.price = decimal.Parse(txtPrice.Text);
                    
                }
                
                db.SaveChanges();
                Response.Redirect("ManageHotel.aspx");
            }
        }
    }
}