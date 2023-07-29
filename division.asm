include 'emu8086.inc'


.stack 100h
.model small



.data                                       ; for variable declaration



.code 


    main proc
        
        mov al, 9                           ; operand 1
        
        mov bl, 4                           ; operand 2
        
        div bl
        
        mov dl, al
        add dl, 48                          ; quotient
        mov bl, ah
        add bl, 48                          ; remainder
        
        print ' Q : '
        
        mov ah, 02h
        int 21h
        
        mov dl, 10
        mov ah, 02h
        int 21h
        
        mov dl, 13
        mov ah, 02h
        int 21h
        
        print ' R : '
        
        mov dl, bl
        mov ah, 02h
        int 21h
        
        
     mov ah, 04ch
     int 21h 
        
        
        
        
        
    main endp
    
    
    
end main