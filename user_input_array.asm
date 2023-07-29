; user input into array

include 'emu8086.inc'

.stack 100h

.model small

.data

array db 4 dup(?)

.code 

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset array
        
        mov cx, 4
        
        loop1:
        
            print 'Enter : '
            mov ah, 01h
            int 21h
            
            mov [si], al
            
            inc si
            call new_line
            
            loop loop1
          
         call new_line 
         
         mov si, offset array
           
         
         
         print 'Array : '
         mov cx, 4
         
         loop2:
    
            mov dl, [si]
            mov ah, 02h
            int 21h
            
            call space
            inc si
            
            loop loop2
            
         
            
        
        
    main endp
    
    new_line proc
         
         mov dl, 10
         mov ah, 02h
         int 21h
         
         mov dl, 13
         mov ah, 02h
         int 21h
         
         ret
        
        
    new_line endp
    
    space proc
        
         mov dl, 32
         mov ah, 02h
         int 21h
         
         ret
         
    space endp
    
end main