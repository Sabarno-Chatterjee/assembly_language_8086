include 'emu8086.inc'
           
 
.model small
.stack 100h 


.data               ; for variable declaration




.code 



    main proc
        
        print 'Enter the first number : '           ; user input 1
        
        mov ah, 01h
        int 21h 
        
        sub al, 48                                  ; to get decimal value
        
        mov bl, al
        
        mov dl, 10                                  ; ascii for new line
        mov ah, 02h
        int 21h
        
        
        mov dl, 13                                  ; ascii for carriage return
        mov ah, 02h
        int 21h
        
        
        print 'Enter the second number : '          ; user input 2
        
        mov ah, 01h
        int 21h
        sub al, 48
        
        sub bl, al  
        
        add bl, 48                                  ; change into ascii
        
        mov dl, 10
        mov ah, 02h
        int 21h
        
        mov dl, 13
        mov ah, 02h
        int 21h
        
        
        print 'Sub = '
        
        mov dl, bl
        
        mov ah, 02h
        int 21h
        
        
     mov ah, 04ch
     int 21h
     
        
    
        
    main endp
    
    
    
    
end main