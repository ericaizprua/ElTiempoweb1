<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ElTiempoWeb.Default" ValidateRequest="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ElTiempoWeb</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(135deg, #009688, #004d40);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
        }
        .btn-custom {
            width: 200px;
            margin: 10px;
        }
        textarea {
            font-family: monospace;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="w-100">
        <div class="container">
            <div class="card p-4">
                <h1 class="text-center text-primary mb-4">☀️ El Tiempo Web</h1>

                <!-- Ciudad -->
                <div class="mb-3">
                    <asp:Label ID="Label1" runat="server" CssClass="form-label fw-bold" Text="Ciudad: "></asp:Label>
                    <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <!-- País -->
                <div class="mb-3">
                    <asp:Label ID="Label2" runat="server" CssClass="form-label fw-bold" Text="País: "></asp:Label>
                    <asp:TextBox ID="txtPais" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <!-- Botones -->
                <div class="d-flex justify-content-center flex-wrap">
                    <asp:Button ID="btnXml" runat="server" CssClass="btn btn-primary btn-lg btn-custom" Text="El tiempo en XML" OnClick="btnXml_Click" />
                    <asp:Button ID="crearBtn" runat="server" CssClass="btn btn-success btn-lg btn-custom" Text="📦 Crear objeto" OnClick="crearBtn_Click" />
                </div>

                <!-- Resultado XML -->
                <div class="mt-4">
                    <asp:TextBox ID="resultTxt" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="10"></asp:TextBox>
                </div>

                <!-- Tabla de resultados -->
                <div class="mt-4">
                    <asp:Table ID="tblResultado" runat="server" CssClass="table table-bordered table-striped"></asp:Table>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

