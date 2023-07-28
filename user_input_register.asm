include 'emu8086.inc'

.stack 100h
.model small


.data



.code


    main proc
        print 'Enter a character :'  
        
        mov ah, 01h
        int 21h         ; User input
        
        mov bl, al      ; Move char from al to bl
        
        mov dl, 10
        mov ah, 02h
        int 21h         ; new line
        
        mov dl, 13
        mov ah, 02h
        int 21h         ; carriage return 
        
        print 'Your character :'
        
        mov dl, bl
        mov ah, 02h
        int 21h         ; print
        
        
        
    main endp
    
    
    
end main