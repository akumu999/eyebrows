using System;
using System.Collections.Generic;

#nullable disable

namespace VelvetEyebrows_Kunavin.Models
{
    public partial class ClientService
    {
        public ClientService()
        {
            DocumentByServices = new HashSet<DocumentByService>();
            ProductSales = new HashSet<ProductSale>();
        }

        public int Id { get; set; }
        public int ClientId { get; set; }
        public int ServiceId { get; set; }
        public DateTime StartTime { get; set; }
        public string Comment { get; set; }

        public string FullNameClient
        {
            get { return $"{Client.FirstName} {Client.LastName} {Client.Patronymic}"; }
        }

        public string  ServiceTitle { get{ return Service.Title; } }

        public virtual Client Client { get; set; }
        public virtual Service Service { get; set; }
        public virtual ICollection<DocumentByService> DocumentByServices { get; set; }
        public virtual ICollection<ProductSale> ProductSales { get; set; }
    }
}
