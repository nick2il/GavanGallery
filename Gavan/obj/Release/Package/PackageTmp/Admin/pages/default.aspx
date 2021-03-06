﻿<%@ Page Title="Gavan -  רשימת דפים" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Gavan.Admin.pages._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/pages.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="button" name="add_page" id="add_page" value="הוספת מידע" onclick="window.location = 'add.aspx';" />
    <form id="infoForm" runat="server">

        <asp:Repeater ID="rptContent" runat="server">
            <HeaderTemplate>
             <table id="editTable">
                <tr>
                    <th>שם העמוד</th>
                    <th>עריכה</th>
                    <th>מחיקה</th>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr>
                        <td><a href="../../<%#DataBinder.Eval(Container.DataItem, "url") %>"><%#DataBinder.Eval(Container.DataItem, "title") %></a></td>
                        <td><a href="edit.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>">ערוך</a></td>
                        <td><a href="delete.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>">מחק</a></td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
            </table>
            </FooterTemplate>
        </asp:Repeater>

    <div class="pages">
        <asp:Repeater ID="rptPages" runat="server" onitemcommand="rptPages_ItemCommand">
            <HeaderTemplate>
            <ul>
            </HeaderTemplate>
            <ItemTemplate>
                <li>
                    <asp:LinkButton id="btnPages" CommandName="Page" CommandArgument="<%# Container.DataItem %>" runat="server">
                        <%# Container.DataItem %>
                    </asp:LinkButton>
                </li>    
            </ItemTemplate>
            <FooterTemplate>
            </ul>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</asp:Content>
