using System;
using System.ComponentModel.DataAnnotations;

namespace CRMLeads.Models
{
    public class CrmSales
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string SaleOrder { get; set; }

        [Required]
        [StringLength(50)]
        public string SaleItem { get; set; }

        [Required]
        [StringLength(50)]
        public string WorkOrder { get; set; }

        [Required]
        [StringLength(50)]
        public string Product { get; set; }

        [Required]
        [StringLength(255)]
        public string ProductDesc { get; set; }

        [Required]
        [Range(0, double.MaxValue)]
        public decimal Qty { get; set; }

        [Required]
        [StringLength(50)]
        public string Status { get; set; }

        public DateTime CreatedAt { get; set; }
        public DateTime EditedAt { get; set; }
    }
}
