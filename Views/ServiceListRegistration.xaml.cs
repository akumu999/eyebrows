using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using VelvetEyebrows_Kunavin.Models;

namespace VelvetEyebrows_Kunavin.Views
{
    /// <summary>
    /// Логика взаимодействия для ServiceListRegistration.xaml
    /// </summary>
    public partial class ServiceListRegistration : Page, INotifyPropertyChanged
    {

        private List<ClientService> _clientService;

        public bool IsAdmin { get; private set; }

        public event PropertyChangedEventHandler PropertyChanged;
        private void notifyPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public List<ClientService> ClientService
        {
            get => _clientService;
            private set
            {
                _clientService = value;
                notifyPropertyChanged("Services");
            }
        }

        public ServiceListRegistration(bool isAdmin)
        {
            ClientService = Session.Instance.Context.ClientServices.OrderByDescending(cs => cs.StartTime).ToList();
            IsAdmin = isAdmin;
            InitializeComponent();
        }

        private void removeService(object sender, RoutedEventArgs e)
        {
            var serviceRegistration = (sender as Button)?.DataContext as ClientService;
            if (serviceRegistration == null) return;

            var answer = MessageBox.Show("Вы уверены, что хотите удалить запись", "Подтверждение удаления", MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (answer == MessageBoxResult.Yes)
            {
                try
                {
                    Session.Instance.Context.ClientServices.Remove(serviceRegistration);
                    Session.Instance.Context.SaveChanges();
                    ClientService.Clear();
                    IQueryable<ClientService> query = Session.Instance.Context.ClientServices.AsQueryable();
                    foreach (var serviceItem in query) ClientService.Add(serviceItem);
                    MessageBox.Show("Услуга удалена.", "Удаление успешно", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch
                {
                    MessageBox.Show("Произошла ошибка при удалении!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

        }

        private void editService(object sender, RoutedEventArgs e)
        {

        }
    }
}
