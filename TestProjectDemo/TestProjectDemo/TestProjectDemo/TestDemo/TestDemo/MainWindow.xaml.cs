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

namespace TestDemo
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnSignIn_Click(object sender, RoutedEventArgs e)
        {
            string errorMessage = "";
            if (tbLogin.Text.Length == 0)
            {
                errorMessage += "\nВы не заполнили логин!";
            }
            if (pbPassword.Password.Length == 0)
            {
                errorMessage += "\nВы не заполнили пароль!";
            }

            if (errorMessage.Length == 0)
            {
                var findedUser = App.DB.User.Where(user => user.UserLogin == tbLogin.Text && user.UserPassword == pbPassword.Password).ToList().FirstOrDefault();
                if (findedUser != null)
                {
                    MessageBox.Show($"Приветствуем вас, {findedUser.UserFullname}!\nВы зашли под ролью: {findedUser.Role.RoleTitle}");
                    //сохранение данных пользователя для следующего окна
                    App.currentUser = findedUser;

                    View.ListRequests listRequests = new View.ListRequests();
                    this.Hide();
                    listRequests.ShowDialog();
                    this.Show();
                }
                else
                {
                    MessageBox.Show("Вы неверно ввели логин или пароль");
                }
            }
            else
            {
                MessageBox.Show(errorMessage);
            }
        }
    }
}
