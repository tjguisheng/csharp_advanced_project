   M S B A M L   `   `   `  ����F  BQuanProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:QuanProjectQuanProject  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   !    QuanProject.WindowAddRecord   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:QuanProject     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  WindowAddRecord��5	   	   $	��400��6!   $	��500��6.   .��5      � $
��10,5q�6   $��Center=�6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $	��200 �6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $
��Left=�6-   $��Center=�6H   .��6c   Date6i   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dp��5   �   $��0��6   $��1��6"   $	��180��63   $��5q�6?   $
��Left=�6J   
 �� Now   SelectedDate# Z 6e   6�   �� 5   
   $��1��6   $��0��6   $
��Left=�6-   $��Center=�6H   .��6c   ODO6h   �� 5   
   -   5         ��Name$ tbODO��5   b   $��1��6   $��1��6   $	��180��60   $��5q�6<   $
��Left=�6G   6b   �� 5   
   $��2��6   $��0��6   $
��Left=�6-   $��Center=�6H   .��6c   Volume(Liter)6r   �� 5   
   -   5        $ tbVolume��5   e   $��2��6   $��1��6   $
��Left=�6/   $��Center=�6J   $��5q�6w   $	��180��6�   $��30��6�   �� 5    
   $��3��6   $��0��6   $
��Left=�6-   $��Center=�6H   .��6c   	Cost($)6l   �� 5!   
   -   5        $ tbCost��5!   e   $��3��6   $��1��6   $
��Left=�6/   $��Center=�6J   $��5q�6u   $	��180��6�   $��30��6�   �� 5"   
   $��4��6   $��0��6   $
��Left=�6-   $��Center=�6H   .��6c   Full Filled6p   �� 5#   
   -   5         ��Name$ cbIsFull��5#   �   $��4��6   $��1��6    $��Center=�60   $
��Left=�6K   $��5q�6f    d� 	IsChecked$ FalseY�6q   6�   �� 5$   
   $��5��6   $��0��6   $
��Left=�6-   $��Center=�6H   .��5%      �� $��WrapWithOverflow=�6    Forgot to record last filling?6X   5&      �� 5'   
   -   5        $ 
cbIsForgot��5'   �   $��5��6   $��1��6    $��Center=�60   $
��Left=�6K   $��5q�6f   $ FalseY�6q   6�   � 5)   
   $��6��6   $��3��6!   $��Center=�65   $��0,20,0,0q�6R   .+�5*      �� -   5        	 ��Name$	 btnCancelAddRecord��5*      $��
0, 0, 10,0q�61   $	��100��6E   $��35��6Q   
�������.��6�   Cancel6�   �� 5+      -   5        $	 btnSaveAddRecord��5+      $��10,0,0,0q�6/   $	��100��6A   $��35��6M   
�������.��6�   Save6�   5,      5-      50      