#Mehmet Utku Kaya
org 100h

lea si,array  
mov di,2000h

mov cx,15

rep 
movsb

call SORT
call COPY       
call PRINT 
 
ret

SORT PROC

mov cx,14
mov dx,15                  
outer_Loop:
    push cx
    mov di,2000h
    
        inner_Loop:
         
            mov al,[di]
            mov ah,[di+1h]

            cmp al, ah

            jl swap
             
            mov [di+1],al
            mov [di],ah
            jmp inner_Loop
            
            swap:
        
            mov bh,ah
            mov bl,al
            mov al,bh
            mov ah,bl

            mov [di],al
            mov [di+1],ah
            inc di
                
        Loop inner_Loop
        
    mov di,2000h
    pop cx
    dec dx
    mov cx, dx
        
Loop outer_Loop        
    
   ret       
SORT ENDP 


COPY PROC 
    
    mov si,2000h
    mov di,3000h
    
    mov cx,15
    
    rep
    movsb
    
    ret
COPY ENDP


PRINT PROC
    mov cx, 15       
    mov si, 3000h    

    LoopPrint:
              
    mov ah,0eh
    mov al,[si]
    int 10h
    inc si
              
    Loop LoopPrint   

    ret              
PRINT ENDP

array db 'E98A32F75C641BD'
