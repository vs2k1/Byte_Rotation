;************************
;* ��饭�� ������     *
;************************

code		segment byte public
		assume cs: code, ds: code

		org	100h
main		proc
		jmp	begin

;----����⠭��-----------------------------

enable_flag	equ	80h

;----��p������----------------------------

input_byte	dw	1101110111011101B
out_byte	dw	?
;------------------------------------------
begin:		
		mov	ax,input_byte
		mov	bx,0h
		mov	dx,4
m2:		mov	cx,4
m1:		rol	bx,1
		rol	bx,1
		rol	bx,1		
		rol	ax,1
		rcl	bx,1
		loop	m1
		dec	dx
		jz	exit
		ror	bx,1
		jmp	m2
;------------------------------------------
exit:		ret

main		endp
code		ends
		end	main