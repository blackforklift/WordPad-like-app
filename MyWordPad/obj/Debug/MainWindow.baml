   M S B A M L   `   `   `  ����D  @MyWordPad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:MyWordPad	MyWordPad  5   	       MyWordPad.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   )localclr-namespace:MyWordPad     5   	   X TXceed.Wpf.Toolkit, Version=4.1.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f43ext)http://schemas.xceed.com/wpf/xaml/toolkit  5        � Title$  
MainWindow��5   	   $	��500��6   $	��700��6)    � 	Resources 5         newicon �� 	UriSource  openicon  saveicon  exiticon  undoicon  redoicon  selectallicon  cuticon  copyicon 	 	pasteicon 
 lefticon  
centericon  	righticon  boldicon  
italicicon  underlineicon  increasefonticon  decreasefonticon  	abouticon��%r  &	        &	 !     &	 C     &	 e     &	 �     &	 �     &	 �     &	 �     &	     &		 5    &	
 X    &	     &	 �    &	 �    &	 �    &	     &	 =    &	 g    &	 �    �� 5	   
   $ new.png?�6&   �� 5
   
   $ open.png?�6'   �� 5   
   $ save.png?�6'   �� 5   
   $ exit.png?�6'   �� 5   
   $ undo.png?�6'   �� 5   
   $ redo.png?�6'   �� 5   
   $ selectall.png?�6,   �� 5   
   $ cut.png?�6&   �� 5   
   $ copy.png?�6'   �� 5   
   $ 	paste.png?�6(   �� 5   
   $ leftalign.png?�6'   �� 5   
   $ centeralign.png?�6)   �� 5   
   $ rightalign.png?�6(   �� 5   
   $ bold.png?�6'   �� 5   
   $ 
italic.png?�6)   �� 5   
   $ underline.png?�6,   �� 5   
   $ increasefont.png?�6/   �� 5   
   $ decreasefont.png?�6/   �� 5   
   $ 	about.png?�6(   5      .��5      �  J� CommandBindings 5   
   )  #System.Windows.Input.CommandBinding  5      -   5        
newbinding��   Command$ ApplicationCommands.New��5   1   6v     5       -   5        openbinding��$ ApplicationCommands.Open��5    2   6y     5!      -   5        savebinding��$ ApplicationCommands.Save��5!   2   6y     5"      -   5        undobinding��$ ApplicationCommands.Undo��5"   2     5#      -   5        exitbinding��$ local:CustomCommands.Exit��5#   2   6z     5$      -   5        redobinding��$ ApplicationCommands.Redo��5$   2     5%      -   5        selectallbinding��$# ApplicationCommands.SelectAll��5%   7     5&      -   5        
cutbinding��$ ApplicationCommands.Cut��5&   1     5'      -	   5        copybinding��$ ApplicationCommands.Copy��5'   2     5(      -
   5        pastebinding��$ ApplicationCommands.Paste��5(   3     5)      -   5        leftalignbinding��$ EditingCommands.AlignLeft��5)   7     5*      -   5        centeralignbinding��$! EditingCommands.AlignCenter��5*   9     5+      -   5        rightalignbinding��$  EditingCommands.AlignRight��5+   8     5,      -   5        boldbinding��$  EditingCommands.ToggleBold��5,   2     5-      -   5        italicbinding��$" EditingCommands.ToggleItalic��5-   4     5.      -   5        underlinebinding��$% EditingCommands.ToggleUnderline��5.   7     5/      -   5        increasefontbinding��$&  EditingCommands.IncreaseFontSize��5/   :     50      -   5        decreasefontbinding��$&  EditingCommands.DecreaseFontSize��50   :   .+�52   
   `�  `� 
Background
 �����.�53      c�  c� Band$ 1��6    c� 	BandIndex$ 1��6   $��50��6-   .@�54      �� $��ApplicationCommands.New��6@    � ToolTip$	 New��6b   ��6   �� *richTextBox1+.��55      �� #��[  6   56      �� 57      -   5        $��ApplicationCommands.Open��57   @   $
 Open��6c   ��6   �� *richTextBox1+.��58      �� #��[ 6   59      �� 5:      $��ApplicationCommands.Save��6@   $
 Save��6c   ��6   �� *richTextBox1+.��5;      �� #��[ 6   5<      5>      c� 5?      $ 1��6   $ 2��6   $��50��6-   .@�5@      �� $��ApplicationCommands.Undo��6   $
 Undo��6<   .��5A      �� #��[ 6   5B      �� 5C      $��ApplicationCommands.Redo��6   $
 Redo��6<   .��5D      �� #��[ 6   5E      5F      c� 5G      $ 1��6   $ 3��6   $��50��6-   .@�5H      �� $#��ApplicationCommands.SelectAll��6   $ 
Select All��6A   .��5I      �� #��[ 6   5J      �� 5K      $��ApplicationCommands.Cut��6   $	 Cut��6;   .��5L      �� #��[ 6   5M      �� 5N      $��ApplicationCommands.Copy��6   $
 Copy��6<   .��5O      �� #��[ 6   5P      �� 5Q      $��ApplicationCommands.Paste��6   $ Paste��6=   .��5R      �� #��[	 6   5S      5T      c� 5U      $ 1��6   $ 4��6   $��50��6-   .@�5V      �� $��EditingCommands.AlignLeft��6   $ 
Align Left��6=   .��5W      �� #��[
 6   5X      �� 5Y      $!��EditingCommands.AlignCenter��6   $ Align Center��6?   .��5Z      �� #��[ 6   5[      �� 5\      $ ��EditingCommands.AlignRight��6   $ Align Right��6>   .��5]      �� #��[ 6   5^      5_      c� 5`      $ 2��6   $ 1��6   $��35��6-   .@�5a      �� $ ��EditingCommands.ToggleBold��6   $
 Bold��6>   .��5b      �� #��[ 6   5c      �� 5d      $"��EditingCommands.ToggleItalic��6   $ Italic��6@   .��5e      �� #��[ 6   5f      �� 5g      $%��EditingCommands.ToggleUnderline��6   $ 	Underline��6C   .��5h      �� #��[ 6   $��25��6D   $��36��6P   	 J� RenderTransformOrigin$	 0.485,0.887&�6[   5i      5j      c� 5k      $ 2��6   $ 2��6   $��50��6-   .@�5l      �� -   5        $��cbFonts��5l         System.Windows.Media.Fonts
   SystemFontFamilies#��Z
 6*    �� SelectedIndex$ 0��6\   $
 Font��6n   ��5m      �� 5n      .R�5o      �� ��6(   �� ��69   �� 5p      5r      �� 5s      $&�� EditingCommands.IncreaseFontSize��6   $ Increase Font Size��6D   .��5t      �� #��[ 6   5u      �� 5v      $&�� EditingCommands.DecreaseFontSize��6   $ Decrease Font Size��6D   .��5w      �� #��[ 6   5x      5y      c� 5z      $ 2��6   $ 3��6   $��50��6-   .@�5{      #  Xceed.Wpf.Toolkit.ColorPicker  -   5        $��colorChooser��5{   "      DisplayColorAndName . $ 
Text Color��6�   5|      c� 5}      $ 2��6   $ 4��6   $��50��6-   $��10,0,58.333,0q�69   $	 3.205,-0.439&�6P   .@�5~      �� -   5        $��btnAbout��5~      $ About MyWordPad��6)   .��5      �� #��[ 6   5�      �� 5�      $��local:CustomCommands.Exit��6@   $
 Exit��6d   ��6   �� *richTextBox1+.��5�      �� #��[ 6   5�      5�      5�      �� 5�   
   -   5        $��richTextBox1��5�   +   $��11,100,14,9q�6    �� 	IsEnabled . 6?   5�      5�      