using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationRegaloOriginal
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void itemList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            string cantidad = TextInput.Text;
            string producto = TextBox1.Text;
            string precio = TextBox2.Text;
            string lista = DropDownList1.SelectedItem.Value;


            string fav = producto + " " + precio;
            string carrito = cantidad + " " + producto + " " + precio;
            if (lista == "favoritos")
                ListFavoritos.Items.Add(fav);
            else
                ListCarrito.Items.Add(carrito);
            TextBox1.Text = "";

        }
    }
}