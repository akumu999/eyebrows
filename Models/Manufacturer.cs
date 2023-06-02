using System;
using System.Collections.Generic;

#nullable disable

namespace VelvetEyebrows_Kunavin.Models
{
    public partial class Manufacturer
    {
        public Manufacturer()
        {
            Products = new HashSet<Product>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime? StartDate { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
