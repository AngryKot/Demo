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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OOO_Condy
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            var statuses = App.DB.Status.ToList();
            cb_statusFilter.SelectedValuePath = "StatusId";
            cb_statusFilter.DisplayMemberPath = "StatusName";
            cb_statusFilter.ItemsSource = statuses;
            cb_statusFilter.SelectedIndex = 0;
            if(App.currentUser.UserRole == 1)
            {
                btn_editRequest.Visibility = Visibility.Hidden;
                btn_report.Visibility = Visibility.Hidden;
            }
            if(App.currentUser.UserRole == 4)
            {
                btn_createRequest.Visibility = Visibility.Hidden;
                btn_report.Visibility = Visibility.Hidden;
            }
            ShowRequests();
        }

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btn_editRequest_Click(object sender, RoutedEventArgs e)
        {
            if (dgRequest.SelectedItem != null)
            {
            var editWindow = new View.CreateRequest((Model.Request)dgRequest.SelectedItem);
            Hide();
            editWindow.ShowDialog();
            Show();
            } else
            {
                MessageBox.Show("Для редактирования выберите заявку!");
            }
            
        }

        private void btn_report_Click(object sender, RoutedEventArgs e)
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

        private void tb_searchById_TextChanged(object sender, TextChangedEventArgs e)
        {
            ShowRequests();
        }

        private void btn_createRequest_Click(object sender, RoutedEventArgs e)
        {
            var editWindow = new View.CreateRequest(null);
            Hide();
            editWindow.ShowDialog();
            Show();
        }

        private void ShowRequests()
        {
            var requests = App.DB.Request.ToList();

            if (tb_searchById.Text.Length > 0)
            {
                requests = requests.FindAll(req => req.RequestId.ToString().Contains(tb_searchById.Text));
            }

            requests = requests.FindAll(req => req.RequestStatus == (int)cb_statusFilter.SelectedValue);

            dgRequest.ItemsSource = requests;
        }

        private void cb_statusFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ShowRequests();
        }
    }
}
