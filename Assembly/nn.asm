section .data
    promptS db "Введите S: ", 0xA
    promptN db "Введите N: ", 0xA
    promptM db "Введите M: ", 0xA
    success db "Минимальное количество дней: ", 0xA
    fail db "Выжить невозможно", 0xA

section .bss
    S resb 1
    N resb 1
    M resb 1
    buf resb 2

section .text
    global _start

_start:
    ; Ввод S
    mov edx, 12
    mov ecx, promptS
    call print
    call read_num
    mov [S], al

    ; Ввод N
    mov edx, 12
    mov ecx, promptN
    call print
    call read_num
    mov [N], al

    ; Ввод M
    mov edx, 12
    mov ecx, promptM
    call print
    call read_num
    mov [M], al

    ; Проверка M > N
    mov al, [M]
    cmp al, [N]
    jbe continue
    jmp impossible

continue:
    ; sundays = S / 7
    mov al, [S]
    xor ah, ah
    mov bl, 7
    div bl        ; AL = S/7
    mov bl, al    ; sundays -> BL

    ; shop_work = S - sundays
    mov al, [S]
    sub al, bl    ; AL = shop_work
    mov cl, al    ; save shop_work in CL

    ; need_food = S * M
    mov al, [S]
    mul byte [M]  ; AX = S * M

    ; min_days = (need_food + N -1) / N
    mov bx, ax    ; BX = need_food
    mov al, [N]
    dec al
    add bx, ax    ; need_food + N -1
    mov ax, bx
    mov bl, [N]
    div bl        ; AL = min_days

    ; if min_days > shop_work -> impossible
    cmp al, cl
    jbe possible
    jmp impossible

possible:
    mov edx, 28
    mov ecx, success
    call print
    add al, '0'
    mov [buf], al
    mov byte [buf+1], 0xA
    mov edx, 2
    mov ecx, buf
    call print
    jmp exit

impossible:
    mov edx, 19
    mov ecx, fail
    call print
    jmp exit

exit:
    mov eax,1
    xor ebx,ebx
    int 0x80

; --- procedures ---

print:
    mov eax,4
    mov ebx,1
    int 0x80
    ret

read_num:
    mov eax,3
    mov ebx,0
    mov ecx,buf
    mov edx,2
    int 0x80
    mov al, [buf]
    sub al, '0'
    ret
