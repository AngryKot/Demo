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
    /// Логика взаимодействия для CreateRequest.xaml
    /// </summary>
    public partial class CreateRequest : Window
    {
        private bool isEdit = false;
        private Model.Request request;

        public CreateRequest(Model.Request request)
        {
            InitializeComponent();

            isEdit = request != null;
            this.request = request;

            var statuses = App.DB.Status.ToList();
            cbStatus.SelectedValuePath = "StatusId";
            cbStatus.DisplayMemberPath = "StatusTitle";
            cbStatus.ItemsSource = statuses;
            cbStatus.SelectedIndex = 0;

            var stages = App.DB.Stage.ToList();
            cbStage.SelectedValuePath = "StageId";
            cbStage.DisplayMemberPath = "StageTitle";
            cbStage.ItemsSource = stages;
            cbStage.SelectedIndex = 0;

            //var equipmentTypes = App.DB.EquipmentType.ToList();
            //cbEquipmentType.SelectedValuePath = "EquipmentTypeId";
            //cbEquipmentType.DisplayMemberPath = "EquipmentTypeTitle";
            //cbEquipmentType.ItemsSource = equipmentTypes;
            //cbEquipmentType.SelectedIndex = 0;

            var users = App.DB.User.ToList();
            cbCustomer.SelectedValuePath = "UserId";
            cbCustomer.DisplayMemberPath = "UserFullname";
            cbEmployee.SelectedValuePath = "UserId";
            cbEmployee.DisplayMemberPath = "UserFullname";
            cbCustomer.ItemsSource = users.FindAll(user => user.UserRole == 1);
            cbCustomer.SelectedIndex = 0;
            cbEmployee.ItemsSource = users.FindAll(user => user.UserRole == 3);
            cbEmployee.SelectedIndex = 0;

            if (isEdit)
            {
                //dpDateAdd.SelectedDate = request.RequestCreateAt;
                //cbEquipmentType.SelectedValue = request.RequestEquipmentType;
                //tbDeviceModel.Text = request.RequestDeviceModel;
                //tbDescription.Text = request.RequestDescription;
                //tbCustomerPhone.Text = request.RequestPhone;
                //cbCustomer.SelectedValue = request.RequestCustomer;
                //cbEmployee.SelectedValue = request.RequestEmployee;
                //cbStatus.SelectedValue = request.RequestStatus;
                //cbStage.SelectedValue = request.RequesStage;
                //tbComment.Text = request.RequestComment;
                //tbDuration.Text = request.RequestDuration.ToString();

                if (App.currentUser.UserRole == 2)
                {
                    cbStage.IsEnabled = false;
                    cbEquipmentType.IsEnabled = false;
                    cbCustomer.IsEnabled = false;
                    tbDeviceModel.IsEnabled = false;
                    tbDescription.IsEnabled = false;
                    tbCustomerPhone.IsEnabled = false;
                    tbComment.IsEnabled = false;
                    tbDuration.IsEnabled = false;
                }
                else
                {
                    cbStatus.IsEnabled = false;
                    cbEmployee.IsEnabled = false;
                    cbEquipmentType.IsEnabled = false;
                    cbCustomer.IsEnabled = false;
                    tbDeviceModel.IsEnabled = false;
                    tbDescription.IsEnabled = false;
                    tbCustomerPhone.IsEnabled = false;
                }
            }
            else
            {
                cbStatus.IsEnabled = false;
                cbStage.IsEnabled = false;
                cbEmployee.IsEnabled = false;
                tbComment.IsEnabled = false;
                tbDuration.IsEnabled = false;
            }
        }


        private void tb_searchById_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
