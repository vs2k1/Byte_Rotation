;************************
;* ��饭�� ������     *
;* ����ணࠬ�� ��� TC  *
;************************
;
;int	extern	rol_mat(int);


code		segment byte public
		assume cs: code, ds: code

		PUBLIC _rol_mat

_rol_mat	proc	far
		push	bp
		mov	bp,sp
		mov	ax,[bp+6]	; ����ᨬ ��室�� ���� � AX
		xor	bx,bx		; ��頥� BX
		mov	dx,4		; ���稪 ��ப
m2:		mov	cx,4		; ���稪 �⮫�楢
m1:		rol	bx,1		; �����⠢������ ��� 
		rol	bx,1		; �ਥ�����
		rol	bx,1		
		rol	ax,1
		rcl	bx,1		; ��।��� �१ 䫠� ��७��
		loop	m1
		dec	dx		; ᫥����� ��ப�
		jz	exit
		ror	bx,1
		jmp	m2		; ᫥���騩 �⮫���
exit:		rol	bx,1		; ��ࠢ������ ᫮��
		rol	bx,1		
		rol	bx,1		
		mov	ax,bx		; ��।��� � ��
		pop	bp
;------------------------------------------
		ret

_rol_mat	endp
code		ends
		end	_rol_mat
		