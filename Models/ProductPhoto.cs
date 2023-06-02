using System;
using System.Collections.Generic;

#nullable disable

namespace VelvetEyebrows_Kunavin.Models
{
    public partial class ProductPhoto
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public string PhotoPath { get; set; }

        public virtual Product Product { get; set; }
    }
}
