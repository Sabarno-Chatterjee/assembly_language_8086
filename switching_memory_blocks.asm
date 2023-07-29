; Write an Assembly language program in 8086 to move a block of bytes from one memory block to another. make suitable assumptions.

include 'emu8086.inc'

.stack 100h

.model small

.data

array1 db 4, 3, 5, 6         
array2 db 4 dup(?)

.code 


    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset array1
        mov di, offset array2
        
        mov cx, 4
        
        loop1:
            
            mov al, [si]
            mov [di], al
            
            inc si
            inc di
            
            loop loop1
            
        mov di, offset array2
                
        print 'array2 : '        
        mov cx, 4
        
        loop2:
        
            mov dl, [di]
            add dl, 48
            mov ah, 02h
            int 21h
            
            mov dl, 32
            mov ah, 02h
            int 21h
            
            inc di
            
            loop loop2
            
      mov ah, 04ch
      int 21h
        
        
    main endp
    
end main