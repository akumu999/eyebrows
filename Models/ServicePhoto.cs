using System;
using System.Collections.Generic;

#nullable disable

namespace VelvetEyebrows_Kunavin.Models
{
    public partial class ServicePhoto
    {
        public int Id { get; set; }
        public int ServiceId { get; set; }
        public string PhotoPath { get; set; }

        public virtual Service Service { get; set; }
    }
}
