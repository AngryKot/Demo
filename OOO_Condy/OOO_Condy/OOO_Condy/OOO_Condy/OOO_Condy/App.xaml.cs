using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace OOO_Condy
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static Model.CondyEntities DB;
        public static Model.User currentUser;

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            try
            {
                DB = new Model.CondyEntities();
            }
            catch (Exception)
            {
                MessageBox.Show("Ошибка! Не удалось подключиться к бд!");
                throw;
            }
        }
    }
}
