include 'emu8086.inc'


.stack 100h
.model small



.data               ; for variable declaration




.code


    main proc
        
        print 'Enter the first 8-bit number : '     ; User input 1
        
        mov ah, 01h
        int 21h
        sub al, 48
        
        mov bl, al                                  ; Storing it into bl register
        
        mov dl, 10
        mov ah, 02h
        int 21h                                     ; for new line
        
        
        mov dl, 13
        mov ah, 02h
        int 21h                                     ; for carriage return
        
        print 'Enter the second 8-bit number : '               ; User input 2
        
        mov ah, 01h
        int 21h
        sub al, 48
        
        mul bl                                      ; processes as al = al * bl
        
        mov bl, al
        add bl, 48                                  ; to get ascii of the product
        
        mov dl, 10
        mov ah, 02h
        int 21h
        
        
        mov dl, 13
        mov ah, 02h
        int 21h
        
        print 'Product : '
        
        mov dl, bl
        mov ah, 02h
        int 21h
        
        
     mov ah, 04ch
     int 21h 
        
     
        
        
    main endp
    
    
    
end main    