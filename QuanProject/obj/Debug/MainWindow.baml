   M S B A M L   `   `   `  ����F  BQuanProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:QuanProjectQuanProject  5   	       QuanProject.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:QuanProject     5   	   -   5          � Title$  
MainWindow��5   	   $	��400��6   $	��500��6)   .��5	      �� .+�5   
   � $��Center=�6   $��Center=�6/   .+�5      �� -   5         ��Name$ cbBoxCarSelect��5   c   $��5q�6   $��Center=�6"   $	��Top=�6?   $	��300��6W   6{   �� 5      -   5         ��Name$ btnRecordList��5      $��Record List��6-   
�������6Z   5      �� 5   
   
����� �$��1q�6+    �� CornerRadius$ 2��6?   $��10q�6P    �� Padding$ 5q�6\   ._�5      � $
��10,5q�6    � ShowGridLines .  � DataContext 6!   �� *	CarName+ � ColumnDefinitions 5      �� 5      $	��160 �6'   �� 5      $��* �6'   �� 5      $	��100 �6'    � RowDefinitions 5      �� 5      $��40 �6$   �� 5      $��40 �6$   �� 5      $��40 �6$   �� 5      $��40 �6$   .+�5      �� $��0��6   $��0��6%   $
��Left=�65   $��Center=�6P   .��6k   Latest Fuel Efficiency6�   �� 5      -   5        	 ��Name$	 
lbLatestFE��5   l   $��0��6   $��1��6%   $��Right=�65   $��Center=�6Q   6�   �� 5      $��0��6   $��2��6%   $
��Left=�65   $��Center=�6P   .��6k   	L/100km6t   �� 5       $��1��6   $��0��6%   $
��Left=�65   $��Center=�6P   .��6k   Total Average Fuel Efficiency6�   �� 5!      -   5        $	 	lbTotalFE��5!   l   $��1��6   $��1��6%   $��Right=�65   $��Center=�6Q   6�   �� 5"      $��1��6   $��2��6%   $
��Left=�65   $��Center=�6P   .��6k   	L/100km6t   �� 5#      $��2��6   $��0��6%   $
��Left=�65   $��Center=�6P   .��6k   Average Travel6{   �� 5$      -   5        $	 lbAverageTravel��5$   l   $��2��6   $��1��6%   $��Right=�65   $��Center=�6Q   6�   �� 5%      $��2��6   $��2��6%   $
��Left=�65   $��Center=�6P   .��6k   km/day6s   �� 5&      $��3��6   $��0��6%   $
��Left=�65   $��Center=�6P   .��6k   Average Fuel Cost6~   �� 5'      -   5        $	 lbAverageCost��5'   l   $��3��6   $��1��6%   $��Right=�65   $��Center=�6Q   6�   �� 5(      $��3��6   $��2��6%   $
��Left=�65   $��Center=�6P   .��6k   $/km6q   5)      5*      � 5+   
   $��Center=�6   .+�5,      �� -   5        $ 	btnAddCar��5,   8   $	��150��6   $��30��6!   $��5q�6-   
�������.��6z   	Add a Car6�   �� 5-      -	   5        $ btnAddRecord��5-   8   $	��150��6   $��30��6!   $��5q�6-   
�������.��6�   Add a Record6�   5.      5/      50      