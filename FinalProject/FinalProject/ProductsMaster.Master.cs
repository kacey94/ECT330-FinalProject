﻿using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class ProductsMaster : System.Web.UI.MasterPage
    {
        String userFirstName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["action"] == "logout")
            {
                Session.Clear();
                Response.Redirect("/index.aspx");
            }

            lblInvalidCredentials.Visible = false;
            pnlSignIn.Visible = true;
            pnlSignedInOptions.Visible = false;
            updateUserName();
        }

        protected void updateUserName()
        {
            if (Session["LoggedInId"] != null)
            {
                using (StoreContent content = new StoreContent())
                {

                    var userId = Session["LoggedInId"].ToString();

                    var userName = (from c in content.Customer
                                    where c.Id.ToString() == userId
                                    select c.FirstName).FirstOrDefault();

                    lblSignInUsername.Text = "Hi, " + (String)userName + "! &#x25BC;";
                    userFirstName = (String)userName;
                }

                pnlSignIn.Visible = false;
                pnlSignedInOptions.Visible = true;
                lblFirstName.Text = userFirstName;
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            using (StoreContent context = new StoreContent())
            {
                var user = (from c in context.Customer
                            where c.UserName == txtUsername.Text && c.Password == txtPassword.Text
                            select c).FirstOrDefault();

                if (user != null)
                {
                    Session["LoggedInId"] = user.Id.ToString();
                    Session["FirstName"] = user.FirstName;
                    Session["LastName"] = user.LastName;

                    lblInvalidCredentials.Visible = false;
                    updateUserName();

                }
                else
                {
                    lblInvalidCredentials.Visible = true;
                    signInContent.Style.Add("visibility", "visible");

                }
            }
        }
    }
}