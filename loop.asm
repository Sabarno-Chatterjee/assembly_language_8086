include 'emu8086.inc'



.stack 100h
.model small                        


.data



.code


    main proc       
        
        
        mov cx, 3              ; loop counter
        
        start:                      ; loop label
        
            print 'Hello world!'
            
            mov dl, 10
            mov ah, 02h
            int 21h
            
            mov dl, 13
            mov ah, 02h
            int 21h
            
            
            
        loop start
        
     mov ah, 04ch
     int 21h
        
        
        
    main endp
    
    
end main