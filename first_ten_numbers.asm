include 'emu8086.inc'


.stack 100h
.model small


.data


.code


    main proc
        
        mov bl, 1
        
        mov cx, 10
        
        start:
        
        
        
             mov dl, bl
             add dl, 48
             mov ah, 02h
             int 21h
        
             mov dl, 10
             mov ah, 02h
             int 21h
        
        
             mov dl, 13
             mov ah, 02h
             int 21h
        
             inc bl
             
         loop start
         
       
      mov ah, 04ch
      int 21h
        
        
        
    main endp
    
    
end main