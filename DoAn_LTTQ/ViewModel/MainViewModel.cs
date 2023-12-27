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
    public class MainViewModel : BaseViewModel
    {
        public bool IsLoaded = false;
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand MoneyCommand { get; set; }
        public ICommand UserCommand { get; set; }
        public ICommand AccountCommand { get; set; }
        public ICommand InputCommand { get; set; }
        public ICommand OutputCommand { get; set; }
        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                IsLoaded = true;
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();
                Console.WriteLine("1");
            }
        );
            MoneyCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                MoneyWindow moneyWindow = new MoneyWindow();
                moneyWindow.ShowDialog();
                Console.WriteLine("2");
            }
        );
            UserCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                UserWindow userWindow = new UserWindow();
                userWindow.ShowDialog();
                Console.WriteLine("3");
            }
        );
            AccountCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                AccountWindow accountWindow = new AccountWindow();
                Console.WriteLine("4");
                accountWindow.ShowDialog();
            }
        );
            InputCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                InputWindow inputWindow = new InputWindow();
                inputWindow.ShowDialog();
                Console.WriteLine("5");
            }
        );
            OutputCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                OutputWindow outputWindow = new OutputWindow();
                outputWindow.ShowDialog();
                Console.WriteLine("6");
            }
        );
        }
    }
}
