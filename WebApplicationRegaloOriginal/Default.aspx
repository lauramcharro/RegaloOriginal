<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationRegaloOriginal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Regalo Original</h1>

        <asp:TextBox runat="server" id="TextInput" placeholder="Cantidad" /> 
        <asp:TextBox runat="server" id="TextBox1" placeholder="Nombre del producto" />
        <asp:TextBox runat="server" id="TextBox2" placeholder="Precio" />
        
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" autopostback="true" onselectedindexchanged="itemList_SelectedIndexChanged">
                <asp:ListItem value="favoritos">Favoritos</asp:ListItem>
                <asp:ListItem value="carrito">Carrito</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:Button runat="server" id="AddButton" text="Agregar" OnClick="AddButton_Click" />
    </div>

    <div class="jumbotron">

        <asp:ListBox runat="server" ID="ListFavoritos" Width="200px" 
               AutoPostBack="true" >
            <asp:ListItem Text="Favoritos"></asp:ListItem>
        </asp:ListBox>
        <asp:ListBox runat="server" ID="ListCarrito" Width="200px" 
               AutoPostBack="true" >
            <asp:ListItem Text="Carrito"></asp:ListItem>
        </asp:ListBox>

    </div>

</asp:Content>
