# homework 5 assembly code



.globl Catalan


##########################################################
.text                                                    #
##########################################################
Catalan:

  xorq %rbx,%rbx #sum = 0

  cmpq $0,%rdi  #if n == 0
  cmve $1,%rax  #if true change return value to 1
  je .end_of  # jumps to end

  jmp .for_loop

.for_loop:

  xorq %rcx,%rcx #int i = 0
  cmpq %rcx,%rdi #i < n

  jl .loop

.loop:

 cmpq %rcx,%rdi




.end_of:
  
  ret

##########################################################
.data                                                    #
##########################################################


