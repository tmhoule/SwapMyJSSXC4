FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	    AppDelegate.applescript    
 �   2     A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       SwapMyJSS     �        S w a p M y J S S      l     ��������  ��  ��        l     ��  ��    , &  Created by Administrator on 6/20/14.     �   L     C r e a t e d   b y   A d m i n i s t r a t o r   o n   6 / 2 0 / 1 4 .      l     ��  ��    9 3  Copyright (c) 2014 Partners. All rights reserved.     �   f     C o p y r i g h t   ( c )   2 0 1 4   P a r t n e r s .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��         l     ��������  ��  ��      !�� ! h     �� "�� 0 appdelegate AppDelegate " k       # #  $ % $ j     �� &
�� 
pare & 4     �� '
�� 
pcls ' m     ( ( � ) )  N S O b j e c t %  * + * j   	 �� ,�� 0 	jssserver 	jssServer , m   	 
 - - � . .  C h e c k i n g . . . +  / 0 / j    �� 1�� 0 
statustext 
statusText 1 m     2 2 � 3 3   I n i t i a l i z i n g . . . . 0  4 5 4 j    �� 6�� 0 userid userID 6 m     7 7 � 8 8  a n o n 1 2 3 5  9 : 9 j    �� ;�� 0 	emailaddr 	emailAddr ; m     < < � = = " P e a s @ p a r t n e r s . o r g :  > ? > j    �� @�� 0 fullname fullName @ m     A A � B B  P e a s   U s e r ?  C D C j    �� E�� 0 
workingnow 
workingNow E m    ��
�� boovtrue D  F G F j    �� H�� 0 	runpolicy 	runPolicy H m    ��
�� boovfals G  I J I j     �� K�� 0 runinventory runInventory K m    ��
�� boovfals J  L M L j   ! #�� N�� 0 	runmanage 	runManage N m   ! "��
�� boovfals M  O P O j   $ (�� Q�� 0 defaults   Q m   $ '��
�� 
msng P  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V  
 IBOutlets    W � X X    I B O u t l e t s U  Y Z Y j   ) -�� [�� 0 	thewindow 	theWindow [ m   ) ,��
�� 
msng Z  \ ] \ j   . 2�� ^�� 0 prefswindow prefsWindow ^ m   . 1��
�� 
msng ]  _ ` _ l     ��������  ��  ��   `  a b a p   3 3 c c ������ 0 
currserver 
currServer��   b  d e d p   3 3 f f ������ 0 
prodserver 
prodServer��   e  g h g p   3 3 i i ������ 0 
testserver 
testServer��   h  j k j p   3 3 l l ������ 0 	devserver 	devServer��   k  m n m p   3 3 o o ������ 0 prodenrollk prodEnrollK��   n  p q p p   3 3 r r ������ 0 testenrollk testEnrollK��   q  s t s p   3 3 u u ������ 0 
devenrollk 
devEnrollK��   t  v w v p   3 3 x x ������ 0 currentserver currentServer��   w  y z y p   3 3 { { ������ 0 
currserver 
currServer��   z  | } | l     ��������  ��  ��   }  ~  ~ i   3 6 � � � I      �� ����� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_ �  ��� � o      ���� 0 anotification aNotification��  ��   � k    � � �  � � � l     �� � ���   � R L Insert code here to initialize your application before any files are opened    � � � � �   I n s e r t   c o d e   h e r e   t o   i n i t i a l i z e   y o u r   a p p l i c a t i o n   b e f o r e   a n y   f i l e s   a r e   o p e n e d �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  set default server values    � � � � 2 s e t   d e f a u l t   s e r v e r   v a l u e s �  � � � O     � � � r     � � � I    �������� ,0 standarduserdefaults standardUserDefaults��  ��   � o      ���� 0 defaults   � n     � � � o    ����  0 nsuserdefaults NSUserDefaults � m     ��
�� misccura �  � � � O   ) � � � I    (�� ����� &0 registerdefaults_ registerDefaults_ �  ��� � K    $ � � �� � ��� 0 
prodserver 
prodServer � m     � � � � � @ h t t p s : / / c a s p e r . e x a m p l e . c o m : 8 4 4 3 / � �� � ��� 0 
testserver 
testServer � m      � � � � � H h t t p s : / / c a s p e r T E S T . e x a m p l e . c o m : 8 4 4 3 / � �� ����� 0 	devserver 	devServer � m   ! " � � � � � F h t t p s : / / c a s p e r D E V . e x a m p l e . c o m : 8 4 4 3 /��  ��  ��   � o    ���� 0 defaults   �  � � � l  * *��������  ��  ��   �  � � � l  * *�� � ���   � 3 -get current server. note Timeout doesn't work    � � � � Z g e t   c u r r e n t   s e r v e r .   n o t e   T i m e o u t   d o e s n ' t   w o r k �  � � � Q   * J � � � � t   - ; � � � r   / : � � � l  / 6 ����� � I  / 6�� � �
�� .sysoexecTEXT���     TEXT � m   / 0 � � � � � � / u s r / s b i n / j a m f   c h e c k J S S C o n n e c t i o n   |   g r e p   h t t p s   |   c u t   - d   " / "   - f 3 | s o r t   - u � �� ���
�� 
badm � m   1 2��
�� boovtrue��  ��  ��   � n      � � � o   7 9���� 0 	jssserver 	jssServer �  f   6 7 � m   - .����  � R      ������
�� .ascrerr ****      � ****��  ��   � r   C J � � � m   C F � � � � �   � n      � � � o   G I���� 0 	jssserver 	jssServer �  f   F G �  � � � r   K R � � � m   K L��
�� boovfals � n      � � � o   M Q���� 0 
workingnow 
workingNow �  f   L M �  � � � r   S \ � � � m   S V � � � � � 
 R e a d y � n      � � � o   W [���� 0 
statustext 
statusText �  f   V W �  � � � l  ] ]��������  ��  ��   �  � � � l  ] ]�� � ���   �  retrieve defaults    � � � � " r e t r i e v e   d e f a u l t s �  � � � O  ] p � � � r   e o � � � I   e m�� ����� 0 objectforkey_ objectForKey_ �  ��� � m   f i � � � � �  p r o d S e r v e r��  ��   � o      ���� 0 prodserverkey prodServerKey � o   ] b���� 0 defaults   �  � � � O  q � � � � r   y � � � � I   y ��� ����� 0 objectforkey_ objectForKey_ �  ��� � m   z } � � � � �  t e s t S e r v e r��  ��   � o      ���� 0 testserverkey testServerKey � o   q v���� 0 defaults   �  � � � O  � � � � � r   � � � � � I   � ��� ����� 0 objectforkey_ objectForKey_ �  ��� � m   � � � � � � �  d e v S e r v e r��  ��   � o      ���� 0 devserverkey devServerKey � o   � ��� 0 defaults   �  � � � O  � � � � � r   � �   I   � ��~�}�~ 0 objectforkey_ objectForKey_ �| m   � � �  p r o d E n r o l l K e y�|  �}   o      �{�{ $0 prodenrollkeykey prodEnrollKeyKey � o   � ��z�z 0 defaults   �  O  � �	 r   � �

 I   � ��y�x�y 0 objectforkey_ objectForKey_ �w m   � � �  t e s t E n r o l l K e y�w  �x   o      �v�v $0 testenrollkeykey testEnrollKeyKey	 o   � ��u�u 0 defaults    O  � � r   � � I   � ��t�s�t 0 objectforkey_ objectForKey_ �r m   � � �  d e v E n r o l l K e y�r  �s   o      �q�q "0 devenrollkeykey devEnrollKeyKey o   � ��p�p 0 defaults    r   � � l  � ��o�n c   � �  o   � ��m�m 0 prodserverkey prodServerKey  m   � ��l
�l 
TEXT�o  �n   o      �k�k 0 
prodserver 
prodServer !"! r   � �#$# l  � �%�j�i% c   � �&'& o   � ��h�h 0 testserverkey testServerKey' m   � ��g
�g 
TEXT�j  �i  $ o      �f�f 0 
testserver 
testServer" ()( r   � �*+* l  � �,�e�d, c   � �-.- o   � ��c�c 0 devserverkey devServerKey. m   � ��b
�b 
TEXT�e  �d  + o      �a�a 0 	devserver 	devServer) /0/ r   � �121 l  � �3�`�_3 c   � �454 o   � ��^�^ $0 prodenrollkeykey prodEnrollKeyKey5 m   � ��]
�] 
TEXT�`  �_  2 o      �\�\ 0 prodenrollk prodEnrollK0 676 r   � 898 l  � �:�[�Z: c   � �;<; o   � ��Y�Y $0 testenrollkeykey testEnrollKeyKey< m   � ��X
�X 
TEXT�[  �Z  9 o      �W�W 0 testenrollk testEnrollK7 =>= r  
?@? l A�V�UA c  BCB o  �T�T "0 devenrollkeykey devEnrollKeyKeyC m  �S
�S 
TEXT�V  �U  @ o      �R�R 0 
devenrollk 
devEnrollK> DED l �Q�P�O�Q  �P  �O  E FGF Q  0HIJH r  KLK l M�N�MM I �LN�K
�L .sysoexecTEXT���     TEXTN m  OO �PP � d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f   j s s _ u r l�K  �N  �M  L o      �J�J 0 currentserver currentServerI R      �I�H�G
�I .ascrerr ****      � ****�H  �G  J k  !0QQ RSR r  !(TUT m  !$VV �WW 
 O t h e rU o      �F�F 0 currentserver currentServerS X�EX r  )0YZY m  ),[[ �\\ 
 O t h e rZ o      �D�D 0 
currserver 
currServer�E  G ]^] l 11�C�B�A�C  �B  �A  ^ _`_ Z  1�abcda = 16efe o  14�@�@ 0 currentserver currentServerf o  45�?�? 0 
prodserver 
prodServerb r  9@ghg m  9<ii �jj  p r o d u c t i o nh o      �>�> 0 
currserver 
currServerc klk = CHmnm o  CF�=�= 0 currentserver currentServern o  FG�<�< 0 
testserver 
testServerl opo r  KRqrq m  KNss �tt  t e s tr o      �;�; 0 
currserver 
currServerp uvu = UZwxw o  UX�:�: 0 currentserver currentServerx o  XY�9�9 0 	devserver 	devServerv yzy r  ]d{|{ m  ]`}} �~~  d e v| o      �8�8 0 
currserver 
currServerz � = gn��� o  gj�7�7 0 currentserver currentServer� m  jm�� ���  � ��6� r  qx��� m  qt�� ���  B K U P� o      �5�5 0 
currserver 
currServer�6  d r  {���� m  {~�� ��� 
 O t h e r� o      �4�4 0 
currserver 
currServer` ��3� l ���2�1�0�2  �1  �0  �3    ��� l     �/�.�-�/  �.  �-  � ��� i   7 :��� I      �,��+�, :0 applicationshouldterminate_ applicationShouldTerminate_� ��*� o      �)�) 
0 sender  �*  �+  � k     �� ��� l     �(���(  � L F Insert code here to do any housekeeping before your application quits   � ��� �   I n s e r t   c o d e   h e r e   t o   d o   a n y   h o u s e k e e p i n g   b e f o r e   y o u r   a p p l i c a t i o n   q u i t s� ��'� L     �� n    ��� o    �&�&  0 nsterminatenow NSTerminateNow� m     �%
�% misccura�'  � ��� l     �$�#�"�$  �#  �"  � ��� l     �!� ��!  �   �  � ��� i   ; >��� I      ���� 0 
saveprefs_ 
savePrefs_� ��� o      �� 
0 sender  �  �  � k     ��� ��� O    ��� I    ���� "0 displayifneeded displayIfNeeded�  �  � o     �� 0 	thewindow 	theWindow� ��� O   ��� I    ���� *0 makefirstresponder_ makeFirstResponder_� ��� m    �
� 
msng�  �  � o    �� 0 prefswindow prefsWindow� ��� l   ����  �  �  � ��� O   0��� r   ' /��� I   ' -���� 0 objectforkey_ objectForKey_� ��� m   ( )�� ���  p r o d S e r v e r�  �  � o      �� 0 prodserverkey prodServerKey� o    $�
�
 0 defaults  � ��� O  1 B��� r   9 A��� I   9 ?�	���	 0 objectforkey_ objectForKey_� ��� m   : ;�� ���  t e s t S e r v e r�  �  � o      �� 0 testserverkey testServerKey� o   1 6�� 0 defaults  � ��� O  C T��� r   K S��� I   K Q���� 0 objectforkey_ objectForKey_� ��� m   L M�� ���  d e v S e r v e r�  �  � o      �� 0 devserverkey devServerKey� o   C H� �  0 defaults  � ��� O  U f��� r   ] e��� I   ] c������� 0 objectforkey_ objectForKey_� ���� m   ^ _�� ���  p r o d E n r o l l K e y��  ��  � o      ���� $0 prodenrollkeykey prodEnrollKeyKey� o   U Z���� 0 defaults  � ��� O  g x��� r   o w��� I   o u������� 0 objectforkey_ objectForKey_� ���� m   p q�� ���  t e s t E n r o l l K e y��  ��  � o      ���� $0 testenrollkeykey testEnrollKeyKey� o   g l���� 0 defaults  � ��� O  y ���� r   � ���� I   � �������� 0 objectforkey_ objectForKey_� ���� m   � ��� ���  d e v E n r o l l K e y��  ��  � o      ���� "0 devenrollkeykey devEnrollKeyKey� o   y ~���� 0 defaults  � ��� l  � ���������  ��  ��  � ��� r   � ���� l  � ������� c   � ���� o   � ����� 0 prodserverkey prodServerKey� m   � ���
�� 
TEXT��  ��  � o      ���� 0 
prodserver 
prodServer� ��� r   � �� � l  � ����� c   � � o   � ����� 0 testserverkey testServerKey m   � ���
�� 
TEXT��  ��    o      ���� 0 
testserver 
testServer�  r   � � l  � ����� c   � �	
	 o   � ����� 0 devserverkey devServerKey
 m   � ���
�� 
TEXT��  ��   o      ���� 0 	devserver 	devServer  r   � � l  � ����� c   � � o   � ����� $0 prodenrollkeykey prodEnrollKeyKey m   � ���
�� 
TEXT��  ��   o      ���� 0 prodenrollk prodEnrollK  r   � � l  � ����� c   � � o   � ����� $0 testenrollkeykey testEnrollKeyKey m   � ���
�� 
TEXT��  ��   o      ���� 0 testenrollk testEnrollK  r   � � l  � ����� c   � � o   � ����� "0 devenrollkeykey devEnrollKeyKey m   � ���
�� 
TEXT��  ��   o      ���� 0 
devenrollk 
devEnrollK  !  l  � ���������  ��  ��  ! "#" I  � ���$%
�� .sysodlogaskr        TEXT$ m   � �&& �'' " P r e f e r e n c e s   S a v e d% ��()
�� 
btns( m   � �** �++  O K) ��,��
�� 
dflt, m   � ����� ��  # -��- n  � �./. I   � ���0���� 0 	orderout_ 	orderOut_0 1��1  f   � ���  ��  / o   � ����� 0 prefswindow prefsWindow��  � 232 l     ��������  ��  ��  3 454 i   ? B676 I      ��8���� 0 	quittime_ 	quitTime_8 9��9 o      ���� 
0 sender  ��  ��  7 O    
:;: I   	������
�� .aevtquitnull��� ��� null��  ��  ;  f     5 <=< l     ��������  ��  ��  = >?> i   C F@A@ I      ��B���� 0 
openprefs_ 
openPrefs_B C��C o      ���� 
0 sender  ��  ��  A n    
DED I    
��F���� 0 orderfront_ orderFront_F G��G  f    ��  ��  E o     ���� 0 prefswindow prefsWindow? HIH l     ��������  ��  ��  I JKJ i   G JLML I      ��N����  0 setproduction_ setProduction_N O��O o      ���� 
0 sender  ��  ��  M k    �PP QRQ r     STS m     ��
�� boovtrueT n     UVU o    ���� 0 
workingnow 
workingNowV  f    R WXW r    YZY m    [[ �\\ 6 W o r k i n g . .   O n e   m o m e n t   p l e a s eZ n     ]^] o    
���� 0 
statustext 
statusText^  f    X _`_ O   aba I    �������� "0 displayifneeded displayIfNeeded��  ��  b o    ���� 0 	thewindow 	theWindow` cdc l   ��������  ��  ��  d efe Z    Xghi��g =   "jkj l    l����l c     mnm n   opo o    ���� 	0 title  p o    ���� 
0 sender  n m    ��
�� 
TEXT��  ��  k m     !qq �rr  P r o d u c t i o nh k   % ,ss tut r   % (vwv o   % &���� 0 
prodserver 
prodServerw o      ���� 0 newjss newJSSu x��x r   ) ,yzy o   ) *���� 0 prodenrollk prodEnrollKz o      ���� 0 	enrollkey 	enrollKey��  i {|{ =  / 6}~} l  / 4���� c   / 4��� n  / 2��� o   0 2���� 	0 title  � o   / 0���� 
0 sender  � m   2 3��
�� 
TEXT��  ��  ~ m   4 5�� ���  T e s t| ��� k   9 @�� ��� r   9 <��� o   9 :���� 0 
testserver 
testServer� o      ���� 0 newjss newJSS� ���� r   = @��� o   = >���� 0 testenrollk testEnrollK� o      ���� 0 	enrollkey 	enrollKey��  � ��� =  C J��� l  C H������ c   C H��� n  C F��� o   D F���� 	0 title  � o   C D���� 
0 sender  � m   F G��
�� 
TEXT��  ��  � m   H I�� ���  D e v e l o p m e n t� ���� k   M T�� ��� r   M P��� o   M N���� 0 	devserver 	devServer� o      ���� 0 newjss newJSS� ��� r   Q T��� o   Q R�~�~ 0 
devenrollk 
devEnrollK� o      �}�} 0 	enrollkey 	enrollKey�  ��  ��  f ��� l  Y Y�|�{�z�|  �{  �z  � ��� r   Y `��� b   Y \��� m   Y Z�� ��� 6 C h a n g i n g   J S S   E n r o l l m e n t   t o  � o   Z [�y�y 0 newjss newJSS� n     ��� o   ] _�x�x 0 
statustext 
statusText�  f   \ ]� ��� r   a h��� l  a f��w�v� c   a f��� n  a d��� o   b d�u�u 	0 title  � o   a b�t�t 
0 sender  � m   d e�s
�s 
TEXT�w  �v  � o      �r�r 0 newrole newRole� ��� O  i w��� I   q v�q�p�o�q "0 displayifneeded displayIfNeeded�p  �o  � o   i n�n�n 0 	thewindow 	theWindow� ��� l  x x�m�l�k�m  �l  �k  � ��� Q   x ����� I  { ��j��
�j .sysoexecTEXT���     TEXT� b   { ���� m   { ~�� ��� � c p   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f . p l i s t   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f .� o   ~ ��i�i 0 
currserver 
currServer� �h��g
�h 
badm� m   � ��f
�f boovtrue�g  � R      �e�d�c
�e .ascrerr ****      � ****�d  �c  � I  � ��b��a
�b .ascrcmnt****      � ****� m   � ��� ���  e r r o r   s t e p   1�a  � ��� Q   � ����� I  � ��`��
�` .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ��� P c p   / u s r / s b i n / j a m f   / u s r / s b i n / j a m f . b a c k u p .� o   � ��_�_ 0 
currserver 
currServer� �^��]
�^ 
badm� m   � ��\
�\ boovtrue�]  � R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y  � I  � ��X��W
�X .ascrcmnt****      � ****� m   � ��� ���  e r r o r   s t e p   2�W  � ��� Q   � ����� I  � ��V��
�V .sysoexecTEXT���     TEXT� m   � ��� ��� < / u s r / s b i n / j a m f   r e m o v e F r a m e w o r k� �U��T
�U 
badm� m   � ��S
�S boovtrue�T  � R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  � I  � ��O��N
�O .ascrcmnt****      � ****� m   � ��� ���  e r r o r   s t e p   3�N  � ��� Q   � ����� I  � ��M��
�M .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� \ c p   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f .� o   � ��L�L 0 
currserver 
currServer� m   � ��� ��� b   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f . p l i s t� �K��J
�K 
badm� m   � ��I
�I boovtrue�J  � R      �H�G�F
�H .ascrerr ****      � ****�G  �F  � I  � ��E��D
�E .ascrcmnt****      � ****� m   � ��� ���  e r r o r   s t e p   4�D  � ��� Q   %� � I �C
�C .sysoexecTEXT���     TEXT b   b  
 m   �		 2 c p   / u s r / s b i n / j a m f . b a c k u p . o  	�B�B 0 
currserver 
currServer m  


 �    / u s r / s b i n / j a m f �A�@
�A 
badm m  �?
�? boovtrue�@    R      �>�=�<
�> .ascrerr ****      � ****�=  �<   I %�;�:
�; .ascrcmnt****      � **** m  ! �  e r r o r   s t e p   5�:  �  Q  &C I )4�9
�9 .sysoexecTEXT���     TEXT m  ), � � d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f   a l l o w I n v a l i d C e r t i f i c a t e   - b o o l e a n   t r u e �8�7
�8 
badm m  /0�6
�6 boovtrue�7   R      �5�4�3
�5 .ascrerr ****      � ****�4  �3   I <C�2�1
�2 .ascrcmnt****      � **** m  <? �  e r r o r   s t e p   6�1    Q  Dc ! I GT�0"#
�0 .sysoexecTEXT���     TEXT" b  GL$%$ m  GJ&& �'' � d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f   j s s _ u r l   - s t r i n g  % o  JK�/�/ 0 newjss newJSS# �.(�-
�. 
badm( m  OP�,
�, boovtrue�-    R      �+�*�)
�+ .ascrerr ****      � ****�*  �)  ! I \c�()�'
�( .ascrcmnt****      � ****) m  \_** �++  e r r o r   s t e p   7�'   ,-, Q  d�./0. I gr�&12
�& .sysoexecTEXT���     TEXT1 m  gj33 �44 � d e f a u l t s   d e l e t e   / L i b r a r y / P r e f e r e n c e s / c o m . j a m f s o f t w a r e . j a m f   l a s t _ m a n a g e m e n t _ f r a m e w o r k _ c h a n g e _ i d2 �%5�$
�% 
badm5 m  mn�#
�# boovtrue�$  / R      �"�!� 
�" .ascrerr ****      � ****�!  �   0 I z��6�
� .ascrcmnt****      � ****6 m  z}77 �88  e r r o r   s t e p   8�  - 9:9 l ������  �  �  : ;<; r  ��=>= m  ��?? �@@ Z S e t t i n g s   c h a n g e d .     R u n n i n g   R e - e n r o l l m e n t   n o w .> n     ABA o  ���� 0 
statustext 
statusTextB  f  ��< CDC Z ��EF��E = ��GHG l ��I��I c  ��JKJ o  ���� 0 	runpolicy 	runPolicyK m  ���
� 
TEXT�  �  H c  ��LML m  ��NN �OO  t r u eM m  ���
� 
TEXTF r  ��PQP m  ��RR �SS   Q o      �� 0 dopolicy doPolicy�  �  D TUT Z ��VW��V = ��XYX l ��Z��Z c  ��[\[ o  ���� 0 	runpolicy 	runPolicy\ m  ���
� 
TEXT�  �  Y c  ��]^] m  ��__ �`` 
 f a l s e^ m  ���
� 
TEXTW r  ��aba m  ��cc �dd    - n o P o l i c y  b o      �
�
 0 dopolicy doPolicy�  �  U efe Z ��gh�	�g = ��iji l ��k��k c  ��lml o  ���� 0 runinventory runInventorym m  ���
� 
TEXT�  �  j c  ��non m  ��pp �qq  t r u eo m  ���
� 
TEXTh r  ��rsr m  ��tt �uu   s o      �� 0 	do2policy 	do2Policy�	  �  f vwv Z ��xy�� x = ��z{z l ��|����| c  ��}~} o  ������ 0 runinventory runInventory~ m  ����
�� 
TEXT��  ��  { c  ��� m  ���� ��� 
 f a l s e� m  ����
�� 
TEXTy r  ����� m  ���� ���    - n o R e c o n  � o      ���� 0 	do2policy 	do2Policy�  �   w ��� Z �������� = ����� l �������� c  ����� o  ������ 0 	runmanage 	runManage� m  ����
�� 
TEXT��  ��  � c  ����� m  ���� ���  t r u e� m  ����
�� 
TEXT� r  ��� m  �� ���   � o      ���� 0 	do3policy 	do3Policy��  ��  � ��� Z %������� = ��� l ������ c  ��� o  ���� 0 	runmanage 	runManage� m  ��
�� 
TEXT��  ��  � c  ��� m  �� ��� 
 f a l s e� m  ��
�� 
TEXT� r  !��� m  �� ���    - n o M a n a g e  � o      ���� 0 	do3policy 	do3Policy��  ��  � ��� l &&������  �  Do Enrollment   � ���  D o   E n r o l l m e n t� ��� r  &[��� b  &Y��� b  &W��� b  &U��� b  &S��� b  &O��� b  &I��� b  &E��� b  &?��� b  &;��� b  &5��� b  &1��� b  &/��� b  &+��� m  &)�� ��� D / u s r / s b i n / j a m f   c r e a t e C o n f   - k   - u r l  � o  )*���� 0 newjss newJSS� m  +.�� ��� F ; / u s r / s b i n / j a m f   e n r o l l   - i n v i t a t i o n  � o  /0���� 0 	enrollkey 	enrollKey� m  14�� ���    - e n d U s e r n a m e   "� o  5:���� 0 userid userID� m  ;>�� ���  "   - r e a l n a m e   "� o  ?D���� 0 fullname fullName� m  EH�� ���  "   - e m a i l   "� o  IN���� 0 	emailaddr 	emailAddr� m  OR�� ��� > "   - l d a p S e r v e r I D   1   - u s e r I D   " - 1 "  � o  ST���� 0 dopolicy doPolicy� o  UV���� 0 	do2policy 	do2Policy� o  WX���� 0 	do3policy 	do3Policy� o      ���� 0 shellstring shellString� ��� Q  \����� I _h����
�� .sysoexecTEXT���     TEXT� l _`������ o  _`���� 0 shellstring shellString��  ��  � �����
�� 
badm� m  cd��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  p��� ��� I p�����
�� .sysodlogaskr        TEXT� m  ps�� ��� � A n   e r r o r   o c c u r e d   d u r i n g   r e e n r o l l m e n t .   E n r o l l   t h i s   c o m p u t e r   m a n u a l l y   a n d   t r y   a g a i n   l a t e r .� ����
�� 
btns� m  vy�� ���  O K� �����
�� 
dflt� m  |}���� ��  � ��� r  ����� m  ����
�� boovfals� n     ��� o  ������ 0 
workingnow 
workingNow�  f  ��� ��� r  ����� m  ���� ��� 0 E r r o r   d u r i n g   e n r o l l m e n t .� n     ��� o  ������ 0 
statustext 
statusText�  f  ��� ����  S  ����  � ��� l ����������  ��  ��  � ��� r  ��   b  �� m  �� � * U p d a t i n g   l o c a l   F i l e s   l ������ c  �� n ��	
	 o  ������ 	0 title  
 o  ������ 
0 sender   m  ����
�� 
TEXT��  ��   n      o  ������ 0 
statustext 
statusText  f  ���  O �� I  ���������� "0 displayifneeded displayIfNeeded��  ��   o  ������ 0 	thewindow 	theWindow  l ����������  ��  ��    Q  �� t  �� r  �� l ������ I ����
�� .sysoexecTEXT���     TEXT m  �� �   ~ / u s r / s b i n / j a m f   c h e c k J S S C o n n e c t i o n   |   g r e p   h t t p s   |   c u t   - d   " / "   - f 3 ��!��
�� 
badm! m  ����
�� boovtrue��  ��  ��   n     "#" o  ������ 0 	jssserver 	jssServer#  f  �� m  ������  R      ������
�� .ascrerr ****      � ****��  ��   r  ��$%$ m  ��&& �''  % n     ()( o  ������ 0 	jssserver 	jssServer)  f  �� *+* l ����������  ��  ��  + ,-, r  ��./. b  ��010 m  ��22 �33 : S u c c e s s f u l l y   e n r o l l e d   i n   J S S .1 l ��4����4 c  ��565 n ��787 o  ������ 	0 title  8 o  ������ 
0 sender  6 m  ����
�� 
TEXT��  ��  / n     9:9 o  ������ 0 
statustext 
statusText:  f  ��- ;<; r  ��=>= m  ����
�� boovfals> n     ?@? o  ������ 0 
workingnow 
workingNow@  f  ��< A��A l ����������  ��  ��  ��  K B��B l     ��������  ��  ��  ��  ��       ��CD��  C ���� 0 appdelegate AppDelegateD �� "EF�� 0 appdelegate AppDelegateE GG ����H
�� misccura
�� 
pclsH �II  N S O b j e c tF ��J�� - 2 7 < A��������������KLMNOP��  J ����������������������������������~�}
�� 
pare�� 0 	jssserver 	jssServer�� 0 
statustext 
statusText�� 0 userid userID�� 0 	emailaddr 	emailAddr�� 0 fullname fullName�� 0 
workingnow 
workingNow�� 0 	runpolicy 	runPolicy�� 0 runinventory runInventory�� 0 	runmanage 	runManage�� 0 defaults  �� 0 	thewindow 	theWindow�� 0 prefswindow prefsWindow�� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�� :0 applicationshouldterminate_ applicationShouldTerminate_�� 0 
saveprefs_ 
savePrefs_� 0 	quittime_ 	quitTime_�~ 0 
openprefs_ 
openPrefs_�}  0 setproduction_ setProduction_��  
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� 
msng
�� 
msng
�� 
msngK �| ��{�zQR�y�| B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�{ �xS�x S  �w�w 0 anotification aNotification�z  Q �v�u�t�s�r�q�p�v 0 anotification aNotification�u 0 prodserverkey prodServerKey�t 0 testserverkey testServerKey�s 0 devserverkey devServerKey�r $0 prodenrollkeykey prodEnrollKeyKey�q $0 testenrollkeykey testEnrollKeyKey�p "0 devenrollkeykey devEnrollKeyKeyR ,�o�n�m�l ��k ��j ��i�h�g ��f�e�d�c�b ��a ��` ��_ � ��^�]�\�[O�ZV[�Yis}���
�o misccura�n  0 nsuserdefaults NSUserDefaults�m ,0 standarduserdefaults standardUserDefaults�l 0 
prodserver 
prodServer�k 0 
testserver 
testServer�j 0 	devserver 	devServer�i �h &0 registerdefaults_ registerDefaults_�g 
�f 
badm
�e .sysoexecTEXT���     TEXT�d 0 	jssserver 	jssServer�c  �b  �a 0 
workingnow 
workingNow�` 0 
statustext 
statusText�_ 0 objectforkey_ objectForKey_
�^ 
TEXT�] 0 prodenrollk prodEnrollK�\ 0 testenrollk testEnrollK�[ 0 
devenrollk 
devEnrollK�Z 0 currentserver currentServer�Y 0 
currserver 
currServer�y���, *j+ Ec  
UOb  
 *�������k+ 
UO �n��el )�,FoW X  a )�,FOf)a ,FOa )a ,FOb  
 *a k+ E�UOb  
 *a k+ E�UOb  
 *a k+ E�UOb  
 *a k+ E�UOb  
 *a k+ E�UOb  
 *a k+ E�UO�a &E�O�a &E�O�a &E�O�a &E` O�a &E` O�a &E`  O a !j E` "W X  a #E` "Oa $E` %O_ "�  a &E` %Y A_ "�  a 'E` %Y /_ "�  a (E` %Y _ "a )  a *E` %Y 	a +E` %OPL �X��W�VTU�U�X :0 applicationshouldterminate_ applicationShouldTerminate_�W �TV�T V  �S�S 
0 sender  �V  T �R�R 
0 sender  U �Q�P
�Q misccura�P  0 nsterminatenow NSTerminateNow�U ��,EM �O��N�MWX�L�O 0 
saveprefs_ 
savePrefs_�N �KY�K Y  �J�J 
0 sender  �M  W �I�H�G�F�E�D�C�I 
0 sender  �H 0 prodserverkey prodServerKey�G 0 testserverkey testServerKey�F 0 devserverkey devServerKey�E $0 prodenrollkeykey prodEnrollKeyKey�D $0 testenrollkeykey testEnrollKeyKey�C "0 devenrollkeykey devEnrollKeyKeyX �B�A�@��?������>�=�<�;�:�9�8&�7*�6�5�4�3�B "0 displayifneeded displayIfNeeded
�A 
msng�@ *0 makefirstresponder_ makeFirstResponder_�? 0 objectforkey_ objectForKey_
�> 
TEXT�= 0 
prodserver 
prodServer�< 0 
testserver 
testServer�; 0 	devserver 	devServer�: 0 prodenrollk prodEnrollK�9 0 testenrollk testEnrollK�8 0 
devenrollk 
devEnrollK
�7 
btns
�6 
dflt�5 
�4 .sysodlogaskr        TEXT�3 0 	orderout_ 	orderOut_�L �b   *j+  UOb   *�k+ UOb  
 
*�k+ E�UOb  
 
*�k+ E�UOb  
 
*�k+ E�UOb  
 
*�k+ E�UOb  
 
*�k+ E�UOb  
 
*�k+ E�UO��&E�O��&E�O��&E�O��&E�O��&E�O��&E` Oa a a a ka  Ob  )k+ N �27�1�0Z[�/�2 0 	quittime_ 	quitTime_�1 �.\�. \  �-�- 
0 sender  �0  Z �,�, 
0 sender  [ �+
�+ .aevtquitnull��� ��� null�/ ) *j  UO �*A�)�(]^�'�* 0 
openprefs_ 
openPrefs_�) �&_�& _  �%�% 
0 sender  �(  ] �$�$ 
0 sender  ^ �#�# 0 orderfront_ orderFront_�' b  )k+  P �"M�!� `a��"  0 setproduction_ setProduction_�! �b� b  �� 
0 sender  �   ` ��������� 
0 sender  � 0 newjss newJSS� 0 	enrollkey 	enrollKey� 0 newrole newRole� 0 dopolicy doPolicy� 0 	do2policy 	do2Policy� 0 	do3policy 	do3Policy� 0 shellstring shellStringa H�[����q��������
���	�������������
&*37?NR_cpt������������������ �����&2� 0 
workingnow 
workingNow� 0 
statustext 
statusText� "0 displayifneeded displayIfNeeded� 	0 title  
� 
TEXT� 0 
prodserver 
prodServer� 0 prodenrollk prodEnrollK� 0 
testserver 
testServer� 0 testenrollk testEnrollK� 0 	devserver 	devServer�
 0 
devenrollk 
devEnrollK�	 0 
currserver 
currServer
� 
badm
� .sysoexecTEXT���     TEXT�  �  
� .ascrcmnt****      � ****
� 
btns
� 
dflt� 
�  .sysodlogaskr        TEXT�� �� 0 	jssserver 	jssServer��e)�,FO�)�,FOb   *j+ UO��,�&�  �E�O�E�Y +��,�&�  �E�O�E�Y ��,�&�  �E�O�E�Y hO�%)�,FO��,�&E�Ob   *j+ UO a _ %a el W X  a j O a _ %a el W X  a j O a a el W X  a j O a _ %a %a el W X  a j O a _ %a  %a el W X  a !j O a "a el W X  a #j O a $�%a el W X  a %j O a &a el W X  a 'j Oa ()�,FOb  �&a )�&  
a *E�Y hOb  �&a +�&  
a ,E�Y hOb  �&a -�&  
a .E�Y hOb  �&a /�&  
a 0E�Y hOb  	�&a 1�&  
a 2E�Y hOb  	�&a 3�&  
a 4E�Y hOa 5�%a 6%�%a 7%b  %a 8%b  %a 9%b  %a :%�%�%�%E�O �a el W *X  a ;a <a =a >ka ? @Of)�,FOa A)�,FOOa B��,�&%)�,FOb   *j+ UO a Cna Da el )a E,FoW X  a F)a E,FOa G��,�&%)�,FOf)�,FOPascr  ��ޭ