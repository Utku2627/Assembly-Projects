#Mehmet Utku Kaya

org 100h
                  
lea bx,mc

mov cx,14 

mov ax,2000h
mov si,ax  

Loop1: 
                
 mov dl,[bx]               
 mov [si],dl  
 
 push dx
 
 inc ax
 inc bx 
 
 mov si,ax 
 
 Loop Loop1
 
mov ax,2000h
mov si,ax
 
mov cx,14
 
Loop2:
 
 pop dx
 mov [si],dx
 
 inc ax
 
 mov si,ax 
 
 Loop Loop2



mc dw 'MICROCOMPUTERS'                    
                           
ret
