 #   l o a d   d a t a 
 h p c   < -   r e a d . c s v ( " ~ / W o r k s p a c e s / R / e x d a t a / h o u s e h o l d _ p o w e r _ c o n s u m p t i o n . t x t " ,   s e p = " ; " ,   n a . s t r i n g s = " ? " ,   s t r i n g s A s F a c t o r s = F A L S E ) 
 #   t h e   f o r m a t   o f   d a t e   i s   1 / 2 / 2 0 0 7   i n s t e a d   o f   0 1 / 0 2 / 2 0 0 7   h e r e 
 g o o d _ i d x   < -   h p c $ D a t e   = =   " 1 / 2 / 2 0 0 7 "   |   h p c $ D a t e   = =   " 2 / 2 / 2 0 0 7 " 
 g o o d _ h p c   < -   h p c [ g o o d _ i d x , ] 
 r m ( h p c ) 
 b e t t e r _ h p c   < -   g o o d _ h p c 
 r m ( g o o d _ i d x ) 
 b e t t e r _ h p c $ D a t e   < -   a s . D a t e ( g o o d _ h p c $ D a t e ,   " % d / % m / % Y " ) 
 b e t t e r _ h p c $ T i m e   < -   s t r p t i m e ( p a s t e ( g o o d _ h p c $ D a t e ,   g o o d _ h p c $ T i m e ) ,   " % d / % m / % Y   % H : % M : % S " ) 
 r m ( g o o d _ h p c ) 
 
 #   P l o t   1 
 p n g ( f i l e n a m e   =   " p l o t 1 . p n g " ,   w i d t h   =   4 8 0 ,   h e i g h t   =   4 8 0 ,   u n i t s   =   " p x " ,   b g   =   " t r a n s p a r e n t " ) 
 h i s t ( b e t t e r _ h p c $ G l o b a l _ a c t i v e _ p o w e r ,   x l a b   =   " G l o b a l   A c t i v e   P o w e r   ( k i l o w a t t s ) " ,   m a i n   =   " G l o b a l   A c t i v e   P o w e r " ,   c o l   =   " r e d " ,   y l i m   =   c ( 0 , 1 2 0 0 ) ) 
 d e v . o f f ( ) 
 
 r m ( b e t t e r _ h p c ) 
