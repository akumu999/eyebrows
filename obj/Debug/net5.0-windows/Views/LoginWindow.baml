   M S B A M L   `   `   `  ����Q  MVelvetEyebrows_Kunavin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:VelvetEyebrows_Kunavin.Assets.Views#VelvetEyebrows_Kunavin.Assets.Views  5   	   5    /VelvetEyebrows_Kunavin.Assets.Views.LoginWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Clocal1clr-namespace:VelvetEyebrows_Kunavin.Assets.Views     5   	     � Title$  LoginWindow��5   	   $	��500��6   $	��500��6*   .��5	      �� $��Center=�6   .+�5
   
   �� $(��"./../Assets/Images/beauty_logo.png��6   $��0 0 0 25q�6<   $	��200��6N   $	��200��6Z   �� 5   
   $��PIN-Код:��6   $
��10 0q�6#   $
��Bold"�61   G� 5   
   -   5         G�Name$ pinCodeInput��5      $
��10 0q�6,   ��5      �� 5       �� 
TargetType" G�6      MaterialDesignPasswordBox �� BasedOn# [  61    �� Triggers 5      �� 5       �� Binding 6&   ��  �� ElementName$ isKioskCheckBox�� �� Path$ 	IsChecked� �� Value True6f   .a�5      �� 	 �� Property	 � {�
 �� Value$
 False��6:   5      5      5      �� 5   
   -   5         ��Name$ isKioskCheckBox��5      $-��'Войти в режиме киоска��6,   $��10 20q�6L   �� 5   
   -   5         �� 	IsDefault$
 True��5      $��Вход��6"   $��50��61   $��22(�6=   $��10q�6K    � Cursor$
 Hand��6W   6e   5      5      