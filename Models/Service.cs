using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;

#nullable disable

namespace VelvetEyebrows_Kunavin.Models
{
    public partial class Service : INotifyPropertyChanged
    {
        private string? _mainImagePath;

        public Service()
        {
            ClientServices = new HashSet<ClientService>();
            ServicePhotos = new HashSet<ServicePhoto>();
        }

        public int Id { get; set; }
        public string Title { get; set; }
        public decimal Cost { get; set; }
        public int DurationInSeconds { get; set; }
        public string Description { get; set; }
        public double? Discount { get; set; }
        public string MainImagePath 
        { 
            get => _mainImagePath;
            set
            {
                _mainImagePath = value;
                notifyPropertyChanged(nameof(MainImagePath));
            } 
        }

        public decimal CostWithDiscount
        {
            get { return Cost * (1 - (decimal)Discount); }
        }
        public int DurationInMinutes
        {
            get { return DurationInSeconds / 60; }
        }
        public int DiscountToInteger
        {
            get { return Convert.ToInt32(Discount * 100); }
        }

        public virtual ICollection<ClientService> ClientServices { get; set; }
        public virtual ICollection<ServicePhoto> ServicePhotos { get; } = new ObservableCollection<ServicePhoto>();

        public event PropertyChangedEventHandler? PropertyChanged;

        private void notifyPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
