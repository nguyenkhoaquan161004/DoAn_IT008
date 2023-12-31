﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace DoAn_LTTQ.ViewModel
{
    public class ControlBarVM : BaseViewModel
    {
        #region commands
        public ICommand ClosedWindowCommand { get; set; }
        public ICommand MaximizeWindowCommand { get; set; }
        public ICommand MinimizeWindowCommand { get; set; }
        public ICommand MouseMoveWindowCommand {  get; set; }
        #endregion

        public ControlBarVM()
        {
            ClosedWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; },
                (p) =>
                {
                    FrameworkElement window = GetWimdowParent(p);
                    var w = window as Window;
                    if (w != null)
                    {
                        w.Close();
                    }
                });

            MaximizeWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; },
                (p) =>
                {
                    FrameworkElement window = GetWimdowParent(p);
                    var w = window as Window;
                    if (w != null)
                    {
                        if (w.WindowState != WindowState.Maximized)
                            w.WindowState = WindowState.Maximized;
                        else
                            w.WindowState = WindowState.Normal;
                    }
                });

            MinimizeWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; },
                (p) =>
                {
                    FrameworkElement window = GetWimdowParent(p);
                    var w = window as Window;
                    if (w != null)
                    {
                        if (w.WindowState != WindowState.Minimized)
                            w.WindowState = WindowState.Minimized;
                        else
                            w.WindowState = WindowState.Normal;
                    }
                });
            MouseMoveWindowCommand = new RelayCommand<UserControl>((p) => { return p == null ? false : true; },
                (p) =>
                {
                    FrameworkElement window = GetWimdowParent(p);
                    var w = window as Window;
                    if (w != null)
                    {
                        w.DragMove();
                    }
                });
        }

        FrameworkElement GetWimdowParent(UserControl p)
        {
            FrameworkElement parent = p;

            while(parent.Parent != null)
            {
               parent = parent.Parent as FrameworkElement;
            }

            return parent;

        }
    }
}
  