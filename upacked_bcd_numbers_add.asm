; Operations using AAA instruction  (Write a program to add two unpacked bcd numbers)

include 'emu8086.inc'

.stack 100h
.model small

.data


.code

    main proc
        
        mov al, 9
        mov bl, 2
        
        add bl
        aaa
        
        mov bx, ax
        
        mov dl, bh
        add dl, 48
        mov ah, 02h
        int 21h
        
        mov dl, bl
        add dl, 48
        mov ah, 02h
        int 21h
        
        
    main endp
    
end main