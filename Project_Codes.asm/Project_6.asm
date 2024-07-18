org 100h 

lea si,alphabet
mov di,2000h
mov cx,26
rep 
movsb 

lea si,TERMINATE 
mov di,3000h
mov cx,9
rep
movsb
 
MAIN:

    mov DI,0 
    mov CX,0
    mov DX, OFFSET MSG
    mov AH,9
    int 21H
     
    getword:
    mov AH,00
    int 16H 
    cmp AL,0DH
    je STARTERMINATE
    mov AH,0EH
    int 10H  
    mov ARR[DI],Al  
    inc DI 
    inc CX 
    jmp GETWORD
                              
    STARTERMINATE:
    mov di,0
    mov si,3000h 
    mov dx,cx
    mov cx,9
    
    terminated:
    mov bh,arr[di]
    mov bl,[si]
    cmp bl,bh
    jne print
    inc si 
    inc di
    
    Loop terminated
    jmp END
    
    print: 
    mov cx,dx
    MOV DI,2000h
    mov DX, OFFSET greater
    mov AH,9
    int 21H 
    mov bp,0
    
        CONTROL1:
        mov ah,0         
        mov al,arr[bp]
        cmp ax,41h
        dec dx
        ja CONTROL2
        dec cx
        inc bp
        cmp al,0
        je CONTINUE
        jmp CONTROL1 
        
           CONTROL2:
           cmp ax,5Bh
            jb CONTROL3
            dec cx 
            dec dx
            inc bp 
            jmp CONTROL1
        
                CONTROL3:
                cmp al,[di]
                je TRUE
                inc di
                dec cx 
                dec dx
                inc bp
                jne CONTROL1
            
                    TRUE:
                    inc di
                    mov AL, arr[bp]
                    mov AH,0EH
                    int 10H
                     
                    mov AL, ','
                    mov AH,0EH
                    int 10H
                    inc bp

                    jmp CONTROL1
    CONTINUE:
    mov DX, OFFSET greater
    mov AH,9
    int 21H 

    inc cx
    add cx,'0'
    mov al,cl
    mov AH,0EH
    int 10H
    
    mov al, 0ah         ;alt satira gec
    mov ah, 0eh
    int 10h
    
    mov al, 13          ;satir basina gec
    mov ah, 0eh
    int 10h
    
    mov bx,0
    mov cx,26
    ClearLoop:
    
    mov arr[bx],0
    inc bx 
    Loop ClearLoop
    
call main

END:
        
ret
 
arr db 26 DUP(0) 
msg db "ENTER INPUT:$"
greater DB " > $"
alphabet db "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
TERMINATE db "TERMINATE"
