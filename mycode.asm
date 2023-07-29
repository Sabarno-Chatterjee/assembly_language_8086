include 'emu8086.inc'

.stack 100h
.model small


.data

string db 'PowderSnow'

.code 


    main proc
        
        mov ax, @data
        mov ds, ax
        
        
        mov si, offset string
        
        mov cx, 10                      ; count to implement the loop
        
        loop1:
            
            mov bx, [si]
            push bx
            inc si
            
            loop loop1 
            
        mov cx, 10
            
        loop2:
        
            pop dx
            mov ah, 02h
            int 21h
            
            loop loop2
            
      mov ah, 04ch
      int 21h
            
    
    main endp
    
end main