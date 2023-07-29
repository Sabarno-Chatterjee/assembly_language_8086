include 'emu8086.inc'


.stack 100h
.model small


.data

array1 db 2, 4, 5, 6
array2 db 2, 4, 9, 6


.code


    main proc
        
        mov ax, @data
        mov ds, ax
        
        
        mov si,offset array1            ; stored the address of the first element of the array into source index
        mov di,offset array2            ; stored the address of the first element of the array into destination index
        
        mov cx, 4
        
            loopx:
            
            
                mov al, [si]
                mov bl, [di]
                
                cmp al, bl
                
           
                jne notsame
                
                    
                inc si
                inc di
                
                loop loopx
                
                print 'Both are same'
                mov ah, 04ch
                int 21h
                
             notsame:
                    
                    print 'Not same'
                    mov ah, 04ch
                    int 21h
        
        
    main endp
    
    
end main