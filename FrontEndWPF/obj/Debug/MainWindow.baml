   M S B A M L   `   `   `  ����F  BFrontEndWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:FrontEndWPFFrontEndWPF  5   	       FrontEndWPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:FrontEndWPF     5   	     � Title$  
MainWindow��5   	   $��806.652��6   $��1804.379��6-   .��5	      � -   5        $��71,128,-51,-87q�5	        � ColumnDefinitions 5
   
   �� 5      $	��50* �6   �� 5      $	��49* �6   �� 5      $	��14* �6   �� 5      $
��681* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��	dgGeneros��5         AutoGenerateColumns . $��17,31,121,167q�5      $��4��6R   �� 5   
   -   5         ��Name$ btnNuevo��5      $��NUEVO��6#   $
��Left=�63   $��
17,261,0,0q�6N   $	��Top=�6b   $	��133��6z   $��4��6�   �� 5   
   -   5        $ btnModificar��5      $��	MODIFICAR��6'   $
��Left=�6;   $��
51,261,0,0q�6V   $	��Top=�6j   $	��123��6�   $��3��6�   6�   �� 5   
   -   5        $ 	btnBorrar��5      $��BORRAR��6$   $
��Left=�65   $��179,261,0,0q�6P   $	��Top=�6e   $	��135��6}   $��3��6�   6�   �� 5   
   -   5        $ 	btnCerrar��5      $��CERRAR��6$   $
��Left=�65   $��409,261,0,0q�6P   $	��Top=�6e   $	��153��6}   $��3��6�   �� 5   
   -   5         ��Name$ txtID��5      $
��Left=�6;   $��23��6V   $��
24,215,0,0q�6b    �� TextWrapping$
 Wrap=�6v   $	��Top=�6�   $��38��6�   $��2��6�   ��6"   ��  �� Path$ Id�6�   �� 5   
   -   5        $ 	txtNombre��5      $
��Left=�6I   $��23��6d   $��17.452,215,0,0q�6p   $
 Wrap=�6�   $	��Top=�6�   $	��360��6�   $��3��6�   $��1��6�   ��6'   �� $ Descripcion�6�   �� 5   
   -	   5         ��Name$ 
lblGeneros��5      $��GENEROS��6$   $
��Left=�66   $��17,5,0,0q�6Q   $	��Top=�6c   $��4��6{   $	��138��6�   5      5      