# homework 5 assembly code



.globl Catalan


##########################################################
.text                                                    #
##########################################################
Catalan:

  push %r11
  push %r12
  push %r13

  xorq %rbx,%rbx #sum = 0
  movq $1, %rcx
  
  movq %rbx, (%r11) #sum
  movq %rdi, (%r12) #n

  cmpq $0,(%r12)  #if n == 0
  cmove %rcx,%rax  #if true change return value to 1
  je .end_of  # jumps to end

  jmp .for_loop

.for_loop:

  
  movq $0, (%r13) #int i = 0
  cmp %rdi,(%r13) #i < n

  jl .loop

  jmp .end_of

.loop:

 movq (%r13),%rdi  #move i into Catalan(i)
 call Catalan
 movq %rax, %rdx # hold return value
 subq (%r13),%rdi # n - i
 subq $1,(%r12) # n - i - 1
 movq (%r12), %rdi # Catalan(n - i - 1)
 call Catalan
 movq %rax, %r14 #hold return value
 imulq %r14,%rdx #multiply return values
 addq %rdx, (%r11) #sum += return value
 addq $1, (%r13)  #++i
 cmpq %rdi,(%r13) #i < n
 jl .loop

 jmp .end_of


.end_of:

  movq (%r11),%rax
  pop %r11
  pop %r12
  pop %r13
  ret

##########################################################
.data                                                    #
##########################################################


