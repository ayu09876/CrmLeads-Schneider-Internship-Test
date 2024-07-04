using CRMLeads.Utility;
using System.Data;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;

namespace CRMLeads.Models
{
    public class CrmSalesDataAccessLayer
    {
        string connectionString = ConnectionString.CName;

        public IEnumerable<CrmSales> GetAllCrmSales()
        {
            List<CrmSales> lstCrmSales = new List<CrmSales>();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_ReadCrmSales", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    CrmSales crmSales = new CrmSales();
                    crmSales.Id = Convert.ToInt32(rdr["Id"]);
                    crmSales.SaleOrder = rdr["SaleOrder"].ToString();
                    crmSales.SaleItem = rdr["SaleItem"].ToString();
                    crmSales.WorkOrder = rdr["WorkOrder"].ToString();
                    crmSales.Product = rdr["Product"].ToString();
                    crmSales.ProductDesc = rdr["ProductDesc"].ToString();
                    crmSales.Qty = Convert.ToDecimal(rdr["Qty"]);
                    crmSales.Status = rdr["Status"].ToString();
                    crmSales.CreatedAt = Convert.ToDateTime(rdr["CreatedAt"]);
                    crmSales.EditedAt = Convert.ToDateTime(rdr["EditedAt"]);

                    lstCrmSales.Add(crmSales);
                }
                con.Close();
            }
            return lstCrmSales;
        }

        public void AddCrmSales(CrmSales crmSales)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_CreateCrmSales", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@SaleOrder", crmSales.SaleOrder);
                cmd.Parameters.AddWithValue("@SaleItem", crmSales.SaleItem);
                cmd.Parameters.AddWithValue("@WorkOrder", crmSales.WorkOrder);
                cmd.Parameters.AddWithValue("@Product", crmSales.Product);
                cmd.Parameters.AddWithValue("@ProductDesc", crmSales.ProductDesc);
                cmd.Parameters.AddWithValue("@Qty", crmSales.Qty);
                cmd.Parameters.AddWithValue("@Status", crmSales.Status);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        public void UpdateCrmSales(CrmSales crmSales)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_UpdateCrmSales", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", crmSales.Id);
                cmd.Parameters.AddWithValue("@SaleOrder", crmSales.SaleOrder);
                cmd.Parameters.AddWithValue("@SaleItem", crmSales.SaleItem);
                cmd.Parameters.AddWithValue("@WorkOrder", crmSales.WorkOrder);
                cmd.Parameters.AddWithValue("@Product", crmSales.Product);
                cmd.Parameters.AddWithValue("@ProductDesc", crmSales.ProductDesc);
                cmd.Parameters.AddWithValue("@Qty", crmSales.Qty);
                cmd.Parameters.AddWithValue("@Status", crmSales.Status);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        public CrmSales GetCrmSalesData(int? id)
        {
            CrmSales crmSales = new CrmSales();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_ReadCrmSalesById", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    crmSales.Id = Convert.ToInt32(rdr["Id"]);
                    crmSales.SaleOrder = rdr["SaleOrder"].ToString();
                    crmSales.SaleItem = rdr["SaleItem"].ToString();
                    crmSales.WorkOrder = rdr["WorkOrder"].ToString();
                    crmSales.Product = rdr["Product"].ToString();
                    crmSales.ProductDesc = rdr["ProductDesc"].ToString();
                    crmSales.Qty = Convert.ToDecimal(rdr["Qty"]);
                    crmSales.Status = rdr["Status"].ToString();
                    crmSales.CreatedAt = Convert.ToDateTime(rdr["CreatedAt"]);
                    crmSales.EditedAt = Convert.ToDateTime(rdr["EditedAt"]);
                }
            }
            return crmSales;
        }

        public void DeleteCrmSales(int? id)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_DeleteCrmSales", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}