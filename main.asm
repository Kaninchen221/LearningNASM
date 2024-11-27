%include "win32n.inc"

extern MessageBoxA
import MessageBoxA user32.dll

extern ExitProcess
import ExitProcess kernel32.dll

segment .data USE32

	title	db "A message for you", 0
	message db "This is your first message", 0

segment	.bss USE32

segment .code USE32

..start:

	; show the message box
	push MB_OK
	push title
	push message
	push 0
	call [MessageBoxA]

	; return control back to windows
	push 0
	call [ExitProcess]