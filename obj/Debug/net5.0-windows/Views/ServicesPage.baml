   M S B A M L   `   `   `  ����Q  MVelvetEyebrows_Kunavin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:VelvetEyebrows_Kunavin.ViewsVelvetEyebrows_Kunavin.Views  5      /    )VelvetEyebrows_Kunavin.Views.ServicesPage   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:VelvetEyebrows_Kunavin.Views     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      -   5          N�Name$  servicesPage��5       N� Title$ ServicesPage��5       � DataContext 5      ��  �� Mode$ OneWay=� �� RelativeSource �� *Self+.��5      ]� .+�5   
   �� $	��Top=�6   $��35(�6%   $
��Bold"�63   $��Услуги��6E   $��0 0 0 25q�6V   �� 5   
    �� Orientation$ 
Horizontal=�6      SecondaryHueMidBrush#���   6.   $	��Top=�6c   .+�5      �� $��Поиск: ��6   $��18(�6&   $��Center=�64   �� 5      -   5         ��Name$ searchTextBox��5   Z   $	��200��6    ! MaterialDesignOutlinedTextBox#���  6"   6q   �� 5      $,��&Сортировать по цене: ��6   $��10 0 0 0q�64   $��Center=�6F   �� 5      -   5         ��Name$ sortingComboBox��5      $	��150��60    " MaterialDesignOutlinedComboBox#���  6<   .@�5      �� $!��Не сортировать��6   �� 5      $#��По возрастранию��6   �� 5      $��По убыванию��6   5      �� 5      $.��(Фильтрация по скидке: ��6   $��10 0 0 0q�65   $��Center=�6G   �� 5      -   5        $ filterComboBox��5   ?   $	��150��6W   #���  6c   ��6   �� *DiscountFilters+��5      �� 5      .R�5      �� ��6    �� *Key+5      5!      �� 5"      -   5        $��20 0 0 0q�5"       % !MaterialDesignOutlinedLightButton#���  6'   y�6c   ��  �� ElementName$ servicesPage��	 �� Path$	 IsAdmin�   BooleanToVisibilityConverter
 �� 	Converter#
 [ .��5#      �� $ 
Horizontal=�6   .+�5$      '  !MaterialDesignThemes.Wpf.PackIcon  $��25��6.   $��25��6:      Kind$ DatabaseAdd=�6E   $	��5 0q�6X   �� 5%        MaterialDesignTextBlock#���  6    Добавить6\   5&      5'      5(      �� 5)   
   -   5         ��Name$ searchResultLabel��5)      $	��Top=�6+   $4��.Введите поисковый запрос��6@   �� 5*   
   $
��Auto=�6   .��5+      �� $	��Top=�6   ��60   �� *
Services+��5,      �� 5-      .R�5/      � 50      ��52      �� 53      .R�54      � $��2q�6   $	��800��6*   ��66   �� *
Discount+  discountToColorConverter#
 [  � ColumnDefinitions 55      �� 56   "   $	��150 �63   �� 57   "   �� 58   "   $	��100 �63   .+�5:      �� $	��150��6$   $	��150��60   $��UniformToFill=�6=   ��6U   �� *MainImagePath+  imageConverter#
 [ �� 5;      $��7q�6)   $��1��64    � 	Resources 5<   "    �� 
TargetType  discountText �� Triggers �� Binding �� Value �� Property �� Value��%�   &	       �� 5=   &   " ��6,    5>   *   �� 5?   .    6:   �� *
Discount+ 06W   .a�5@   2   ��  � y�$ 	Collapsed=�6O   5A   /   5C   '   5D   #   .+�5E   "   �� $��22(�6,   $
��Wrap=�6:   �� 5F   &   $��SemiBold"�6*   �6@   �� *Title+�� 5G   &   �� 5H   &   �6*   �� *Cost+ �� StringFormat$ {0:0.00}�� �� TextDecorations 6Y   �� *
Discount+ 	 discountToStrokeConverter#
 [	  �� 5I   &   #���  60   ��5J   &   �� *CostWithDiscount+$ {0:0.00}��$ OneWay=� рублей за �� 5L   &   �6*   �� *DurationInMinutes+$ OneWay=� минут�� 5M   ,   �� 5N   %   $��14(�6/   #���  6=   * скидка �� 5O   2   �66   �� *DiscountToInteger+$ OneWay=�%5P   &   5Q   #   �� 5R   "   -   5        $��20q�5R   *   $��Записать��66   y�6I   �� $ servicesPage��$	 IsAdmin�#
 [ 6�   5S      �� 5T      $��2��6)   $��3q�69   $	��Top=�6E   y�6]   �� $ servicesPage��$	 IsAdmin�#
 [ .+�5U   "   �� -   5        $��0 0 0 2q�5U   )    
 MaterialDesignFlatButton#��� 
 6N   .��5V   &     $
 Edit=�6>   5W   #   �� 5X   "   -	   5        #��� 
 5X   )   .��5Y   &     $ Remove=�6>   5Z   #   5[      5\      5]      5_      5`      �� 5a   
   $	��Top=�6   $ 
Horizontal=�6*   $��28��6C   .+�5b      �� #���   6   .@�5c      �� Показано �� 5d      �6   �� *CurrentCount+ из �� 6<   �6@   �� *
TotalCount+ записей5e      5f      5g      5h      5i      