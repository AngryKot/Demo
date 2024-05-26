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

namespace OOO_Condy.View
{
    /// <summary>
    /// Логика взаимодействия для Authorization.xaml
    /// </summary>
    public partial class Authorization : Window
    {
        public Authorization()
        {
            InitializeComponent();
        }

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btn_signIn_Click(object sender, RoutedEventArgs e)
        {
            string errorMessage = "";
            if (tb_login.Text.Length == 0)
            {
                errorMessage += "\nВы не заполнили логин!";
            }
            if (pb_password.Password.Length == 0)
            {
                errorMessage += "\nВы не заполнили пароль!";
            }

            if (errorMessage.Length == 0)
            {
                var findedUser = App.DB.User.Where(user => user.UserLogin == tb_login.Text && user.UserPassword == pb_password.Password).ToList().FirstOrDefault();
                if (findedUser != null) 
                {
                    MessageBox.Show($"Приветствуем вас, {findedUser.UserFIO}!\nВы зашли под ролью: {findedUser.Role.RoleName}");

                    App.currentUser = findedUser;

                    var mainWindow = new MainWindow();
                    Hide();
                    mainWindow.ShowDialog();
                    Show();
                }
                else
                {
                    MessageBox.Show("Вы неверно ввели логин или пароль. Попробуйте снова!");
                }
            }
            else
            {
                MessageBox.Show(errorMessage);
            }
        }
    }
}
