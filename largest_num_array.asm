include 'emu8086.inc'

.stack 100h

.model small

.data

ARRAY db 3, 4, 7, 7, 5, 2

.code 

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset ARRAY        ; for index
        
        mov bl, [si]                ; assuming bl is the largest 
        
        mov cx, 6
        
        loop1:
        
            cmp [si], bl
            
            jge update
                
                resume:
                inc si
                loop loop1
            
            print 'Largest : '
            
            mov dl, bl
            add dl, 48
            mov ah, 02h
            int 21h
          
            update:
                
                mov bl, [si]
                jmp resume
        
    main endp
    
end main