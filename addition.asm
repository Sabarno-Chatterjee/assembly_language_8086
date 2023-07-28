include 'emu8086.inc'


.stack 100h
.model small

.data
            
            
            ;  for declaring variables
            
            
            
.code 


    main proc
        print 'Enter the first number : '   ; User input 1
        
        
        mov ah, 01h
        int 21h  
        sub al, 48
        
        mov bl, al 
        
        mov dl, 10
        mov ah, 02h
        int 21h                         ; new line
        
        
        mov dl, 13
        mov ah, 02h
        int 21h                         ; carriage return
        
        print 'Enter the second number : '   ; User input 2
        
        mov ah, 01h
        int 21h
        sub al, 48
        
        
        add bl, al                        ; addition
        add bl, 48
        
        
        mov dl, 10
        mov ah, 02h
        int 21h                         ; new line
        
        
        mov dl, 13
        mov ah, 02h
        int 21h 
                 
                 
        mov dl, bl
        
        print 'Sum : ' 
               
        mov ah, 02h
        int 21h
        
     
     mov ah, 04ch
     int 21h
        
        
        
        
        
        
    main endp
    
    
    
end main