   M S B A M L   `   `   `  ����D  @DoAn_LTTQ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:DoAn_LTTQ	DoAn_LTTQ  5   	   G(clr-namespace:DoAn_LTTQ.UserControl_DoAnDoAn_LTTQ.UserControl_DoAn  5   	       DoAn_LTTQ.MoneyWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:DoAn_LTTQ     5   	   7uc(clr-namespace:DoAn_LTTQ.UserControl_DoAn     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $��
mainWindow��5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	   
�������  MaterialDesignFont#���  5   	    � Title$ 
Money View��5   	   $	��500��6   $	��750��6)   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
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
��auto �6(   68   �� 5>      6*   .+�5A      �  � ColumnDefinitions 5B      �� 5C      61   �� 5D      61   .+�5F      #  MaterialDesignThemes.Wpf.Card  $��0��6.   $��10 20 10 10q�6;   $��0��6P   .��5G      �� $��Center=�5H   !   $	��230��6<   $��20(�6H   $
��bold"�6V   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Số lượng liền��5I   !   $��0 0 0 15q�6P    % !MaterialDesignFloatingHintTextBox#��[ 5J   !   ��5G   &   �� *DisplayName+5J   !   5K        5M      $��0��6.   $��10 20 10 10q�6;   $��1��6P   .��5N      �� $��Center=�5O   !   $	��230��6<   $��20(�6H   $
��bold"�6V   $ 
Đơn vị��5P   !   $��0 0 0 15q�6I   #��[ 5Q   !   ��5N   &   �� *DisplayName+5Q   !   5R      5S        5T      $��1��6*   $��5q�67   $	��330��6B   ���	#FF312C2C.��5U      � $��Center=�6$   .+�5V      �� $��Thêm��6D   $��5q�6S   $	��100��6^   ���	#FF312C2C
�������
���������6%   �� *
AddCommand+6�   �� 5W      $
��Xóa��6G   $��5q�6U   $	��100��6`   ���	#FF312C2C
�������
���������6%   �� *DeleteCommand+6�   �� 5X      $��Sửa��6F   $��5q�6T   $	��100��6_   ���	#FF312C2C
�������
���������6%   �� *EditCommand+6�   5Y      5Z        5\      $��2��6*   $��10q�67   $��Stretch=�6C   .��5]      �� $
��Auto=�6'   .��5^      �� $��Center=�6   ��6'   �� *List+ �� SelectedItem 6D   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5_   "   �� 5`   &   .P�5a   *   �� $��Id��69    �� Width$	 200��6i    �� DisplayMemberBinding 6E   �� *Id+6w   �� 5b   *   $��Amount��69   $	 300��6q    6I   �� *Amount+6   �� 5c   *   $
��Unit��69   $	 150��6m    6G   �� *Unit+6{   5d   '   5f      5g      5h      5i      5j      5k      5l      5m      