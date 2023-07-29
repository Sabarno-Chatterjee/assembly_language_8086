include 'emu8086.inc'


.stack 100h
.model small


.data



.code



    main proc
        
        mov dl, 5
        
        mov bl, 5
        
        cmp bl, dl
        
        je show
            
            print ' Both are not equal '        ; else clause
            
            mov ah, 04ch
            int 21h
        
        
            
            show:               ; label for if clause
            
                print 'Both are equal'
                
                mov ah, 04ch
                int 21h
        
        
        
    
    main endp
    
    
end main