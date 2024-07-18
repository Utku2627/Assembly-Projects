#Mehmet Utku Kaya
#start=Emulation Kit.exe#
#make_bin#

main:
mov dx, 2014h
mov cx, 2
lp:
lea si, U_matrix
call print
lea si, T_matrix
call print    
lea si, K_matrix
call print
lea si, U_matrix
call print
loop lp

mainloop:    

        MOV CX, 0Ah
        WAIT:
        LOOP WAIT


    mov bl, [2000h]        ;2000 dekini tut
    
    mov al, [2027h] 
    mov dx, 2000h
    out dx, al             ;2027 dekini 2000e cikart
    
    mov di, dx             
    mov [di], al
    mov dx, 2026h
    mov si, dx             ;si ve dx i 2026 ya al 
    mov cx, 26h    
    slideloop:
     mov al, [si]
     inc dx
     inc si   
     out dx, al            ;2026 yi 2027 ye cikart
     mov di, dx
     mov [di], al   
     sub dx, 2
     sub si, 2
    loop slideloop
    mov dx, 2001h
    mov al, bl
    out dx, al             ;2000 dekini 2001 e cikart
    mov di, dx
    mov [di], al   
    jmp mainloop    

ret    

print proc 
    push cx
    mov cx, 5
    mov bp, 0
    printloop:
        mov al, bp[si]
        out dx, al
        mov di, dx
        mov [di], al
        inc bp
        inc dx
    loop printloop
    pop cx
ret
print endp

E_matrix DB 01111111b, 01001001b, 01001001b, 01001001b, 01000001b  ; E
S_matrix DB 00100110b, 01001001b, 01001001b, 01001001b, 00110010b  ; S   
U_matrix DB 01111111b, 01000000b, 01000000b, 01000000b, 01111111b  ; U
T_matrix DB 00000001b, 00000001b, 01111111b, 00000001b, 00000001b  ; T
K_matrix DB 01111111b, 00001000b, 00010100b, 00100010b, 01000001b  ; K

