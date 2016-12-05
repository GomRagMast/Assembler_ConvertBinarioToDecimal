org 100h
;Alumno 1 
mov bl, 03h
lea bp, name1 
mov x, 30
call Nombre 
call SaltaLinea 
;Alumno 2
mov bl, 06h  
lea bp, name2
mov x, 27  
inc y
call Nombre     
call SaltaLinea 
ret    
;--------------Imprime nombres-----------------
Nombre:
      mov ah, 19
      mov cx, x
      mov dh, y
      ;lea bp, name1
      int 10h
saltar:

ret  
;--------------salto de linea------------------
SaltaLinea:
    mov al, 0ah
    mov ah, 0eh
    int 10h
    mov al, 0Dh
    mov ah, 0eh    
    int 10h
ret
;--------------Variables-----------------------
name1 db "Rafael Antonio Gomez Roncancio$"     
name2 db "Maria Camila Ponguta Vargas$"        
x dw 0   
y db 2                                            ;Recorrido a la cadena 1         
logo db ""