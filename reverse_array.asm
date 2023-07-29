include 'emu8086.inc'


.stack 100h
.model small


.data

string db 'IamIronMan'


.code


    main proc                 
        
        mov ax, @data
        mov ds, ax    
        
        
        mov si, offset string                       ; address of the first index 
        
        
        mov cx, 10
        
        loop1:
        
            mov bx, [si]                            ; storing the data into a register from the array
            push bx                                 ; it will simply store the data into stack memory
            inc si
            loop loop1   
            
        mov cx, 10
            
        loop2:
        
            pop dx                                 ; pops the last element from the stack
            mov ah, 02h
            int 21h
            loop loop2
      
      mov ah, 04ch
      int 21h
        
        
        
        
        
    main endp
    
    
    
end main