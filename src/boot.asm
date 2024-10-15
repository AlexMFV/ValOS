;A boot sector is composed of 512 bytes, the first 3 bytes represent an infinite loop (e9 fd ff)
;Then it is followed by 510 zero-bytes and ends the section with the final 2 bytes (aa 55)

;The infinite loop
loop:
    jmp loop

times 510-($-$$) db 0
dw 0xaa55