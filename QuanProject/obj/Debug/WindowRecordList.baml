   M S B A M L   `   `   `  ����F  BQuanProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:QuanProjectQuanProject  5   	   "    QuanProject.WindowRecordList   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:QuanProject     5   	     � Title$  Record List��5   	   $	��400��6   $	��500��6*   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgRecordList��5
      $��
20 0 20 10q�5      $	��280��5         AutoGenerateColumns .     AlternatingRowBackground �#e2f1f6   HorizontalGridLinesBrush
 ��ح�   VerticalGridLinesBrush
 ��ح�
����� �   
IsReadOnly .    SelectionMode$ Single=�5      $��Visible=�5      ��5      ��  �� SelectedItem 5      �� *SelectedRecord+	 �� Mode$	 TwoWay=�
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6P   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *
DateTime+6P     5      $	 ODO��6%   $ * 6J    62   �� *ODO+6J     5      $ Volume��6%   $ * 6P    65   �� *Volume+6P     5      $ Payment��6%   $ * 6R    66   �� *	Payment+6R   5      � 5    
   $��Bottom=�6   $��Center=�6/   $��10q�6L   .+�5!      �� -   5         ��Name$ btDeleteRecord��5!      $
��10,5q�6-   $��80��6;   $��30��6F   
�������.��6�   Delete6�   5"      5#      5$      