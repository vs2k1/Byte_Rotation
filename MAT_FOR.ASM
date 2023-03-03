;************************
;* Вращение матрицы     *
;* подпрограмма для TC  *
;************************
;
;int	extern	rol_mat(int);


code		segment byte public
		assume cs: code, ds: code

		PUBLIC _rol_mat

_rol_mat	proc	far
		push	bp
		mov	bp,sp
		mov	ax,[bp+6]	; заносим исходный байт в AX
		xor	bx,bx		; очищаем BX
		mov	dx,4		; счетчик строк
m2:		mov	cx,4		; счетчик столбцев
m1:		rol	bx,1		; подготавливаем бит 
		rol	bx,1		; приемника
		rol	bx,1		
		rol	ax,1
		rcl	bx,1		; передаем через флаг переноса
		loop	m1
		dec	dx		; следующая строка
		jz	exit
		ror	bx,1
		jmp	m2		; следующий столбец
exit:		rol	bx,1		; выравниваем слово
		rol	bx,1		
		rol	bx,1		
		mov	ax,bx		; передаем в Си
		pop	bp
;------------------------------------------
		ret

_rol_mat	endp
code		ends
		end	_rol_mat
		