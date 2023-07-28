include 'emu8086.inc'

.model small
.stack 100h


.data
     
     n db ?


.code

    mov ax, @data
    mov ds, ax

    main proc
       print 'Enter your character : '
       
       mov ah, 01h
       int 21h      ; user input
       
       mov n, al
       
       mov dl, 10
       mov ah, 02h
       int 21h      ; new line
       
       mov dl, 13
       mov ah, 02h
       int 21h      ; carriage return
       
       print  'Your character is : '
       mov dl, n
       mov ah, 02h
       int 21h
     
      mov ah, 04ch
      int 21h
        
        
        
        
    main endp
    
    
end main 