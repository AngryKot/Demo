using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace TestDemo.View
{
    /// <summary>
    /// Логика взаимодействия для ListRequests.xaml
    /// </summary>
    public partial class ListRequests : Window
    {
        public ListRequests()
        {
            InitializeComponent();

            var statuses = App.DB.Status.ToList();
            cbStatusFilter.SelectedValuePath = "StatusId";
            cbStatusFilter.DisplayMemberPath = "StatusTitle";
            cbStatusFilter.ItemsSource = statuses;
            cbStatusFilter.SelectedIndex = 0;

            ShowRequests();
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnCreateRequest_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnEditRequest_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnReport_Click(object sender, RoutedEventArgs e)
        {
            string statistic = $"Количество выполненых заявок: {App.DB.Request.Count(request => request.RequestStatus == 4)}";
            var completedRequests = App.DB.Request.Where(request => request.RequestDuration != null).ToList();
            var averageTime = "";
            if (completedRequests.Count != 0)
            {
                averageTime = completedRequests.Average(request => request.RequestDuration).ToString();
            }
            statistic += $"\nСреднее время выполнения заявки: {averageTime} часов";
            MessageBox.Show(statistic);
        }

        private void tbSearchById_TextChanged(object sender, TextChangedEventArgs e)
        {
            ShowRequests();
        }

        private void cbStatusFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ShowRequests();
        }

        private void ShowRequests()
        {
            var requests = App.DB.Request.ToList();
            if (tbSearchById.Text.Length > 0)
            {
                requests = requests.FindAll(req => req.RequestId.ToString().Contains(tbSearchById.Text));
            }
            requests = requests.FindAll(req => req.RequestStatus == (int)cbStatusFilter.SelectedValue);
            dgRequest.ItemsSource = requests;
        }
    }
}
