org 100h

mov ax, 76cdh
mov bx, 98abh
mov [2500h],ax
mov [2502h],bx
mov ax,32ffh
mov bx,54efh
mov [2508h],ax
mov [250Ah],bx

mov ax, 32FFh                        
mov bx, 76cdh                                      
mul bx
mov [3000h], dh                      
mov [3001h], dl                 
mov [3002h], ah                    
mov [3003h], al
mov [2511h], ah
mov [2510h], al

mov ax, 32ffh
mov bx, 98abh
mul bx
mov [3010h], dh
mov [3011h], dl    
mov [3012h], ah
mov [3013h], al
 
mov ax, 54efh
mov bx, 76cdh
mul bx        
mov [3020h], dh
mov [3021h], dl     
mov [3022h], ah
mov [3023h], al 

mov ax, 54efh
mov bx, 98abh
mul bx
mov [3030h], dh      
mov [3031h], dl
mov [3032h], ah     
mov [3033h], al
mov [2517h], dh
mov [2516h], dl  
   
mov ah ,[3000h]
mov al ,[3001h]      
mov bh ,[3012h]
mov bl, [3013h]
add ax, bx 
mov bh, [3022h]
mov bl, [3023h] 
add ax,bx
mov [2513h],ah
mov [2512h],al

mov ah, [3010h]
mov al, [3011h]
mov bh, [3020h]
mov bl, [3021h]
add ax,bx
mov bh, [3032h]
mov bl, [3033h]
add ax,bx
mov [2515h], ah
mov [2514h], al

ret
