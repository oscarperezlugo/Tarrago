<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="Tarrago.Busqueda" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        #container {
            width: 700px;
            margin: 10px auto;
        }

        .mGrid {
            width: 100%;
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
        }

            .mGrid td {
                padding: 14px;
                color: #717171;
                text-align: center;
            }

            .mGrid th {
                padding: 4px 16px;
                color: #2e2e2e;
                background: #75bcb5;
                font-size: 0.9em;
                text-align: center;
            }

            .mGrid .alt {
                background: #fcfcfc url(grd_alt.png) repeat-x top;
            }

            .mGrid .pgr {
                background: #75bcb5;
            }

                .mGrid .pgr table {
                    margin: 5px 0;
                }

                .mGrid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }

                .mGrid .pgr a {
                    color: #666;
                    text-decoration: none;
                }

                    .mGrid .pgr a:hover {
                        color: #000;
                        text-decoration: none;
                    }

        #button {
            left: 10%;
        }

        .label {
            font-weight: bolder;
            font-size: 20px;
            margin-left: 40%;
        }
    </style>
</asp:Content>
<asp:Content runat="server" ID="myContent" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
 
        <div class="card">
            <div class="card-header">
                <div class="form-row">
                    <div class="col-12">
                        <asp:Label ID="Label6" runat="server" Text="RESULTADO DE BUSQUEDA" Style="font-weight: bold; font-size: 2rem;"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="form-row">
                    <div class="col-12">
                        <asp:Label ID="Label4" runat="server"  CssClass="label"></asp:Label>
                        <hr />
                        <asp:GridView ID="gridConsulta1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true" >
                            <Columns>
                                <asp:BoundField DataField="id_empleado" HeaderText="Id" SortExpression="id_empleado" />
                                <asp:BoundField DataField="nombre_empleado" HeaderText="Nombre Empleado" SortExpression="nombre_empleado" />
                                <asp:BoundField DataField="email" HeaderText="Correo Electrónico" SortExpression="email" />
                                <asp:BoundField DataField="telefono" HeaderText="Telefono" SortExpression="telefono"></asp:BoundField>
                                <asp:BoundField DataField="direccion" HeaderText="Dirección" SortExpression="direccion"></asp:BoundField>
                  <%--              <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Ver Certificado" />--%>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col-12">
                        <asp:Label ID="Label1" runat="server"  CssClass="label"></asp:Label>
                        <hr />
                        <asp:GridView ID="gridConsulta2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" GridLines="none" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AllowPaging="true" >
                            <Columns>
                                <asp:BoundField DataField="nombre_empresa" HeaderText="Empresa" SortExpression="nombre_empresa" />
                                <asp:BoundField DataField="nombre_tipo_usuario" HeaderText="Tipo de Usuario" SortExpression="nombre_tipo_usuario" />
                                <asp:BoundField DataField="nombre_idioma" HeaderText="Idioma" SortExpression="nombre_idioma"></asp:BoundField>
                                <asp:BoundField DataField="idioma_orig" HeaderText="Origen" SortExpression="idioma_orig"></asp:BoundField>
                                <asp:BoundField DataField="nombre_pais" HeaderText="Pais" SortExpression="nombre_pais"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>


                <div class="form-row">
                    <div class="col-12">
                        <hr />
                        <asp:Label ID="Label3" runat="server" Text="" CssClass="label" Style="margin-left: 42%;"></asp:Label>

                        <hr />

                    </div>
                </div>

                <div class="form-row">
                    <div class="col-12" align="center">

                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="buttonColor" >Imprimir PDF</asp:LinkButton>

                        <asp:LinkButton ID="Button1" runat="server" Text="CANCELAR" class="btn btn-danger"><i class="fa fa-ban"></i> CANCELAR</asp:LinkButton>

                        <%--<asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-danger" Style="margin-left: 43%; margin-right: 43%;" OnClick="CancelarClick"><i class="fa fa-ban"></i>CANCELAR</asp:LinkButton>--%>
                    </div>
                </div>
            </div>
        </div>
     
    </div>
</asp:Content>
