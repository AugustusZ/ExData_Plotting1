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
 #   P l o t   4 
 p n g ( f i l e n a m e   =   " p l o t 4 . p n g " ,   w i d t h   =   4 8 0 ,   h e i g h t   =   4 8 0 ,   u n i t s   =   " p x " ,   b g   =   " t r a n s p a r e n t " ) 
 p a r ( m f c o l   =   c ( 2 , 2 ) ) 
 
 #   s u b p l o t   1 
 w i t h ( b e t t e r _ h p c ,   p l o t ( T i m e ,   G l o b a l _ a c t i v e _ p o w e r ,   t y p e   =   " l " ,   y l a b   =   " G l o b a l   A c t i v e   P o w e r " ,   x l a b   =   N A ) ) 
 
 #   s u b p l o t   2 
 w i t h ( b e t t e r _ h p c ,   p l o t ( T i m e ,   S u b _ m e t e r i n g _ 1 ,   c o l   =   " b l a c k " ,   t y p e   =   " l " ,   y l a b   =   " E n e r g y   s u b   m e t e r i n g " ,   x l a b   =   N A ) ) 
 w i t h ( b e t t e r _ h p c ,   l i n e s ( T i m e ,   S u b _ m e t e r i n g _ 2 ,   c o l   =   " r e d " ) ) 
 w i t h ( b e t t e r _ h p c ,   l i n e s ( T i m e ,   S u b _ m e t e r i n g _ 3 ,   c o l   =   " b l u e " ) ) 
 l e g e n d ( " t o p r i g h t " ,   b o x . l t y   =   0 ,   l t y   =   1 ,   c o l   =   c ( " b l a c k " ,   " r e d " ,   " b l u e " ) ,   l e g e n d   =   c ( " S u b _ m e t e r i n g _ 1 " ,   " S u b _ m e t e r i n g _ 2 " ,   " S u b _ m e t e r i n g _ 3 " ) ) 
 
 #   s u b p l o t   3 
 w i t h ( b e t t e r _ h p c ,   p l o t ( T i m e ,   V o l t a g e ,   t y p e   =   " l " ,   y l a b   =   " V o l t a g e " ,   x l a b   =   " d a t e t i m e " ) ) 
 
 #   s u b p l o t   4 
 w i t h ( b e t t e r _ h p c ,   p l o t ( T i m e ,   G l o b a l _ r e a c t i v e _ p o w e r ,   t y p e   =   " l " ,   y l a b   =   " G l o b a l _ r e a c t i v e _ p o w e r " ,   x l a b   =   " d a t e t i m e " ) ) 
 
 d e v . o f f ( ) 
 
 r m ( b e t t e r _ h p c ) 
