using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace AirBros
{
    /// <summary>
    /// Summary description for CityHandler
    /// </summary>
    public class CityHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string term = context.Request["term"] ?? "";
            List<string> listNames = new List<string>();

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using(SqlConnection connn= new SqlConnection(cs))
            {
                SqlCommand cmdd = new SqlCommand("getName", connn);
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@term",
                    Value = term
                });
                connn.Open();
                
                SqlDataReader rdr = cmdd.ExecuteReader();
                int i = 0;
                while (rdr.Read())
                {
                    i += 1;
                    if (i < 10)
                    {
                        listNames.Add(rdr["name"].ToString());
                    }
                    
                }

            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(listNames));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}