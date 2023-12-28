using DoAn_LTTQ.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace DoAn_LTTQ.ViewModel
{
    class LoginViewModel : BaseViewModel
    {
        public bool IsLogin { get; set; }
        private string _username;
        private string _password;   
        public string Username {  get=>_username; set { _username = value;OnPropertyChanged(); }}
        public string Password { get=>_password; set { _password = value;OnPropertyChanged() ; } }
        public ICommand LoginCommand { get; set; }
        public ICommand PassWordChangedCommand {  get; set; }
        public LoginViewModel()
        {
            IsLogin = false;
            Password = "";
            Username = "";
            LoginCommand = new RelayCommand<Window>((p) =>
            { return true; }, (p) => { Login(p); });
            PassWordChangedCommand = new RelayCommand<PasswordBox>((p) =>
            { return true; }, (p) => { Password = p.Password; });
        }

        void Login(Window p)
        {
            if (p == null)
                return;

            var accCount = DataProvider.ins.DB.ACCOUNTs.Where(X => X.ACCOUNT_USERNAME == Username && X.ACCOUNT_PASSWORD == Password).Count();
            if (accCount > 0)
            {
                IsLogin = true;
                p.Close();
            }
            else
            {

                IsLogin = false;
                MessageBox.Show("Sai tài khoản hoặc mật khẩu!");
            }
        }
          

        
    }
}
