   M S B A M L   `   `   `  ����D  @DoAn_LTTQ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:DoAn_LTTQ	DoAn_LTTQ  5   	   G(clr-namespace:DoAn_LTTQ.UserControl_DoAnDoAn_LTTQ.UserControl_DoAn  5   	       DoAn_LTTQ.AccountWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:DoAn_LTTQ     5   	   7uc(clr-namespace:DoAn_LTTQ.UserControl_DoAn     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	   
�������  MaterialDesignFont#���  5   	    � Title$ 
Money View��5   	   $	��600��6   $	��750��6)   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadedWindowCommand+5      .��5      �� 	 �� CornerRadius$	 12��6   ��5   
   �� 5      
 �� ImageSource$C
 =C:\Users\Admin\Downloads\alex-shuper-8XDqoAmI4iU-unsplash.jpg��6   6g   ._�5    
   �� $	 10��6   $��5q�5!      ��5#      �� 5$       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5%      �  � Color$ 	#FF050505��6#    � Offset$ 0Q�65   6B   � 5&      $ 	#FFA8A7A4��6#   $
 0.75Q�65   6E   � 5'      $ 	#FFE8AC71��6#   $ 1Q�65   6B   5(      ��5+      �� 5,      $	 0,1&�6&   $	 1,0&�67    �� Opacity$	 0.8Q�6F   .��5-      � $ 	#FF060606��6#   $ 0Q�65   6B   � 5.      $ 	#FF1A0E0E��6#   $
 0.75Q�65   6E   5/      ._�51      �  � RowDefinitions 52      �� 53      $
��Auto �6$   64   �� 54      6&   .+�56      � $��0��6   .+�57      -   'DoAn_LTTQ.UserControl_DoAn.ControlBarUC  
 � Tag 6&   �� *Title+ �� ElementName$ 
mainWindow��6V   58      � 5:      $��1��6    5;      �� 5<      $	��100 �6(   67   �� 5=      $
��auto �6(   68   �� 5>      $	��100 �6(   67   �� 5?      $	��100 �6(   67   �� 5@      $
��Auto �6(   68   �� 5A      6+   .+�5D      �  � ColumnDefinitions 5E      �� 5F      61   �� 5G      61   .+�5I      #  MaterialDesignThemes.Wpf.Card  $��0��6.   $��10 20 10 10q�6;   $��0��6P   .��5J      �� $��Center=�5K   !   $	��230��6<   $��15(�6H   $
��bold"�6V   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ ID Người dùng��5L   !   $��0 0 0 15q�6P    % !MaterialDesignFloatingHintTextBox#��[ 5M   !   ��5J   &   �� *User.DisplayName+5M   !   5N        5P      $��0��6.   $��10 20 10 10q�6;   $��1��6P   .��5Q      �� $��Center=�5R   !   $	��230��6<   $��15(�6H   $
��bold"�6V   $ Kiểu tài khoản��5S   !   $��0 0 0 15q�6Q   #��[ 5T   !   ��5Q   &   �� *Type+5T   !   5U      5V      � 5X      $��2��6    5Y      �� 5Z      61   �� 5[      61   .+�5]        $��2��6.   $��10 20 10 10q�6;   $��0��6P   .��5^      �� $��Center=�5_   !   $	��230��6<   $��15(�6H   $
��bold"�6V   $ Tài khoán��5`   !   $��0 0 0 15q�6L   #��[ 5a   !   ��5^   &   �� *
Username+5a   !   5b        5d      $��2��6.   $��10 20 10 10q�6;   $��1��6P   .��5e      �� $��Center=�5f   %   $	��230��6@   $��15(�6L   $
��bold"�6Z   $ Mật khẩu��5g   %   $��0 0 0 15q�6O   #��[ 5h   %   ��5e   &   �� *
Password+5h   %   5i      5j        5l      $��3��6*   $��100 10 100 20q�67   .��5m      (	  "System.Windows.Controls.DatePicker	  $	��230��5n      $��15(�6)   $
��Bold"�67   $ Ngày tạo tài khoản��5o      .
  (MaterialDesignThemes.Wpf.TextFieldAssist 
  HasClearButton .  ( $MaterialDesignFloatingHintDatePicker#��[ 5q       	  Text 5m   %   �� *Date+5q      5r        5t      $��4��6*   $��5q�67   $	��330��6B   ���	#FF312C2C.��5u      � $��Center=�6$   .+�5v      �� $��Thêm��6D   $��5q�6S   $	��100��6^   ���	#FF312C2C
�������
���������6%   �� *
AddCommand+6�   �� 5w      $
��Xóa��6G   $��5q�6U   $	��100��6`   ���	#FF312C2C
�������
���������6%   �� *DeleteCommand+6�   �� 5x      $��Sửa��6F   $��5q�6T   $	��100��6_   ���	#FF312C2C
�������
���������6%   �� *EditCommand+6�   5y      5z        5|      $��5��6*   $��10q�67   $��Stretch=�6C   .��5}      �� $
��Auto=�6'   .��5~      �� $��Center=�6   ��6'   �� *List+ �� SelectedItem 6D   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5   "   �� 5�   &   .P�5�   *   �� $��ID��69    �� Width$	 150��6i    �� DisplayMemberBinding 6E   �� *Id+6w   �� 5�   *   $
��User��69   $	 100��6y    6G   �� *User.DisplayName+6�   �� 5�   *   $��Password��69   $	 150��6u    6K   �� *
Password+6�   �� 5�   *   $��Username��69   $	 150��6u    6K   �� *
UserName+6�   �� 5�   *   $��Date_create��69   $	 150��6t    6N   �� *Date+6�   �� 5�   *   $
��Type��69   $	 150��6m    6G   �� *Type+6{   5�   '   5�      5�      5�      5�      5�      5�      5�      5�      