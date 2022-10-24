using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTest.Model;

namespace WebApplicationTest.View
{
    public partial class ManageHotel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (HotelReservationEntities db = new HotelReservationEntities())
            {
                List<Hotel> hotels = (from x in db.Hotel select x).ToList();
                for (int i = 0; i < hotels.Count; i++)
                {
                    TableRow newRow = new TableRow();
                    HotelTable.Controls.Add(newRow);
                    TableCell numberCell = new TableCell();
                    numberCell.Controls.Add(new Label()

                    { Text = (i + 1) + "." });
                    newRow.Cells.Add(numberCell);
                    TableCell nameCell = new TableCell();
                    nameCell.Controls.Add(new Label()
                    { Text = hotels[i].name });
                    newRow.Cells.Add(nameCell);

                    TableCell addressCell = new TableCell();
                    addressCell.Controls.Add(new Label()
                    { Text = hotels[i].address });
                    newRow.Cells.Add(addressCell);

                    TableCell roomTypeCell = new TableCell();
                    roomTypeCell.Controls.Add(new Label()
                    { Text = hotels[i].roomType });
                    newRow.Cells.Add(roomTypeCell);

                    TableCell priceCell = new TableCell();
                    priceCell.Controls.Add(new Label()
                    { Text = ((int)hotels[i].price).ToString() });
                    newRow.Cells.Add(priceCell);

                    TableCell quantityCell = new TableCell();
                    quantityCell.Controls.Add(new Label()
                    { Text = hotels[i].quantity.ToString() });
                    newRow.Cells.Add(quantityCell);

                    TableCell editButtonCell = new TableCell();
                    Button editButton = new Button()
                    {
                        ID = (i + 1) + "_E",
                        Text = "Edit",
                        CssClass = "btn btn-warning"
                    };
                    editButton.Click += EditButton_Click;
                    editButtonCell.Controls.Add(editButton);
                    newRow.Cells.Add(editButtonCell);
                    TableCell deleteButtonCell = new TableCell();
                    Button deleteButton = new Button()
                    {
                        ID = (i + 1) + "_D",
                        Text = "Delete",
                        CssClass = "btn btn-danger"
                    };
                    deleteButton.Click += DeleteButton_Click;
                    deleteButtonCell.Controls.Add(deleteButton);
                    newRow.Cells.Add(deleteButtonCell);
                    TableCell hotelIdCell = new TableCell();
                    hotelIdCell.Visible = false;
                    hotelIdCell.Controls.Add(new Label()
                    {
                        Text = hotels[i].hotelId.ToString()
                    });
                    newRow.Cells.Add(hotelIdCell);
                }
            }
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Button currentButton = (Button)sender;
            int selectedRowIndex = 0;
            if (int.TryParse(currentButton.ID.Substring(0,
            currentButton.ID.Length - 2), out selectedRowIndex))
            {
                int hotelId = int.Parse(((Label)HotelTable
                .Rows[selectedRowIndex]
                .Cells[6].Controls[0]).Text);
                using (HotelReservationEntities db = new HotelReservationEntities())
                {
                    Hotel toDeleteHotel = (from x in db.Hotel
                                               where x.hotelId == hotelId
                                               select x).First();
                    db.Hotel.Remove(toDeleteHotel);
                    db.SaveChanges();
                }
                Response.Redirect(Request.RawUrl);
            }

        }
        protected void EditButton_Click(object sender, EventArgs e)
        {
            Button currentButton = (Button)sender;
            int selectedRowIndex = 0;
            if (int.TryParse(currentButton.ID.Substring(0,
            currentButton.ID.Length - 2), out selectedRowIndex))
            {
                Hotel hotel = new Hotel();
                hotel.hotelId = int.Parse(((Label)HotelTable.Rows[selectedRowIndex].Cells[6].Controls[0]).Text);
                hotel.name = ((Label)HotelTable.Rows[selectedRowIndex].Cells[1].Controls[0]).Text;
                hotel.address = ((Label)HotelTable.Rows[selectedRowIndex].Cells[1].Controls[0]).Text;
                hotel.roomType = ((Label)HotelTable.Rows[selectedRowIndex].Cells[1].Controls[0]).Text;
                hotel.price = decimal.Parse(((Label)HotelTable.Rows[selectedRowIndex].Cells[2].Controls[0]).Text);
                hotel.quantity = int.Parse(((Label)HotelTable.Rows[selectedRowIndex].Cells[3].Controls[0]).Text);
                Session.Add("hotel_to_edit", hotel);
                Response.Redirect("MasterHotel.aspx");
            }

        }
        protected void btnAddNewHotel_Click(object sender, EventArgs e)
        {
            Response.Redirect("MasterHotel.aspx");
        }

    }
}