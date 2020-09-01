
modulus:     file format elf64-x86-64


Disassembly of section .init:

00000000000005e0 <_init>:
 5e0:	48 83 ec 08          	sub    $0x8,%rsp
 5e4:	48 8b 05 fd 09 20 00 	mov    0x2009fd(%rip),%rax        # 200fe8 <__gmon_start__>
 5eb:	48 85 c0             	test   %rax,%rax
 5ee:	74 02                	je     5f2 <_init+0x12>
 5f0:	ff d0                	callq  *%rax
 5f2:	48 83 c4 08          	add    $0x8,%rsp
 5f6:	c3                   	retq   

Disassembly of section .plt:

0000000000000600 <.plt>:
 600:	ff 35 a2 09 20 00    	pushq  0x2009a2(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
 606:	ff 25 a4 09 20 00    	jmpq   *0x2009a4(%rip)        # 200fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
 60c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000610 <putchar@plt>:
 610:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 200fb8 <putchar@GLIBC_2.2.5>
 616:	68 00 00 00 00       	pushq  $0x0
 61b:	e9 e0 ff ff ff       	jmpq   600 <.plt>

0000000000000620 <__stack_chk_fail@plt>:
 620:	ff 25 9a 09 20 00    	jmpq   *0x20099a(%rip)        # 200fc0 <__stack_chk_fail@GLIBC_2.4>
 626:	68 01 00 00 00       	pushq  $0x1
 62b:	e9 d0 ff ff ff       	jmpq   600 <.plt>

0000000000000630 <printf@plt>:
 630:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 200fc8 <printf@GLIBC_2.2.5>
 636:	68 02 00 00 00       	pushq  $0x2
 63b:	e9 c0 ff ff ff       	jmpq   600 <.plt>

0000000000000640 <__isoc99_scanf@plt>:
 640:	ff 25 8a 09 20 00    	jmpq   *0x20098a(%rip)        # 200fd0 <__isoc99_scanf@GLIBC_2.7>
 646:	68 03 00 00 00       	pushq  $0x3
 64b:	e9 b0 ff ff ff       	jmpq   600 <.plt>

Disassembly of section .plt.got:

0000000000000650 <__cxa_finalize@plt>:
 650:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 656:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000660 <_start>:
 660:	31 ed                	xor    %ebp,%ebp
 662:	49 89 d1             	mov    %rdx,%r9
 665:	5e                   	pop    %rsi
 666:	48 89 e2             	mov    %rsp,%rdx
 669:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 66d:	50                   	push   %rax
 66e:	54                   	push   %rsp
 66f:	4c 8d 05 4a 02 00 00 	lea    0x24a(%rip),%r8        # 8c0 <__libc_csu_fini>
 676:	48 8d 0d d3 01 00 00 	lea    0x1d3(%rip),%rcx        # 850 <__libc_csu_init>
 67d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 76a <main>
 684:	ff 15 56 09 20 00    	callq  *0x200956(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 68a:	f4                   	hlt    
 68b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000690 <deregister_tm_clones>:
 690:	48 8d 3d 79 09 20 00 	lea    0x200979(%rip),%rdi        # 201010 <__TMC_END__>
 697:	55                   	push   %rbp
 698:	48 8d 05 71 09 20 00 	lea    0x200971(%rip),%rax        # 201010 <__TMC_END__>
 69f:	48 39 f8             	cmp    %rdi,%rax
 6a2:	48 89 e5             	mov    %rsp,%rbp
 6a5:	74 19                	je     6c0 <deregister_tm_clones+0x30>
 6a7:	48 8b 05 2a 09 20 00 	mov    0x20092a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 6ae:	48 85 c0             	test   %rax,%rax
 6b1:	74 0d                	je     6c0 <deregister_tm_clones+0x30>
 6b3:	5d                   	pop    %rbp
 6b4:	ff e0                	jmpq   *%rax
 6b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6bd:	00 00 00 
 6c0:	5d                   	pop    %rbp
 6c1:	c3                   	retq   
 6c2:	0f 1f 40 00          	nopl   0x0(%rax)
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 

00000000000006d0 <register_tm_clones>:
 6d0:	48 8d 3d 39 09 20 00 	lea    0x200939(%rip),%rdi        # 201010 <__TMC_END__>
 6d7:	48 8d 35 32 09 20 00 	lea    0x200932(%rip),%rsi        # 201010 <__TMC_END__>
 6de:	55                   	push   %rbp
 6df:	48 29 fe             	sub    %rdi,%rsi
 6e2:	48 89 e5             	mov    %rsp,%rbp
 6e5:	48 c1 fe 03          	sar    $0x3,%rsi
 6e9:	48 89 f0             	mov    %rsi,%rax
 6ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 6f0:	48 01 c6             	add    %rax,%rsi
 6f3:	48 d1 fe             	sar    %rsi
 6f6:	74 18                	je     710 <register_tm_clones+0x40>
 6f8:	48 8b 05 f1 08 20 00 	mov    0x2008f1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 6ff:	48 85 c0             	test   %rax,%rax
 702:	74 0c                	je     710 <register_tm_clones+0x40>
 704:	5d                   	pop    %rbp
 705:	ff e0                	jmpq   *%rax
 707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 70e:	00 00 
 710:	5d                   	pop    %rbp
 711:	c3                   	retq   
 712:	0f 1f 40 00          	nopl   0x0(%rax)
 716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 71d:	00 00 00 

0000000000000720 <__do_global_dtors_aux>:
 720:	80 3d e9 08 20 00 00 	cmpb   $0x0,0x2008e9(%rip)        # 201010 <__TMC_END__>
 727:	75 2f                	jne    758 <__do_global_dtors_aux+0x38>
 729:	48 83 3d c7 08 20 00 	cmpq   $0x0,0x2008c7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 730:	00 
 731:	55                   	push   %rbp
 732:	48 89 e5             	mov    %rsp,%rbp
 735:	74 0c                	je     743 <__do_global_dtors_aux+0x23>
 737:	48 8b 3d ca 08 20 00 	mov    0x2008ca(%rip),%rdi        # 201008 <__dso_handle>
 73e:	e8 0d ff ff ff       	callq  650 <__cxa_finalize@plt>
 743:	e8 48 ff ff ff       	callq  690 <deregister_tm_clones>
 748:	c6 05 c1 08 20 00 01 	movb   $0x1,0x2008c1(%rip)        # 201010 <__TMC_END__>
 74f:	5d                   	pop    %rbp
 750:	c3                   	retq   
 751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 758:	f3 c3                	repz retq 
 75a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000760 <frame_dummy>:
 760:	55                   	push   %rbp
 761:	48 89 e5             	mov    %rsp,%rbp
 764:	5d                   	pop    %rbp
 765:	e9 66 ff ff ff       	jmpq   6d0 <register_tm_clones>

000000000000076a <main>:
 76a:	55                   	push   %rbp
 76b:	48 89 e5             	mov    %rsp,%rbp
 76e:	48 83 ec 20          	sub    $0x20,%rsp
 772:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 779:	00 00 
 77b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 77f:	31 c0                	xor    %eax,%eax
 781:	48 8d 3d 4c 01 00 00 	lea    0x14c(%rip),%rdi        # 8d4 <_IO_stdin_used+0x4>
 788:	b8 00 00 00 00       	mov    $0x0,%eax
 78d:	e8 9e fe ff ff       	callq  630 <printf@plt>
 792:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
 796:	48 89 c6             	mov    %rax,%rsi
 799:	48 8d 3d 46 01 00 00 	lea    0x146(%rip),%rdi        # 8e6 <_IO_stdin_used+0x16>
 7a0:	b8 00 00 00 00       	mov    $0x0,%eax
 7a5:	e8 96 fe ff ff       	callq  640 <__isoc99_scanf@plt>
 7aa:	bf 0a 00 00 00       	mov    $0xa,%edi
 7af:	e8 5c fe ff ff       	callq  610 <putchar@plt>
 7b4:	48 8d 3d 2e 01 00 00 	lea    0x12e(%rip),%rdi        # 8e9 <_IO_stdin_used+0x19>
 7bb:	b8 00 00 00 00       	mov    $0x0,%eax
 7c0:	e8 6b fe ff ff       	callq  630 <printf@plt>
 7c5:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
 7c9:	48 89 c6             	mov    %rax,%rsi
 7cc:	48 8d 3d 13 01 00 00 	lea    0x113(%rip),%rdi        # 8e6 <_IO_stdin_used+0x16>
 7d3:	b8 00 00 00 00       	mov    $0x0,%eax
 7d8:	e8 63 fe ff ff       	callq  640 <__isoc99_scanf@plt>
 7dd:	bf 0a 00 00 00       	mov    $0xa,%edi
 7e2:	e8 29 fe ff ff       	callq  610 <putchar@plt>
 7e7:	8b 45 e8             	mov    -0x18(%rbp),%eax
 7ea:	8b 4d ec             	mov    -0x14(%rbp),%ecx
 7ed:	99                   	cltd   
 7ee:	f7 f9                	idiv   %ecx
 7f0:	89 55 f0             	mov    %edx,-0x10(%rbp)
 7f3:	8b 45 e8             	mov    -0x18(%rbp),%eax
 7f6:	99                   	cltd   
 7f7:	c1 ea 1e             	shr    $0x1e,%edx
 7fa:	01 d0                	add    %edx,%eax
 7fc:	83 e0 03             	and    $0x3,%eax
 7ff:	29 d0                	sub    %edx,%eax
 801:	89 45 f4             	mov    %eax,-0xc(%rbp)
 804:	8b 45 f0             	mov    -0x10(%rbp),%eax
 807:	89 c6                	mov    %eax,%esi
 809:	48 8d 3d ea 00 00 00 	lea    0xea(%rip),%rdi        # 8fa <_IO_stdin_used+0x2a>
 810:	b8 00 00 00 00       	mov    $0x0,%eax
 815:	e8 16 fe ff ff       	callq  630 <printf@plt>
 81a:	8b 45 f4             	mov    -0xc(%rbp),%eax
 81d:	89 c6                	mov    %eax,%esi
 81f:	48 8d 3d ef 00 00 00 	lea    0xef(%rip),%rdi        # 915 <_IO_stdin_used+0x45>
 826:	b8 00 00 00 00       	mov    $0x0,%eax
 82b:	e8 00 fe ff ff       	callq  630 <printf@plt>
 830:	b8 00 00 00 00       	mov    $0x0,%eax
 835:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 839:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 840:	00 00 
 842:	74 05                	je     849 <main+0xdf>
 844:	e8 d7 fd ff ff       	callq  620 <__stack_chk_fail@plt>
 849:	c9                   	leaveq 
 84a:	c3                   	retq   
 84b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000850 <__libc_csu_init>:
 850:	41 57                	push   %r15
 852:	41 56                	push   %r14
 854:	49 89 d7             	mov    %rdx,%r15
 857:	41 55                	push   %r13
 859:	41 54                	push   %r12
 85b:	4c 8d 25 3e 05 20 00 	lea    0x20053e(%rip),%r12        # 200da0 <__frame_dummy_init_array_entry>
 862:	55                   	push   %rbp
 863:	48 8d 2d 3e 05 20 00 	lea    0x20053e(%rip),%rbp        # 200da8 <__init_array_end>
 86a:	53                   	push   %rbx
 86b:	41 89 fd             	mov    %edi,%r13d
 86e:	49 89 f6             	mov    %rsi,%r14
 871:	4c 29 e5             	sub    %r12,%rbp
 874:	48 83 ec 08          	sub    $0x8,%rsp
 878:	48 c1 fd 03          	sar    $0x3,%rbp
 87c:	e8 5f fd ff ff       	callq  5e0 <_init>
 881:	48 85 ed             	test   %rbp,%rbp
 884:	74 20                	je     8a6 <__libc_csu_init+0x56>
 886:	31 db                	xor    %ebx,%ebx
 888:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 88f:	00 
 890:	4c 89 fa             	mov    %r15,%rdx
 893:	4c 89 f6             	mov    %r14,%rsi
 896:	44 89 ef             	mov    %r13d,%edi
 899:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 89d:	48 83 c3 01          	add    $0x1,%rbx
 8a1:	48 39 dd             	cmp    %rbx,%rbp
 8a4:	75 ea                	jne    890 <__libc_csu_init+0x40>
 8a6:	48 83 c4 08          	add    $0x8,%rsp
 8aa:	5b                   	pop    %rbx
 8ab:	5d                   	pop    %rbp
 8ac:	41 5c                	pop    %r12
 8ae:	41 5d                	pop    %r13
 8b0:	41 5e                	pop    %r14
 8b2:	41 5f                	pop    %r15
 8b4:	c3                   	retq   
 8b5:	90                   	nop
 8b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8bd:	00 00 00 

00000000000008c0 <__libc_csu_fini>:
 8c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000008c4 <_fini>:
 8c4:	48 83 ec 08          	sub    $0x8,%rsp
 8c8:	48 83 c4 08          	add    $0x8,%rsp
 8cc:	c3                   	retq   
