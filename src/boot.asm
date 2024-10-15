;A boot sector is composed of 512 bytes, the first 3 bytes represent an infinite loop (e9 fd ff)
;Then it is followed by 510 zero-bytes and ends the section with the final 2 bytes (aa 55)

mov ah, 0x0f ;get video mode
int 0x10



mov al, 'H'
int 0x10 ;print function?
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10

;The infinite loop
jmp $ ;jump to current address

times 510-($-$$) db 0 ;added 510 bytes of padding (zero-bytes)
dw 0xaa55 ;added the magic bytes at the end (aa 55)