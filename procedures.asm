include 'emu8086.inc'

.stack 100h
.model small

.data

ARRAY db 7, 8, 1, 2, 8

.code 

    main proc 
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset ARRAY
        
        mov bl, [si]
        
        mov cx, 5
        
        loop1:
        
            cmp [si], bl
            
            jle update
            
                resume: 
                inc si
                loop loop1
                
         print 'Smallest = '
         
         mov dl, bl
         add dl, 48
         mov ah, 02h
         int 21h
                
            update:
                
                mov bl, [si]
                jmp resume
                
         
         
      mov ah, 04ch
      int 21h
        
        
        
    main endp
    
    
end main