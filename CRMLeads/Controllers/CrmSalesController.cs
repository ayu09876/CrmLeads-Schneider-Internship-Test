using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using CRMLeads.Models;

namespace CRMLeads.Controllers
{
    public class CrmSalesController : Controller
    {
        CrmSalesDataAccessLayer crmSalesDataAccessLayer = null;

        public CrmSalesController()
        {
            crmSalesDataAccessLayer = new CrmSalesDataAccessLayer();
        }

        // GET: CrmSales
        public ActionResult Index()
        {
            IEnumerable<CrmSales> crmSales = crmSalesDataAccessLayer.GetAllCrmSales();
            return View(crmSales);
        }

        // GET: CrmSales/Details/5
        public ActionResult Details(int id)
        {
            CrmSales crmSale = crmSalesDataAccessLayer.GetCrmSalesData(id);
            return View(crmSale);
        }

        // GET: CrmSales/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CrmSales/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CrmSales crmSale)
        {
            try
            {
                crmSalesDataAccessLayer.AddCrmSales(crmSale);
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                // Handle the error (e.g., log it)
                return View();
            }
        }

        // GET: CrmSales/Edit/5
        public ActionResult Edit(int id)
        {
            CrmSales crmSale = crmSalesDataAccessLayer.GetCrmSalesData(id);
            return View(crmSale);
        }

        // POST: CrmSales/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(CrmSales crmSale)
        {
            try
            {
                crmSalesDataAccessLayer.UpdateCrmSales(crmSale);
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: CrmSales/Delete/5
        public ActionResult Delete(int id)
        {
            CrmSales crmSale = crmSalesDataAccessLayer.GetCrmSalesData(id);
            return View(crmSale);
        }

        // POST: CrmSales/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(CrmSales crmSale)
        {
            try
            {
                crmSalesDataAccessLayer.DeleteCrmSales(crmSale.Id);
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
