<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PruebaTI.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Matriculas de laboratorio</title>
    <style>
        body {
            background-color: #040a1c;
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #032b39;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h1 {
            margin-top: 0;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-top: 10px;
            text-align: left;
            color: white;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .enviar-button {
            border: none;
            background-color: #04AA6D;
            color: white;
            padding: 14px 28px;
            font-size: 16px;
            cursor: pointer;
            display: inline-block;
            margin: 0 auto;
            transition: background-color 0.3s;
        }

        .enviar-button:hover {
            background-color: #038055;
        }

        .success {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Matriculas de laboratorio</h1>
            <div>
                <asp:Label ID="lblCUI" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblCourseName" runat="server" Text="Course Name: Computer Science 2"></asp:Label>
            </div>
            <div class="result-container">
                <label>Nombres:</label>
                <asp:TextBox ID="lblNombres" runat="server" CssClass="result-textbox" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="result-container">
                <label>Apellidos:</label>
                <asp:TextBox ID="lblApellidos" runat="server" CssClass="result-textbox" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="result-container">
                <label>Grupo:</label>
                <asp:TextBox ID="lblGrupo" runat="server" CssClass="result-textbox" ReadOnly="true"></asp:TextBox>
            </div>
            <div>
                <label>Select Group:</label>
                <asp:DropDownList ID="ddlGroup" runat="server">
                    <asp:ListItem Text="A"></asp:ListItem>
                    <asp:ListItem Text="B"></asp:ListItem>
                    <asp:ListItem Text="C"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btnHorario" runat="server" Text="Horarios" OnClick="btnVerHorario" CssClass="enviar-button" />
            </div>
        </div>
    </form>
</body>
</html>
