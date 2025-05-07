section .data
    promptS db "Введите S: ", 0
    promptN db "Введите N: ", 0
    promptM db "Введите M: ", 0
    success db "Минимальное количество дней: ", 0
    fail db "Выжить невозможно", 0
    newline db 10, 0

section .bss
    S resd 1
    N resd 1
    M resd 1
    buf resb 16
    numstr resb 16
    result resd 1

section .text
    global _start

_start:
    ; Ввод S
    mov rsi, promptS
    call print
    call read_num
    mov [S], eax

    ; Ввод N
    mov rsi, promptN
    call print
    call read_num
    mov [N], eax

    ; Ввод M
    mov rsi, promptM
    call print
    call read_num
    mov [M], eax

    ; Проверка M > N
    mov eax, [M]
    cmp eax, [N]
    jle .continue
    jmp .impossible

.continue:
    ; sundays = S / 7
    mov eax, [S]
    mov ecx, 7
    xor edx, edx
    div ecx
    mov ebx, eax        ; sundays → EBX

    ; shop_work = S - sundays
    mov eax, [S]
    sub eax, ebx
    mov ecx, eax        ; shop_work → ECX

    ; need_food = S * M
    mov eax, [S]
    mul dword [M]       ; EDX:EAX = S * M
    mov [result], eax   ; сохраняем need_food

    ; min_days = ceil(need_food / N) = (need_food + N - 1) / N
    mov eax, [result]   ; need_food
    mov edx, [N]        ; N
    dec edx             ; N - 1
    add eax, edx        ; need_food + N - 1
    xor edx, edx
    div dword [N]       ; EAX = min_days
    mov [result], eax   ; сохраняем min_days

    ; Проверка min_days > shop_work → impossible
    cmp eax, ecx
    jle .possible
    jmp .impossible

.possible:
    mov rsi, success
    call print

    ; Выводим результат
    mov eax, [result]
    mov rdi, numstr
    call int_to_string
    mov rsi, numstr
    call print

    mov rsi, newline
    call print
    jmp .exit

.impossible:
    mov rsi, fail
    call print
    mov rsi, newline
    call print

.exit:
    ; Системный вызов exit
    mov rax, 60
    xor rdi, rdi
    syscall

; Процедура print
print:
    mov rdi, rsi
    xor rcx, rcx
    not rcx
    xor al, al
    cld
    repne scasb
    not rcx
    dec rcx
    mov rdx, rcx
    
    mov rax, 1
    mov rdi, 1
    syscall
    ret

; Процедура read_num
read_num:
    mov rax, 0
    mov rdi, 0
    mov rsi, buf
    mov rdx, 16
    syscall

    ; Преобразование строки в число
    xor eax, eax
    mov rsi, buf
    mov ecx, 10
.next_digit:
    movzx edx, byte [rsi]
    inc rsi
    cmp edx, '0'
    jb .done
    cmp edx, '9'
    ja .done
    sub edx, '0'
    imul eax, ecx
    add eax, edx
    jmp .next_digit
.done:
    ret

; Процедура int_to_string
int_to_string:
    mov ecx, 10
    xor r8d, r8d
    test eax, eax
    jnz .convert
    mov byte [rdi], '0'
    inc rdi
    mov byte [rdi], 0
    ret
    
.convert:
    xor edx, edx
    div ecx
    add dl, '0'
    push rdx
    inc r8d
    test eax, eax
    jnz .convert
    
.store:
    pop rdx
    mov [rdi], dl
    inc rdi
    dec r8d
    jnz .store
    mov byte [rdi], 0
    ret
