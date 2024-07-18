#Mehmet Utku Kaya
org 100h  
    
lea si, mc
mov di, 2500h 

mov cx, 14  

rep movsb
 
mov si, 250Dh 
mov di, 3000h

mov cx,14  
           
reverse_loop:
    std 
    lodsb
    cld  
    stosb  
Loop reverse_loop  
    
mov si, 3000h
mov di, 2500h  
         
mov cx,14
         
rep movsb
    
ret 
mc dw 'MICROCOMPUTERS'
