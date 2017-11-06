$ java -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -cp . Foo2
Java HotSpot(TM) 64-Bit Server VM warning: PrintAssembly is enabled; turning on DebugNonSafepoints to gain additional output
Loaded disassembler from hsdis-amd64.dylib
Decoding compiled method 0x000000010708c5d0:
Code:
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Constants]
  # {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x000000010708c740: mov    0x8(%rsi),%r10d
  0x000000010708c744: shl    $0x3,%r10
  0x000000010708c748: cmp    %rax,%r10
  0x000000010708c74b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x000000010708c751: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010708c75c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x000000010708c760: mov    %eax,-0x14000(%rsp)
  0x000000010708c767: push   %rbp
  0x000000010708c768: sub    $0x30,%rsp
  0x000000010708c76c: movabs $0x11afbd170,%rax  ;   {metadata(method data for {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c776: mov    0xdc(%rax),%edi
  0x000000010708c77c: add    $0x8,%edi
  0x000000010708c77f: mov    %edi,0xdc(%rax)
  0x000000010708c785: movabs $0x11adfdff8,%rax  ;   {metadata({method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c78f: and    $0x1ff8,%edi
  0x000000010708c795: cmp    $0x0,%edi
  0x000000010708c798: je     0x000000010708c8d1  ;*aload_0
                                                ; - java.lang.String::hashCode@0 (line 1466)

  0x000000010708c79e: mov    0x10(%rsi),%eax    ;*getfield hash
                                                ; - java.lang.String::hashCode@1 (line 1466)

  0x000000010708c7a1: cmp    $0x0,%eax
  0x000000010708c7a4: movabs $0x11afbd170,%rdi  ;   {metadata(method data for {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c7ae: movabs $0x108,%rbx
  0x000000010708c7b8: jne    0x000000010708c7c8
  0x000000010708c7be: movabs $0x118,%rbx
  0x000000010708c7c8: mov    (%rdi,%rbx,1),%rdx
  0x000000010708c7cc: lea    0x1(%rdx),%rdx
  0x000000010708c7d0: mov    %rdx,(%rdi,%rbx,1)
  0x000000010708c7d4: jne    0x000000010708c8c5  ;*ifne
                                                ; - java.lang.String::hashCode@6 (line 1467)

  0x000000010708c7da: mov    0xc(%rsi),%edi
  0x000000010708c7dd: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.String::hashCode@10 (line 1467)

  0x000000010708c7e1: mov    0xc(%rdi),%ebx     ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1467)
                                                ; implicit exception: dispatches to 0x000000010708c8e8
  0x000000010708c7e4: cmp    $0x0,%ebx
  0x000000010708c7e7: movabs $0x11afbd170,%rdx  ;   {metadata(method data for {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c7f1: movabs $0x128,%rcx
  0x000000010708c7fb: jle    0x000000010708c80b
  0x000000010708c801: movabs $0x138,%rcx
  0x000000010708c80b: mov    (%rdx,%rcx,1),%r8
  0x000000010708c80f: lea    0x1(%r8),%r8
  0x000000010708c813: mov    %r8,(%rdx,%rcx,1)
  0x000000010708c817: jle    0x000000010708c8c5  ;*ifle
                                                ; - java.lang.String::hashCode@14 (line 1467)

  0x000000010708c81d: mov    $0x0,%edx
  0x000000010708c822: jmpq   0x000000010708c88a  ;*iload_3
                                                ; - java.lang.String::hashCode@24 (line 1470)

  0x000000010708c827: nop
  0x000000010708c828: movslq %edx,%rcx
  0x000000010708c82b: movzwl 0x10(%rdi,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::hashCode@39 (line 1471)

  0x000000010708c830: mov    %rax,%r8
  0x000000010708c833: shl    $0x5,%eax
  0x000000010708c836: sub    %r8d,%eax
  0x000000010708c839: add    %ecx,%eax
  0x000000010708c83b: inc    %edx
  0x000000010708c83d: movabs $0x11afbd170,%rcx  ;   {metadata(method data for {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c847: mov    0xe0(%rcx),%r8d
  0x000000010708c84e: add    $0x8,%r8d
  0x000000010708c852: mov    %r8d,0xe0(%rcx)
  0x000000010708c859: movabs $0x11adfdff8,%rcx  ;   {metadata({method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c863: and    $0xfff8,%r8d
  0x000000010708c86a: cmp    $0x0,%r8d
  0x000000010708c86e: je     0x000000010708c8ed  ; OopMap{rdi=Oop rsi=Oop off=308}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)

  0x000000010708c874: test   %eax,-0x191877a(%rip)        # 0x0000000105774100
                                                ;   {poll}
  0x000000010708c87a: movabs $0x11afbd170,%rcx  ;   {metadata(method data for {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c884: incl   0x168(%rcx)        ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)

  0x000000010708c88a: cmp    %ebx,%edx
  0x000000010708c88c: movabs $0x11afbd170,%rcx  ;   {metadata(method data for {method} {0x000000011adfdff8} 'hashCode' '()I' in 'java/lang/String')}
  0x000000010708c896: movabs $0x148,%r8
  0x000000010708c8a0: jge    0x000000010708c8b0
  0x000000010708c8a6: movabs $0x158,%r8
  0x000000010708c8b0: mov    (%rcx,%r8,1),%r9
  0x000000010708c8b4: lea    0x1(%r9),%r9
  0x000000010708c8b8: mov    %r9,(%rcx,%r8,1)
  0x000000010708c8bc: jl     0x000000010708c828  ;*if_icmpge
                                                ; - java.lang.String::hashCode@30 (line 1470)

  0x000000010708c8c2: mov    %eax,0x10(%rsi)    ;*putfield hash
                                                ; - java.lang.String::hashCode@50 (line 1473)

  0x000000010708c8c5: add    $0x30,%rsp
  0x000000010708c8c9: pop    %rbp
  0x000000010708c8ca: test   %eax,-0x19187d0(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708c8d0: retq   
  0x000000010708c8d1: mov    %rax,0x8(%rsp)
  0x000000010708c8d6: movq   $0xffffffffffffffff,(%rsp)
  0x000000010708c8de: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=419}
                                                ;*synchronization entry
                                                ; - java.lang.String::hashCode@-1 (line 1466)
                                                ;   {runtime_call}
  0x000000010708c8e3: jmpq   0x000000010708c79e
  0x000000010708c8e8: callq  0x0000000107086680  ; OopMap{rsi=Oop rdi=Oop off=429}
                                                ;*arraylength
                                                ; - java.lang.String::hashCode@13 (line 1467)
                                                ;   {runtime_call}
  0x000000010708c8ed: mov    %rcx,0x8(%rsp)
  0x000000010708c8f2: movq   $0x2d,(%rsp)
  0x000000010708c8fa: callq  0x000000010708aba0  ; OopMap{rdi=Oop rsi=Oop off=447}
                                                ;*goto
                                                ; - java.lang.String::hashCode@45 (line 1470)
                                                ;   {runtime_call}
  0x000000010708c8ff: jmpq   0x000000010708c874
  0x000000010708c904: nop
  0x000000010708c905: nop
  0x000000010708c906: mov    0x2a8(%r15),%rax
  0x000000010708c90d: movabs $0x0,%r10
  0x000000010708c917: mov    %r10,0x2a8(%r15)
  0x000000010708c91e: movabs $0x0,%r10
  0x000000010708c928: mov    %r10,0x2b0(%r15)
  0x000000010708c92f: add    $0x30,%rsp
  0x000000010708c933: pop    %rbp
  0x000000010708c934: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x000000010708c939: hlt    
  0x000000010708c93a: hlt    
  0x000000010708c93b: hlt    
  0x000000010708c93c: hlt    
  0x000000010708c93d: hlt    
  0x000000010708c93e: hlt    
  0x000000010708c93f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010708c940: callq  0x0000000107088520  ;   {no_reloc}
  0x000000010708c945: mov    %rsp,-0x28(%rsp)
  0x000000010708c94a: sub    $0x80,%rsp
  0x000000010708c951: mov    %rax,0x78(%rsp)
  0x000000010708c956: mov    %rcx,0x70(%rsp)
  0x000000010708c95b: mov    %rdx,0x68(%rsp)
  0x000000010708c960: mov    %rbx,0x60(%rsp)
  0x000000010708c965: mov    %rbp,0x50(%rsp)
  0x000000010708c96a: mov    %rsi,0x48(%rsp)
  0x000000010708c96f: mov    %rdi,0x40(%rsp)
  0x000000010708c974: mov    %r8,0x38(%rsp)
  0x000000010708c979: mov    %r9,0x30(%rsp)
  0x000000010708c97e: mov    %r10,0x28(%rsp)
  0x000000010708c983: mov    %r11,0x20(%rsp)
  0x000000010708c988: mov    %r12,0x18(%rsp)
  0x000000010708c98d: mov    %r13,0x10(%rsp)
  0x000000010708c992: mov    %r14,0x8(%rsp)
  0x000000010708c997: mov    %r15,(%rsp)
  0x000000010708c99b: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x000000010708c9a5: movabs $0x10708c945,%rsi  ;   {internal_word}
  0x000000010708c9af: mov    %rsp,%rdx
  0x000000010708c9b2: and    $0xfffffffffffffff0,%rsp
  0x000000010708c9b6: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010708c9bb: hlt    
[Deopt Handler Code]
  0x000000010708c9bc: movabs $0x10708c9bc,%r10  ;   {section_word}
  0x000000010708c9c6: push   %r10
  0x000000010708c9c8: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010708c9cd: hlt    
  0x000000010708c9ce: hlt    
  0x000000010708c9cf: hlt    
Decoding compiled method 0x000000010708e250:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011adfcdb0} 'charAt' '(I)C' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x000000010708e3c0: mov    0x8(%rsi),%r10d
  0x000000010708e3c4: shl    $0x3,%r10
  0x000000010708e3c8: cmp    %rax,%r10
  0x000000010708e3cb: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x000000010708e3d1: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010708e3dc: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x000000010708e3e0: mov    %eax,-0x14000(%rsp)
  0x000000010708e3e7: push   %rbp
  0x000000010708e3e8: sub    $0x30,%rsp
  0x000000010708e3ec: mov    %rdx,%rdi
  0x000000010708e3ef: movabs $0x11af78c38,%rax  ;   {metadata(method data for {method} {0x000000011adfcdb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x000000010708e3f9: mov    0xdc(%rax),%edx
  0x000000010708e3ff: add    $0x8,%edx
  0x000000010708e402: mov    %edx,0xdc(%rax)
  0x000000010708e408: movabs $0x11adfcdb0,%rax  ;   {metadata({method} {0x000000011adfcdb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x000000010708e412: and    $0x1ff8,%edx
  0x000000010708e418: cmp    $0x0,%edx
  0x000000010708e41b: je     0x000000010708e4ee  ;*iload_1
                                                ; - java.lang.String::charAt@0 (line 657)

  0x000000010708e421: cmp    $0x0,%edi
  0x000000010708e424: movabs $0x11af78c38,%rax  ;   {metadata(method data for {method} {0x000000011adfcdb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x000000010708e42e: movabs $0x108,%rdx
  0x000000010708e438: jl     0x000000010708e448
  0x000000010708e43e: movabs $0x118,%rdx
  0x000000010708e448: mov    (%rax,%rdx,1),%rbx
  0x000000010708e44c: lea    0x1(%rbx),%rbx
  0x000000010708e450: mov    %rbx,(%rax,%rdx,1)
  0x000000010708e454: jl     0x000000010708e4b0  ;*iflt
                                                ; - java.lang.String::charAt@1 (line 657)

  0x000000010708e45a: mov    0xc(%rsi),%eax
  0x000000010708e45d: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::charAt@6 (line 657)

  0x000000010708e461: mov    0xc(%rax),%edx     ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 657)
                                                ; implicit exception: dispatches to 0x000000010708e505
  0x000000010708e464: cmp    %edx,%edi
  0x000000010708e466: movabs $0x11af78c38,%rdx  ;   {metadata(method data for {method} {0x000000011adfcdb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x000000010708e470: movabs $0x128,%rsi
  0x000000010708e47a: jl     0x000000010708e48a
  0x000000010708e480: movabs $0x138,%rsi
  0x000000010708e48a: mov    (%rdx,%rsi,1),%rbx
  0x000000010708e48e: lea    0x1(%rbx),%rbx
  0x000000010708e492: mov    %rbx,(%rdx,%rsi,1)
  0x000000010708e496: jge    0x000000010708e4b0  ;*if_icmplt
                                                ; - java.lang.String::charAt@10 (line 657)

  0x000000010708e49c: movslq %edi,%rdi
  0x000000010708e49f: movzwl 0x10(%rax,%rdi,2),%eax  ;*caload
                                                ; - java.lang.String::charAt@27 (line 660)

  0x000000010708e4a4: add    $0x30,%rsp
  0x000000010708e4a8: pop    %rbp
  0x000000010708e4a9: test   %eax,-0x191a3af(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708e4af: retq                      ;*ireturn
                                                ; - java.lang.String::charAt@28 (line 660)

  0x000000010708e4b0: jmpq   0x000000010708e519  ;   {no_reloc}
  0x000000010708e4b5: add    %al,(%rax)
  0x000000010708e4b7: add    %al,(%rax)
  0x000000010708e4b9: add    %ch,%cl
  0x000000010708e4bb: add    %al,%fs:(%rax)
  0x000000010708e4be: add    %cl,-0x75(%rax)    ;*new  ; - java.lang.String::charAt@13 (line 658)

  0x000000010708e4c1: rorb   -0x42(%rax)        ;   {metadata(method data for {method} {0x000000011adfcdb0} 'charAt' '(I)C' in 'java/lang/String')}
  0x000000010708e4c4: cmp    %cl,0x11a(%rdi,%rsi,8)
  0x000000010708e4cb: add    %cl,-0x7d(%rax)
  0x000000010708e4ce: xchg   %cl,0x1(%rax)
  0x000000010708e4d1: add    %al,(%rax)
  0x000000010708e4d3: add    %ecx,-0x75(%rax)
  0x000000010708e4d6: xlat   %ds:(%rbx)
  0x000000010708e4d7: mov    %rax,%rsi          ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 658)

  0x000000010708e4da: mov    %rax,0x20(%rsp)
  0x000000010708e4df: callq  0x0000000106fd3020  ; OopMap{[32]=Oop off=292}
                                                ;*invokespecial <init>
                                                ; - java.lang.String::charAt@18 (line 658)
                                                ;   {optimized virtual_call}
  0x000000010708e4e4: mov    0x20(%rsp),%rax
  0x000000010708e4e9: jmpq   0x000000010708e558
  0x000000010708e4ee: mov    %rax,0x8(%rsp)
  0x000000010708e4f3: movq   $0xffffffffffffffff,(%rsp)
  0x000000010708e4fb: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=320}
                                                ;*synchronization entry
                                                ; - java.lang.String::charAt@-1 (line 657)
                                                ;   {runtime_call}
  0x000000010708e500: jmpq   0x000000010708e421
  0x000000010708e505: callq  0x0000000107086680  ; OopMap{rax=Oop off=330}
                                                ;*arraylength
                                                ; - java.lang.String::charAt@9 (line 657)
                                                ;   {runtime_call}
  0x000000010708e50a: movabs $0x0,%rdx          ;   {metadata(NULL)}
  0x000000010708e514: mov    $0xa050f00,%eax
  0x000000010708e519: callq  0x0000000107089ba0  ; OopMap{off=350}
                                                ;*new  ; - java.lang.String::charAt@13 (line 658)
                                                ;   {runtime_call}
  0x000000010708e51e: jmp    0x000000010708e4b0
  0x000000010708e520: nop
  0x000000010708e521: nop
  0x000000010708e522: nop
  0x000000010708e523: mov    %rdx,%rdx
  0x000000010708e526: callq  0x0000000107086b20  ; OopMap{off=363}
                                                ;*new  ; - java.lang.String::charAt@13 (line 658)
                                                ;   {runtime_call}
  0x000000010708e52b: jmp    0x000000010708e4bf
  0x000000010708e52d: nop
  0x000000010708e52e: nop
  0x000000010708e52f: mov    0x2a8(%r15),%rax
  0x000000010708e536: movabs $0x0,%r10
  0x000000010708e540: mov    %r10,0x2a8(%r15)
  0x000000010708e547: movabs $0x0,%r10
  0x000000010708e551: mov    %r10,0x2b0(%r15)
  0x000000010708e558: add    $0x30,%rsp
  0x000000010708e55c: pop    %rbp
  0x000000010708e55d: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x000000010708e562: hlt    
  0x000000010708e563: hlt    
  0x000000010708e564: hlt    
  0x000000010708e565: hlt    
  0x000000010708e566: hlt    
  0x000000010708e567: hlt    
  0x000000010708e568: hlt    
  0x000000010708e569: hlt    
  0x000000010708e56a: hlt    
  0x000000010708e56b: hlt    
  0x000000010708e56c: hlt    
  0x000000010708e56d: hlt    
  0x000000010708e56e: hlt    
  0x000000010708e56f: hlt    
  0x000000010708e570: hlt    
  0x000000010708e571: hlt    
  0x000000010708e572: hlt    
  0x000000010708e573: hlt    
  0x000000010708e574: hlt    
  0x000000010708e575: hlt    
  0x000000010708e576: hlt    
  0x000000010708e577: hlt    
  0x000000010708e578: hlt    
  0x000000010708e579: hlt    
  0x000000010708e57a: hlt    
  0x000000010708e57b: hlt    
  0x000000010708e57c: hlt    
  0x000000010708e57d: hlt    
  0x000000010708e57e: hlt    
  0x000000010708e57f: hlt    
[Stub Code]
  0x000000010708e580: nop                       ;   {no_reloc}
  0x000000010708e581: nop
  0x000000010708e582: nop
  0x000000010708e583: nop
  0x000000010708e584: nop
  0x000000010708e585: movabs $0x0,%rbx          ;   {static_stub}
  0x000000010708e58f: jmpq   0x000000010708e58f  ;   {runtime_call}
[Exception Handler]
  0x000000010708e594: callq  0x0000000107088520  ;   {runtime_call}
  0x000000010708e599: mov    %rsp,-0x28(%rsp)
  0x000000010708e59e: sub    $0x80,%rsp
  0x000000010708e5a5: mov    %rax,0x78(%rsp)
  0x000000010708e5aa: mov    %rcx,0x70(%rsp)
  0x000000010708e5af: mov    %rdx,0x68(%rsp)
  0x000000010708e5b4: mov    %rbx,0x60(%rsp)
  0x000000010708e5b9: mov    %rbp,0x50(%rsp)
  0x000000010708e5be: mov    %rsi,0x48(%rsp)
  0x000000010708e5c3: mov    %rdi,0x40(%rsp)
  0x000000010708e5c8: mov    %r8,0x38(%rsp)
  0x000000010708e5cd: mov    %r9,0x30(%rsp)
  0x000000010708e5d2: mov    %r10,0x28(%rsp)
  0x000000010708e5d7: mov    %r11,0x20(%rsp)
  0x000000010708e5dc: mov    %r12,0x18(%rsp)
  0x000000010708e5e1: mov    %r13,0x10(%rsp)
  0x000000010708e5e6: mov    %r14,0x8(%rsp)
  0x000000010708e5eb: mov    %r15,(%rsp)
  0x000000010708e5ef: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x000000010708e5f9: movabs $0x10708e599,%rsi  ;   {internal_word}
  0x000000010708e603: mov    %rsp,%rdx
  0x000000010708e606: and    $0xfffffffffffffff0,%rsp
  0x000000010708e60a: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010708e60f: hlt    
[Deopt Handler Code]
  0x000000010708e610: movabs $0x10708e610,%r10  ;   {section_word}
  0x000000010708e61a: push   %r10
  0x000000010708e61c: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010708e621: hlt    
  0x000000010708e622: hlt    
  0x000000010708e623: hlt    
  0x000000010708e624: hlt    
  0x000000010708e625: hlt    
  0x000000010708e626: hlt    
  0x000000010708e627: hlt    
Decoding compiled method 0x000000010708ded0:
Code:
[Entry Point]
  # {method} {0x000000011ae12918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System'
  # parm0:    rsi:rsi   = 'java/lang/Object'
  # parm1:    rdx       = int
  # parm2:    rcx:rcx   = 'java/lang/Object'
  # parm3:    r8        = int
  # parm4:    r9        = int
  #           [sp+0x60]  (sp of caller)
  0x000000010708e040: mov    0x8(%rsi),%r10d
  0x000000010708e044: shl    $0x3,%r10
  0x000000010708e048: cmp    %r10,%rax
  0x000000010708e04b: je     0x000000010708e058
  0x000000010708e051: jmpq   0x0000000106fd2e20  ;   {runtime_call}
  0x000000010708e056: xchg   %ax,%ax
[Verified Entry Point]
  0x000000010708e058: mov    %eax,-0x14000(%rsp)
  0x000000010708e05f: push   %rbp
  0x000000010708e060: mov    %rsp,%rbp
  0x000000010708e063: sub    $0x50,%rsp
  0x000000010708e067: mov    %r9,(%rsp)
  0x000000010708e06b: mov    %r8,%r9
  0x000000010708e06e: mov    %rcx,0x18(%rsp)
  0x000000010708e073: cmp    $0x0,%rcx
  0x000000010708e077: lea    0x18(%rsp),%r8
  0x000000010708e07c: cmove  0x18(%rsp),%r8
  0x000000010708e082: mov    %rdx,%rcx
  0x000000010708e085: mov    %rsi,0x8(%rsp)
  0x000000010708e08a: cmp    $0x0,%rsi
  0x000000010708e08e: lea    0x8(%rsp),%rdx
  0x000000010708e093: cmove  0x8(%rsp),%rdx
  0x000000010708e099: movabs $0x795580c78,%r14  ;   {oop(a 'java/lang/Class' = 'java/lang/System')}
  0x000000010708e0a3: mov    %r14,0x38(%rsp)
  0x000000010708e0a8: lea    0x38(%rsp),%r14
  0x000000010708e0ad: mov    %r14,%rsi          ; OopMap{[24]=Oop [8]=Oop [56]=Oop off=112}
  0x000000010708e0b0: movabs $0x10708e0b0,%r10  ;   {section_word}
  0x000000010708e0ba: mov    %r10,0x1e0(%r15)
  0x000000010708e0c1: mov    %rsp,0x1d8(%r15)
  0x000000010708e0c8: cmpb   $0x0,-0x7b40a5(%rip)        # 0x00000001068da02a
                                                ;   {external_word}
  0x000000010708e0cf: je     0x000000010708e113
  0x000000010708e0d5: push   %rsi
  0x000000010708e0d6: push   %rdx
  0x000000010708e0d7: push   %rcx
  0x000000010708e0d8: push   %r8
  0x000000010708e0da: push   %r9
  0x000000010708e0dc: movabs $0x11ae12918,%rsi  ;   {metadata({method} {0x000000011ae12918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x000000010708e0e6: mov    %r15,%rdi
  0x000000010708e0e9: test   $0xf,%esp
  0x000000010708e0ef: je     0x000000010708e107
  0x000000010708e0f5: sub    $0x8,%rsp
  0x000000010708e0f9: callq  0x00000001064e0024  ;   {runtime_call}
  0x000000010708e0fe: add    $0x8,%rsp
  0x000000010708e102: jmpq   0x000000010708e10c
  0x000000010708e107: callq  0x00000001064e0024  ;   {runtime_call}
  0x000000010708e10c: pop    %r9
  0x000000010708e10e: pop    %r8
  0x000000010708e110: pop    %rcx
  0x000000010708e111: pop    %rdx
  0x000000010708e112: pop    %rsi
  0x000000010708e113: lea    0x1f8(%r15),%rdi
  0x000000010708e11a: movl   $0x4,0x270(%r15)
  0x000000010708e125: callq  0x0000000106340cc4  ;   {runtime_call}
  0x000000010708e12a: vzeroupper 
  0x000000010708e12d: movl   $0x5,0x270(%r15)
  0x000000010708e138: lock addl $0x0,(%rsp)
  0x000000010708e13d: cmpl   $0x0,-0x7a9b87(%rip)        # 0x00000001068e45c0
                                                ;   {external_word}
  0x000000010708e147: jne    0x000000010708e15b
  0x000000010708e14d: cmpl   $0x0,0x30(%r15)
  0x000000010708e155: je     0x000000010708e174
  0x000000010708e15b: mov    %r15,%rdi
  0x000000010708e15e: mov    %rsp,%r12
  0x000000010708e161: sub    $0x0,%rsp
  0x000000010708e165: and    $0xfffffffffffffff0,%rsp
  0x000000010708e169: callq  0x0000000106560a04  ;   {runtime_call}
  0x000000010708e16e: mov    %r12,%rsp
  0x000000010708e171: xor    %r12,%r12
  0x000000010708e174: movl   $0x8,0x270(%r15)
  0x000000010708e17f: cmpl   $0x1,0x29c(%r15)
  0x000000010708e18a: je     0x000000010708e212
  0x000000010708e190: cmpb   $0x0,-0x7b416d(%rip)        # 0x00000001068da02a
                                                ;   {external_word}
  0x000000010708e197: je     0x000000010708e1cd
  0x000000010708e19d: movabs $0x11ae12918,%rsi  ;   {metadata({method} {0x000000011ae12918} 'arraycopy' '(Ljava/lang/Object;ILjava/lang/Object;II)V' in 'java/lang/System')}
  0x000000010708e1a7: mov    %r15,%rdi
  0x000000010708e1aa: test   $0xf,%esp
  0x000000010708e1b0: je     0x000000010708e1c8
  0x000000010708e1b6: sub    $0x8,%rsp
  0x000000010708e1ba: callq  0x00000001064dff96  ;   {runtime_call}
  0x000000010708e1bf: add    $0x8,%rsp
  0x000000010708e1c3: jmpq   0x000000010708e1cd
  0x000000010708e1c8: callq  0x00000001064dff96  ;   {runtime_call}
  0x000000010708e1cd: movabs $0x0,%r10
  0x000000010708e1d7: mov    %r10,0x1d8(%r15)
  0x000000010708e1de: movabs $0x0,%r10
  0x000000010708e1e8: mov    %r10,0x1e0(%r15)
  0x000000010708e1ef: mov    0x38(%r15),%rcx
  0x000000010708e1f3: movl   $0x0,0x100(%rcx)
  0x000000010708e1fd: leaveq 
  0x000000010708e1fe: cmpq   $0x0,0x8(%r15)
  0x000000010708e206: jne    0x000000010708e20d
  0x000000010708e20c: retq   
  0x000000010708e20d: jmpq   Stub::forward exception  ;   {runtime_call}
  0x000000010708e212: mov    %rsp,%r12
  0x000000010708e215: sub    $0x0,%rsp
  0x000000010708e219: and    $0xfffffffffffffff0,%rsp
  0x000000010708e21d: callq  0x00000001064dde08  ;   {runtime_call}
  0x000000010708e222: mov    %r12,%rsp
  0x000000010708e225: xor    %r12,%r12
  0x000000010708e228: jmpq   0x000000010708e190
  0x000000010708e22d: hlt    
  0x000000010708e22e: hlt    
  0x000000010708e22f: hlt    
Decoding compiled method 0x000000010708db10:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011adfcc60} 'length' '()I' in 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x000000010708dc80: mov    0x8(%rsi),%r10d
  0x000000010708dc84: shl    $0x3,%r10
  0x000000010708dc88: cmp    %rax,%r10
  0x000000010708dc8b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x000000010708dc91: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010708dc9c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x000000010708dca0: mov    %eax,-0x14000(%rsp)
  0x000000010708dca7: push   %rbp
  0x000000010708dca8: sub    $0x30,%rsp
  0x000000010708dcac: movabs $0x11afe1570,%rax  ;   {metadata(method data for {method} {0x000000011adfcc60} 'length' '()I' in 'java/lang/String')}
  0x000000010708dcb6: mov    0xdc(%rax),%edi
  0x000000010708dcbc: add    $0x8,%edi
  0x000000010708dcbf: mov    %edi,0xdc(%rax)
  0x000000010708dcc5: movabs $0x11adfcc60,%rax  ;   {metadata({method} {0x000000011adfcc60} 'length' '()I' in 'java/lang/String')}
  0x000000010708dccf: and    $0x1ff8,%edi
  0x000000010708dcd5: cmp    $0x0,%edi
  0x000000010708dcd8: je     0x000000010708dcf4  ;*aload_0
                                                ; - java.lang.String::length@0 (line 623)

  0x000000010708dcde: mov    0xc(%rsi),%eax
  0x000000010708dce1: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::length@1 (line 623)

  0x000000010708dce5: mov    0xc(%rax),%eax     ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ; implicit exception: dispatches to 0x000000010708dd08
  0x000000010708dce8: add    $0x30,%rsp
  0x000000010708dcec: pop    %rbp
  0x000000010708dced: test   %eax,-0x1919bf3(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708dcf3: retq   
  0x000000010708dcf4: mov    %rax,0x8(%rsp)
  0x000000010708dcf9: movq   $0xffffffffffffffff,(%rsp)
  0x000000010708dd01: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=134}
                                                ;*synchronization entry
                                                ; - java.lang.String::length@-1 (line 623)
                                                ;   {runtime_call}
  0x000000010708dd06: jmp    0x000000010708dcde
  0x000000010708dd08: callq  0x0000000107086680  ; OopMap{off=141}
                                                ;*arraylength
                                                ; - java.lang.String::length@4 (line 623)
                                                ;   {runtime_call}
  0x000000010708dd0d: nop
  0x000000010708dd0e: nop
  0x000000010708dd0f: mov    0x2a8(%r15),%rax
  0x000000010708dd16: movabs $0x0,%r10
  0x000000010708dd20: mov    %r10,0x2a8(%r15)
  0x000000010708dd27: movabs $0x0,%r10
  0x000000010708dd31: mov    %r10,0x2b0(%r15)
  0x000000010708dd38: add    $0x30,%rsp
  0x000000010708dd3c: pop    %rbp
  0x000000010708dd3d: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x000000010708dd42: hlt    
  0x000000010708dd43: hlt    
  0x000000010708dd44: hlt    
  0x000000010708dd45: hlt    
  0x000000010708dd46: hlt    
  0x000000010708dd47: hlt    
  0x000000010708dd48: hlt    
  0x000000010708dd49: hlt    
  0x000000010708dd4a: hlt    
  0x000000010708dd4b: hlt    
  0x000000010708dd4c: hlt    
  0x000000010708dd4d: hlt    
  0x000000010708dd4e: hlt    
  0x000000010708dd4f: hlt    
  0x000000010708dd50: hlt    
  0x000000010708dd51: hlt    
  0x000000010708dd52: hlt    
  0x000000010708dd53: hlt    
  0x000000010708dd54: hlt    
  0x000000010708dd55: hlt    
  0x000000010708dd56: hlt    
  0x000000010708dd57: hlt    
  0x000000010708dd58: hlt    
  0x000000010708dd59: hlt    
  0x000000010708dd5a: hlt    
  0x000000010708dd5b: hlt    
  0x000000010708dd5c: hlt    
  0x000000010708dd5d: hlt    
  0x000000010708dd5e: hlt    
  0x000000010708dd5f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010708dd60: callq  0x0000000107088520  ;   {no_reloc}
  0x000000010708dd65: mov    %rsp,-0x28(%rsp)
  0x000000010708dd6a: sub    $0x80,%rsp
  0x000000010708dd71: mov    %rax,0x78(%rsp)
  0x000000010708dd76: mov    %rcx,0x70(%rsp)
  0x000000010708dd7b: mov    %rdx,0x68(%rsp)
  0x000000010708dd80: mov    %rbx,0x60(%rsp)
  0x000000010708dd85: mov    %rbp,0x50(%rsp)
  0x000000010708dd8a: mov    %rsi,0x48(%rsp)
  0x000000010708dd8f: mov    %rdi,0x40(%rsp)
  0x000000010708dd94: mov    %r8,0x38(%rsp)
  0x000000010708dd99: mov    %r9,0x30(%rsp)
  0x000000010708dd9e: mov    %r10,0x28(%rsp)
  0x000000010708dda3: mov    %r11,0x20(%rsp)
  0x000000010708dda8: mov    %r12,0x18(%rsp)
  0x000000010708ddad: mov    %r13,0x10(%rsp)
  0x000000010708ddb2: mov    %r14,0x8(%rsp)
  0x000000010708ddb7: mov    %r15,(%rsp)
  0x000000010708ddbb: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x000000010708ddc5: movabs $0x10708dd65,%rsi  ;   {internal_word}
  0x000000010708ddcf: mov    %rsp,%rdx
  0x000000010708ddd2: and    $0xfffffffffffffff0,%rsp
  0x000000010708ddd6: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010708dddb: hlt    
[Deopt Handler Code]
  0x000000010708dddc: movabs $0x10708dddc,%r10  ;   {section_word}
  0x000000010708dde6: push   %r10
  0x000000010708dde8: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010708dded: hlt    
  0x000000010708ddee: hlt    
  0x000000010708ddef: hlt    
Decoding compiled method 0x000000010708ffd0:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011adf9480} '<init>' '()V' in 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x0000000107090140: mov    0x8(%rsi),%r10d
  0x0000000107090144: shl    $0x3,%r10
  0x0000000107090148: cmp    %rax,%r10
  0x000000010709014b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x0000000107090151: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010709015c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x0000000107090160: mov    %eax,-0x14000(%rsp)
  0x0000000107090167: push   %rbp
  0x0000000107090168: sub    $0x30,%rsp
  0x000000010709016c: movabs $0x11af6a790,%rdi  ;   {metadata(method data for {method} {0x000000011adf9480} '<init>' '()V' in 'java/lang/Object')}
  0x0000000107090176: mov    0xdc(%rdi),%ebx
  0x000000010709017c: add    $0x8,%ebx
  0x000000010709017f: mov    %ebx,0xdc(%rdi)
  0x0000000107090185: movabs $0x11adf9480,%rdi  ;   {metadata({method} {0x000000011adf9480} '<init>' '()V' in 'java/lang/Object')}
  0x000000010709018f: and    $0x1ff8,%ebx
  0x0000000107090195: cmp    $0x0,%ebx
  0x0000000107090198: je     0x00000001070901b7
  0x000000010709019e: mov    %rsi,%rdi          ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)

  0x00000001070901a1: mov    %rsi,0x20(%rsp)
  0x00000001070901a6: callq  0x00000001070868a0  ; OopMap{[32]=Oop off=107}
                                                ;*return
                                                ; - java.lang.Object::<init>@0 (line 37)
                                                ;   {runtime_call}
  0x00000001070901ab: add    $0x30,%rsp
  0x00000001070901af: pop    %rbp
  0x00000001070901b0: test   %eax,-0x191c0b6(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x00000001070901b6: retq   
  0x00000001070901b7: mov    %rdi,0x8(%rsp)
  0x00000001070901bc: movq   $0xffffffffffffffff,(%rsp)
  0x00000001070901c4: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=137}
                                                ;*synchronization entry
                                                ; - java.lang.Object::<init>@-1 (line 37)
                                                ;   {runtime_call}
  0x00000001070901c9: jmp    0x000000010709019e
  0x00000001070901cb: nop
  0x00000001070901cc: nop
  0x00000001070901cd: mov    0x2a8(%r15),%rax
  0x00000001070901d4: movabs $0x0,%r10
  0x00000001070901de: mov    %r10,0x2a8(%r15)
  0x00000001070901e5: movabs $0x0,%r10
  0x00000001070901ef: mov    %r10,0x2b0(%r15)
  0x00000001070901f6: add    $0x30,%rsp
  0x00000001070901fa: pop    %rbp
  0x00000001070901fb: jmpq   0x0000000106ff90e0  ;   {runtime_call}
[Exception Handler]
[Stub Code]
  0x0000000107090200: callq  0x0000000107088520  ;   {no_reloc}
  0x0000000107090205: mov    %rsp,-0x28(%rsp)
  0x000000010709020a: sub    $0x80,%rsp
  0x0000000107090211: mov    %rax,0x78(%rsp)
  0x0000000107090216: mov    %rcx,0x70(%rsp)
  0x000000010709021b: mov    %rdx,0x68(%rsp)
  0x0000000107090220: mov    %rbx,0x60(%rsp)
  0x0000000107090225: mov    %rbp,0x50(%rsp)
  0x000000010709022a: mov    %rsi,0x48(%rsp)
  0x000000010709022f: mov    %rdi,0x40(%rsp)
  0x0000000107090234: mov    %r8,0x38(%rsp)
  0x0000000107090239: mov    %r9,0x30(%rsp)
  0x000000010709023e: mov    %r10,0x28(%rsp)
  0x0000000107090243: mov    %r11,0x20(%rsp)
  0x0000000107090248: mov    %r12,0x18(%rsp)
  0x000000010709024d: mov    %r13,0x10(%rsp)
  0x0000000107090252: mov    %r14,0x8(%rsp)
  0x0000000107090257: mov    %r15,(%rsp)
  0x000000010709025b: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x0000000107090265: movabs $0x107090205,%rsi  ;   {internal_word}
  0x000000010709026f: mov    %rsp,%rdx
  0x0000000107090272: and    $0xfffffffffffffff0,%rsp
  0x0000000107090276: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010709027b: hlt    
[Deopt Handler Code]
  0x000000010709027c: movabs $0x10709027c,%r10  ;   {section_word}
  0x0000000107090286: push   %r10
  0x0000000107090288: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010709028d: hlt    
  0x000000010709028e: hlt    
  0x000000010709028f: hlt    
Decoding compiled method 0x000000010708f850:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  # parm1:    rcx       = int
  #           [sp+0x40]  (sp of caller)
  0x000000010708f9e0: mov    0x8(%rsi),%r10d
  0x000000010708f9e4: shl    $0x3,%r10
  0x000000010708f9e8: cmp    %rax,%r10
  0x000000010708f9eb: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x000000010708f9f1: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010708f9fc: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x000000010708fa00: mov    %eax,-0x14000(%rsp)
  0x000000010708fa07: push   %rbp
  0x000000010708fa08: sub    $0x30,%rsp
  0x000000010708fa0c: movabs $0x11aff2b58,%rax  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fa16: mov    0xdc(%rax),%edi
  0x000000010708fa1c: add    $0x8,%edi
  0x000000010708fa1f: mov    %edi,0xdc(%rax)
  0x000000010708fa25: movabs $0x11adfe178,%rax  ;   {metadata({method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fa2f: and    $0x1ff8,%edi
  0x000000010708fa35: cmp    $0x0,%edi
  0x000000010708fa38: je     0x000000010708fc41  ;*aload_0
                                                ; - java.lang.String::indexOf@0 (line 1546)

  0x000000010708fa3e: mov    0xc(%rsi),%eax
  0x000000010708fa41: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::indexOf@1 (line 1546)

  0x000000010708fa45: mov    0xc(%rax),%edi     ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1546)
                                                ; implicit exception: dispatches to 0x000000010708fc58
  0x000000010708fa48: cmp    $0x0,%ecx
  0x000000010708fa4b: movabs $0x11aff2b58,%rbx  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fa55: movabs $0x108,%r8
  0x000000010708fa5f: jge    0x000000010708fa6f
  0x000000010708fa65: movabs $0x118,%r8
  0x000000010708fa6f: mov    (%rbx,%r8,1),%r9
  0x000000010708fa73: lea    0x1(%r9),%r9
  0x000000010708fa77: mov    %r9,(%rbx,%r8,1)
  0x000000010708fa7b: jge    0x000000010708fa9b  ;*ifge
                                                ; - java.lang.String::indexOf@7 (line 1547)

  0x000000010708fa81: movabs $0x11aff2b58,%rcx  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fa8b: incl   0x128(%rcx)
  0x000000010708fa91: mov    $0x0,%ecx
  0x000000010708fa96: jmpq   0x000000010708fad3  ;*goto
                                                ; - java.lang.String::indexOf@12 (line 1548)

  0x000000010708fa9b: cmp    %edi,%ecx
  0x000000010708fa9d: movabs $0x11aff2b58,%rbx  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708faa7: movabs $0x140,%r8
  0x000000010708fab1: jl     0x000000010708fac1
  0x000000010708fab7: movabs $0x150,%r8
  0x000000010708fac1: mov    (%rbx,%r8,1),%r9
  0x000000010708fac5: lea    0x1(%r9),%r9
  0x000000010708fac9: mov    %r9,(%rbx,%r8,1)
  0x000000010708facd: jge    0x000000010708fc30  ;*if_icmplt
                                                ; - java.lang.String::indexOf@17 (line 1549)

  0x000000010708fad3: cmp    $0x10000,%edx
  0x000000010708fad9: movabs $0x11aff2b58,%rbx  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fae3: movabs $0x160,%r8
  0x000000010708faed: jge    0x000000010708fafd
  0x000000010708faf3: movabs $0x170,%r8
  0x000000010708fafd: mov    (%rbx,%r8,1),%r9
  0x000000010708fb01: lea    0x1(%r9),%r9
  0x000000010708fb05: mov    %r9,(%rbx,%r8,1)
  0x000000010708fb09: jge    0x000000010708fc08
  0x000000010708fb0f: jmpq   0x000000010708fbab  ;*if_icmpge
                                                ; - java.lang.String::indexOf@25 (line 1554)

  0x000000010708fb14: nopl   0x0(%rax)
  0x000000010708fb18: movslq %ecx,%rsi
  0x000000010708fb1b: cmp    0xc(%rax),%ecx
  0x000000010708fb1e: jae    0x000000010708fc5d
  0x000000010708fb24: movzwl 0x10(%rax,%rsi,2),%esi  ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1559)

  0x000000010708fb29: cmp    %edx,%esi
  0x000000010708fb2b: movabs $0x11aff2b58,%rsi  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fb35: movabs $0x1a0,%rbx
  0x000000010708fb3f: jne    0x000000010708fb4f
  0x000000010708fb45: movabs $0x1b0,%rbx
  0x000000010708fb4f: mov    (%rsi,%rbx,1),%r8
  0x000000010708fb53: lea    0x1(%r8),%r8
  0x000000010708fb57: mov    %r8,(%rsi,%rbx,1)
  0x000000010708fb5b: je     0x000000010708fbe8  ;*if_icmpne
                                                ; - java.lang.String::indexOf@49 (line 1559)

  0x000000010708fb61: inc    %ecx
  0x000000010708fb63: movabs $0x11aff2b58,%rsi  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fb6d: mov    0xe0(%rsi),%ebx
  0x000000010708fb73: add    $0x8,%ebx
  0x000000010708fb76: mov    %ebx,0xe0(%rsi)
  0x000000010708fb7c: movabs $0x11adfe178,%rsi  ;   {metadata({method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fb86: and    $0xfff8,%ebx
  0x000000010708fb8c: cmp    $0x0,%ebx
  0x000000010708fb8f: je     0x000000010708fc66  ; OopMap{rax=Oop off=437}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)

  0x000000010708fb95: test   %eax,-0x191ba9b(%rip)        # 0x0000000105774100
                                                ;   {poll}
  0x000000010708fb9b: movabs $0x11aff2b58,%rsi  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fba5: incl   0x1c0(%rsi)        ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)

  0x000000010708fbab: cmp    %edi,%ecx
  0x000000010708fbad: movabs $0x11aff2b58,%rsi  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fbb7: movabs $0x180,%rbx
  0x000000010708fbc1: jge    0x000000010708fbd1
  0x000000010708fbc7: movabs $0x190,%rbx
  0x000000010708fbd1: mov    (%rsi,%rbx,1),%r8
  0x000000010708fbd5: lea    0x1(%r8),%r8
  0x000000010708fbd9: mov    %r8,(%rsi,%rbx,1)
  0x000000010708fbdd: jge    0x000000010708fbf7
  0x000000010708fbe3: jmpq   0x000000010708fb18  ;*if_icmpge
                                                ; - java.lang.String::indexOf@40 (line 1558)

  0x000000010708fbe8: mov    %rcx,%rax
  0x000000010708fbeb: add    $0x30,%rsp
  0x000000010708fbef: pop    %rbp
  0x000000010708fbf0: test   %eax,-0x191baf6(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708fbf6: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@54 (line 1560)

  0x000000010708fbf7: mov    $0xffffffff,%eax
  0x000000010708fbfc: add    $0x30,%rsp
  0x000000010708fc00: pop    %rbp
  0x000000010708fc01: test   %eax,-0x191bb07(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708fc07: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@62 (line 1563)

  0x000000010708fc08: mov    %rsi,%rdi
  0x000000010708fc0b: movabs $0x11aff2b58,%rbx  ;   {metadata(method data for {method} {0x000000011adfe178} 'indexOf' '(II)I' in 'java/lang/String')}
  0x000000010708fc15: addq   $0x1,0x1d8(%rbx)
  0x000000010708fc1d: nop
  0x000000010708fc1e: nop
  0x000000010708fc1f: callq  0x0000000106fd3020  ; OopMap{off=580}
                                                ;*invokespecial indexOfSupplementary
                                                ; - java.lang.String::indexOf@66 (line 1565)
                                                ;   {optimized virtual_call}
  0x000000010708fc24: add    $0x30,%rsp
  0x000000010708fc28: pop    %rbp
  0x000000010708fc29: test   %eax,-0x191bb2f(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708fc2f: retq                      ;*ireturn
                                                ; - java.lang.String::indexOf@69 (line 1565)

  0x000000010708fc30: mov    $0xffffffff,%eax
  0x000000010708fc35: add    $0x30,%rsp
  0x000000010708fc39: pop    %rbp
  0x000000010708fc3a: test   %eax,-0x191bb40(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708fc40: retq   
  0x000000010708fc41: mov    %rax,0x8(%rsp)
  0x000000010708fc46: movq   $0xffffffffffffffff,(%rsp)
  0x000000010708fc4e: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=627}
                                                ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1546)
                                                ;   {runtime_call}
  0x000000010708fc53: jmpq   0x000000010708fa3e
  0x000000010708fc58: callq  0x0000000107086680  ; OopMap{rsi=Oop rax=Oop off=637}
                                                ;*arraylength
                                                ; - java.lang.String::indexOf@4 (line 1546)
                                                ;   {runtime_call}
  0x000000010708fc5d: mov    %rcx,(%rsp)
  0x000000010708fc61: callq  0x0000000106ff8c40  ; OopMap{rax=Oop off=646}
                                                ;*caload
                                                ; - java.lang.String::indexOf@47 (line 1559)
                                                ;   {runtime_call}
  0x000000010708fc66: mov    %rsi,0x8(%rsp)
  0x000000010708fc6b: movq   $0x3a,(%rsp)
  0x000000010708fc73: callq  0x000000010708aba0  ; OopMap{rax=Oop off=664}
                                                ;*goto
                                                ; - java.lang.String::indexOf@58 (line 1558)
                                                ;   {runtime_call}
  0x000000010708fc78: jmpq   0x000000010708fb95
  0x000000010708fc7d: nop
  0x000000010708fc7e: nop
  0x000000010708fc7f: mov    0x2a8(%r15),%rax
  0x000000010708fc86: movabs $0x0,%r10
  0x000000010708fc90: mov    %r10,0x2a8(%r15)
  0x000000010708fc97: movabs $0x0,%r10
  0x000000010708fca1: mov    %r10,0x2b0(%r15)
  0x000000010708fca8: add    $0x30,%rsp
  0x000000010708fcac: pop    %rbp
  0x000000010708fcad: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x000000010708fcb2: hlt    
  0x000000010708fcb3: hlt    
  0x000000010708fcb4: hlt    
  0x000000010708fcb5: hlt    
  0x000000010708fcb6: hlt    
  0x000000010708fcb7: hlt    
  0x000000010708fcb8: hlt    
  0x000000010708fcb9: hlt    
  0x000000010708fcba: hlt    
  0x000000010708fcbb: hlt    
  0x000000010708fcbc: hlt    
  0x000000010708fcbd: hlt    
  0x000000010708fcbe: hlt    
  0x000000010708fcbf: hlt    
[Stub Code]
  0x000000010708fcc0: nop                       ;   {no_reloc}
  0x000000010708fcc1: nop
  0x000000010708fcc2: nop
  0x000000010708fcc3: nop
  0x000000010708fcc4: nop
  0x000000010708fcc5: movabs $0x0,%rbx          ;   {static_stub}
  0x000000010708fccf: jmpq   0x000000010708fccf  ;   {runtime_call}
[Exception Handler]
  0x000000010708fcd4: callq  0x0000000107088520  ;   {runtime_call}
  0x000000010708fcd9: mov    %rsp,-0x28(%rsp)
  0x000000010708fcde: sub    $0x80,%rsp
  0x000000010708fce5: mov    %rax,0x78(%rsp)
  0x000000010708fcea: mov    %rcx,0x70(%rsp)
  0x000000010708fcef: mov    %rdx,0x68(%rsp)
  0x000000010708fcf4: mov    %rbx,0x60(%rsp)
  0x000000010708fcf9: mov    %rbp,0x50(%rsp)
  0x000000010708fcfe: mov    %rsi,0x48(%rsp)
  0x000000010708fd03: mov    %rdi,0x40(%rsp)
  0x000000010708fd08: mov    %r8,0x38(%rsp)
  0x000000010708fd0d: mov    %r9,0x30(%rsp)
  0x000000010708fd12: mov    %r10,0x28(%rsp)
  0x000000010708fd17: mov    %r11,0x20(%rsp)
  0x000000010708fd1c: mov    %r12,0x18(%rsp)
  0x000000010708fd21: mov    %r13,0x10(%rsp)
  0x000000010708fd26: mov    %r14,0x8(%rsp)
  0x000000010708fd2b: mov    %r15,(%rsp)
  0x000000010708fd2f: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x000000010708fd39: movabs $0x10708fcd9,%rsi  ;   {internal_word}
  0x000000010708fd43: mov    %rsp,%rdx
  0x000000010708fd46: and    $0xfffffffffffffff0,%rsp
  0x000000010708fd4a: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010708fd4f: hlt    
[Deopt Handler Code]
  0x000000010708fd50: movabs $0x10708fd50,%r10  ;   {section_word}
  0x000000010708fd5a: push   %r10
  0x000000010708fd5c: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010708fd61: hlt    
  0x000000010708fd62: hlt    
  0x000000010708fd63: hlt    
  0x000000010708fd64: hlt    
  0x000000010708fd65: hlt    
  0x000000010708fd66: hlt    
  0x000000010708fd67: hlt    
Decoding compiled method 0x000000010708ee50:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx:rdx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x000000010708efe0: mov    0x8(%rsi),%r10d
  0x000000010708efe4: shl    $0x3,%r10
  0x000000010708efe8: cmp    %rax,%r10
  0x000000010708efeb: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x000000010708eff1: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010708effc: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x000000010708f000: mov    %eax,-0x14000(%rsp)
  0x000000010708f007: push   %rbp
  0x000000010708f008: sub    $0x30,%rsp
  0x000000010708f00c: movabs $0x11aff3b88,%rax  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f016: mov    0xdc(%rax),%edi
  0x000000010708f01c: add    $0x8,%edi
  0x000000010708f01f: mov    %edi,0xdc(%rax)
  0x000000010708f025: movabs $0x11adfd618,%rax  ;   {metadata({method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f02f: and    $0x1ff8,%edi
  0x000000010708f035: cmp    $0x0,%edi
  0x000000010708f038: je     0x000000010708f406  ;*aload_0
                                                ; - java.lang.String::equals@0 (line 977)

  0x000000010708f03e: cmp    %rdx,%rsi
  0x000000010708f041: movabs $0x11aff3b88,%rax  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f04b: movabs $0x108,%rdi
  0x000000010708f055: jne    0x000000010708f065
  0x000000010708f05b: movabs $0x118,%rdi
  0x000000010708f065: mov    (%rax,%rdi,1),%rbx
  0x000000010708f069: lea    0x1(%rbx),%rbx
  0x000000010708f06d: mov    %rbx,(%rax,%rdi,1)
  0x000000010708f071: je     0x000000010708f3f5  ;*if_acmpne
                                                ; - java.lang.String::equals@2 (line 977)

  0x000000010708f077: cmp    $0x0,%rdx
  0x000000010708f07b: jne    0x000000010708f096
  0x000000010708f07d: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f087: orl    $0x100,0x120(%rbx)
  0x000000010708f091: jmpq   0x000000010708f156
  0x000000010708f096: movabs $0x7c00016d0,%rcx  ;   {metadata('java/lang/String')}
  0x000000010708f0a0: mov    0x8(%rdx),%edi
  0x000000010708f0a3: shl    $0x3,%rdi
  0x000000010708f0a7: cmp    %rdi,%rcx
  0x000000010708f0aa: jne    0x000000010708f13a
  0x000000010708f0b0: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f0ba: mov    0x8(%rdx),%ecx
  0x000000010708f0bd: shl    $0x3,%rcx
  0x000000010708f0c1: cmp    0x130(%rbx),%rcx
  0x000000010708f0c8: jne    0x000000010708f0d7
  0x000000010708f0ca: addq   $0x1,0x138(%rbx)
  0x000000010708f0d2: jmpq   0x000000010708f15b
  0x000000010708f0d7: cmp    0x140(%rbx),%rcx
  0x000000010708f0de: jne    0x000000010708f0ed
  0x000000010708f0e0: addq   $0x1,0x148(%rbx)
  0x000000010708f0e8: jmpq   0x000000010708f15b
  0x000000010708f0ed: cmpq   $0x0,0x130(%rbx)
  0x000000010708f0f8: jne    0x000000010708f111
  0x000000010708f0fa: mov    %rcx,0x130(%rbx)
  0x000000010708f101: movq   $0x1,0x138(%rbx)
  0x000000010708f10c: jmpq   0x000000010708f15b
  0x000000010708f111: cmpq   $0x0,0x140(%rbx)
  0x000000010708f11c: jne    0x000000010708f135
  0x000000010708f11e: mov    %rcx,0x140(%rbx)
  0x000000010708f125: movq   $0x1,0x148(%rbx)
  0x000000010708f130: jmpq   0x000000010708f15b
  0x000000010708f135: jmpq   0x000000010708f15b
  0x000000010708f13a: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f144: subq   $0x1,0x128(%rbx)
  0x000000010708f14c: jmpq   0x000000010708f156
  0x000000010708f151: jmpq   0x000000010708f15b
  0x000000010708f156: xor    %rax,%rax
  0x000000010708f159: jmp    0x000000010708f165
  0x000000010708f15b: movabs $0x1,%rax          ;*instanceof
                                                ; - java.lang.String::equals@8 (line 980)

  0x000000010708f165: cmp    $0x0,%eax
  0x000000010708f168: movabs $0x11aff3b88,%rax  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f172: movabs $0x158,%rdi
  0x000000010708f17c: je     0x000000010708f18c
  0x000000010708f182: movabs $0x168,%rdi
  0x000000010708f18c: mov    (%rax,%rdi,1),%rbx
  0x000000010708f190: lea    0x1(%rbx),%rbx
  0x000000010708f194: mov    %rbx,(%rax,%rdi,1)
  0x000000010708f198: je     0x000000010708f3e4  ;*ifeq
                                                ; - java.lang.String::equals@11 (line 980)

  0x000000010708f19e: cmp    $0x0,%rdx
  0x000000010708f1a2: jne    0x000000010708f1bd
  0x000000010708f1a4: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f1ae: orl    $0x100,0x170(%rbx)
  0x000000010708f1b8: jmpq   0x000000010708f27d
  0x000000010708f1bd: movabs $0x7c00016d0,%rax  ;   {metadata('java/lang/String')}
  0x000000010708f1c7: mov    0x8(%rdx),%edi
  0x000000010708f1ca: shl    $0x3,%rdi
  0x000000010708f1ce: cmp    %rdi,%rax
  0x000000010708f1d1: jne    0x000000010708f261
  0x000000010708f1d7: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f1e1: mov    0x8(%rdx),%eax
  0x000000010708f1e4: shl    $0x3,%rax
  0x000000010708f1e8: cmp    0x180(%rbx),%rax
  0x000000010708f1ef: jne    0x000000010708f1fe
  0x000000010708f1f1: addq   $0x1,0x188(%rbx)
  0x000000010708f1f9: jmpq   0x000000010708f27d
  0x000000010708f1fe: cmp    0x190(%rbx),%rax
  0x000000010708f205: jne    0x000000010708f214
  0x000000010708f207: addq   $0x1,0x198(%rbx)
  0x000000010708f20f: jmpq   0x000000010708f27d
  0x000000010708f214: cmpq   $0x0,0x180(%rbx)
  0x000000010708f21f: jne    0x000000010708f238
  0x000000010708f221: mov    %rax,0x180(%rbx)
  0x000000010708f228: movq   $0x1,0x188(%rbx)
  0x000000010708f233: jmpq   0x000000010708f27d
  0x000000010708f238: cmpq   $0x0,0x190(%rbx)
  0x000000010708f243: jne    0x000000010708f25c
  0x000000010708f245: mov    %rax,0x190(%rbx)
  0x000000010708f24c: movq   $0x1,0x198(%rbx)
  0x000000010708f257: jmpq   0x000000010708f27d
  0x000000010708f25c: jmpq   0x000000010708f27d
  0x000000010708f261: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f26b: subq   $0x1,0x178(%rbx)
  0x000000010708f273: jmpq   0x000000010708f41d
  0x000000010708f278: jmpq   0x000000010708f27d
  0x000000010708f27d: mov    %rdx,%rax          ;*checkcast
                                                ; - java.lang.String::equals@15 (line 981)

  0x000000010708f280: mov    0xc(%rsi),%esi
  0x000000010708f283: shl    $0x3,%rsi          ;*getfield value
                                                ; - java.lang.String::equals@20 (line 982)

  0x000000010708f287: mov    0xc(%rsi),%edi     ;*arraylength
                                                ; - java.lang.String::equals@23 (line 982)
                                                ; implicit exception: dispatches to 0x000000010708f426
  0x000000010708f28a: mov    0xc(%rax),%eax     ; implicit exception: dispatches to 0x000000010708f42b
  0x000000010708f28d: shl    $0x3,%rax          ;*getfield value
                                                ; - java.lang.String::equals@27 (line 983)

  0x000000010708f291: mov    0xc(%rax),%ebx     ;*arraylength
                                                ; - java.lang.String::equals@30 (line 983)
                                                ; implicit exception: dispatches to 0x000000010708f430
  0x000000010708f294: cmp    %ebx,%edi
  0x000000010708f296: movabs $0x11aff3b88,%rbx  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f2a0: movabs $0x1a8,%rdx
  0x000000010708f2aa: jne    0x000000010708f2ba
  0x000000010708f2b0: movabs $0x1b8,%rdx
  0x000000010708f2ba: mov    (%rbx,%rdx,1),%rcx
  0x000000010708f2be: lea    0x1(%rcx),%rcx
  0x000000010708f2c2: mov    %rcx,(%rbx,%rdx,1)
  0x000000010708f2c6: jne    0x000000010708f3e4  ;*if_icmpne
                                                ; - java.lang.String::equals@31 (line 983)

  0x000000010708f2cc: mov    $0x0,%ebx
  0x000000010708f2d1: jmpq   0x000000010708f37f  ;*iload_3
                                                ; - java.lang.String::equals@49 (line 987)

  0x000000010708f2d6: xchg   %ax,%ax
  0x000000010708f2d8: movslq %ebx,%rdi
  0x000000010708f2db: cmp    0xc(%rsi),%ebx
  0x000000010708f2de: jae    0x000000010708f435
  0x000000010708f2e4: movzwl 0x10(%rsi,%rdi,2),%edi  ;*caload
                                                ; - java.lang.String::equals@60 (line 988)

  0x000000010708f2e9: movslq %ebx,%rcx
  0x000000010708f2ec: cmp    0xc(%rax),%ebx
  0x000000010708f2ef: jae    0x000000010708f43e
  0x000000010708f2f5: movzwl 0x10(%rax,%rcx,2),%ecx  ;*caload
                                                ; - java.lang.String::equals@65 (line 988)

  0x000000010708f2fa: cmp    %ecx,%edi
  0x000000010708f2fc: movabs $0x11aff3b88,%rdi  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f306: movabs $0x1e8,%rcx
  0x000000010708f310: je     0x000000010708f320
  0x000000010708f316: movabs $0x1f8,%rcx
  0x000000010708f320: mov    (%rdi,%rcx,1),%r8
  0x000000010708f324: lea    0x1(%r8),%r8
  0x000000010708f328: mov    %r8,(%rdi,%rcx,1)
  0x000000010708f32c: jne    0x000000010708f3c2  ;*if_icmpeq
                                                ; - java.lang.String::equals@66 (line 988)

  0x000000010708f332: inc    %ebx
  0x000000010708f334: movabs $0x11aff3b88,%rdi  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f33e: mov    0xe0(%rdi),%ecx
  0x000000010708f344: add    $0x8,%ecx
  0x000000010708f347: mov    %ecx,0xe0(%rdi)
  0x000000010708f34d: movabs $0x11adfd618,%rdi  ;   {metadata({method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f357: and    $0xfff8,%ecx
  0x000000010708f35d: cmp    $0x0,%ecx
  0x000000010708f360: je     0x000000010708f447  ; OopMap{rax=Oop rsi=Oop off=902}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 990)

  0x000000010708f366: test   %eax,-0x191b26c(%rip)        # 0x0000000105774100
                                                ;   {poll}
  0x000000010708f36c: movabs $0x11aff3b88,%rdi  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f376: incl   0x208(%rdi)
  0x000000010708f37c: mov    %rdx,%rdi          ;*goto
                                                ; - java.lang.String::equals@74 (line 990)

  0x000000010708f37f: mov    %rdi,%rdx
  0x000000010708f382: dec    %edx
  0x000000010708f384: cmp    $0x0,%edi
  0x000000010708f387: movabs $0x11aff3b88,%rdi  ;   {metadata(method data for {method} {0x000000011adfd618} 'equals' '(Ljava/lang/Object;)Z' in 'java/lang/String')}
  0x000000010708f391: movabs $0x1c8,%rcx
  0x000000010708f39b: je     0x000000010708f3ab
  0x000000010708f3a1: movabs $0x1d8,%rcx
  0x000000010708f3ab: mov    (%rdi,%rcx,1),%r8
  0x000000010708f3af: lea    0x1(%r8),%r8
  0x000000010708f3b3: mov    %r8,(%rdi,%rcx,1)
  0x000000010708f3b7: je     0x000000010708f3d3
  0x000000010708f3bd: jmpq   0x000000010708f2d8  ;*ifeq
                                                ; - java.lang.String::equals@53 (line 987)

  0x000000010708f3c2: mov    $0x0,%eax
  0x000000010708f3c7: add    $0x30,%rsp
  0x000000010708f3cb: pop    %rbp
  0x000000010708f3cc: test   %eax,-0x191b2d2(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708f3d2: retq                      ;*ireturn
                                                ; - java.lang.String::equals@70 (line 989)

  0x000000010708f3d3: mov    $0x1,%eax
  0x000000010708f3d8: add    $0x30,%rsp
  0x000000010708f3dc: pop    %rbp
  0x000000010708f3dd: test   %eax,-0x191b2e3(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708f3e3: retq                      ;*ireturn
                                                ; - java.lang.String::equals@78 (line 992)

  0x000000010708f3e4: mov    $0x0,%eax
  0x000000010708f3e9: add    $0x30,%rsp
  0x000000010708f3ed: pop    %rbp
  0x000000010708f3ee: test   %eax,-0x191b2f4(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708f3f4: retq                      ;*ireturn
                                                ; - java.lang.String::equals@80 (line 995)

  0x000000010708f3f5: mov    $0x1,%eax
  0x000000010708f3fa: add    $0x30,%rsp
  0x000000010708f3fe: pop    %rbp
  0x000000010708f3ff: test   %eax,-0x191b305(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010708f405: retq   
  0x000000010708f406: mov    %rax,0x8(%rsp)
  0x000000010708f40b: movq   $0xffffffffffffffff,(%rsp)
  0x000000010708f413: callq  0x000000010708aba0  ; OopMap{rsi=Oop rdx=Oop off=1080}
                                                ;*synchronization entry
                                                ; - java.lang.String::equals@-1 (line 977)
                                                ;   {runtime_call}
  0x000000010708f418: jmpq   0x000000010708f03e
  0x000000010708f41d: mov    %rdx,(%rsp)
  0x000000010708f421: callq  0x0000000107088880  ; OopMap{rsi=Oop off=1094}
                                                ;*checkcast
                                                ; - java.lang.String::equals@15 (line 981)
                                                ;   {runtime_call}
  0x000000010708f426: callq  0x0000000107086680  ; OopMap{rax=Oop rsi=Oop off=1099}
                                                ;*arraylength
                                                ; - java.lang.String::equals@23 (line 982)
                                                ;   {runtime_call}
  0x000000010708f42b: callq  0x0000000107086680  ; OopMap{rsi=Oop off=1104}
                                                ;*getfield value
                                                ; - java.lang.String::equals@27 (line 983)
                                                ;   {runtime_call}
  0x000000010708f430: callq  0x0000000107086680  ; OopMap{rsi=Oop rax=Oop off=1109}
                                                ;*arraylength
                                                ; - java.lang.String::equals@30 (line 983)
                                                ;   {runtime_call}
  0x000000010708f435: mov    %rbx,(%rsp)
  0x000000010708f439: callq  0x0000000106ff8c40  ; OopMap{rax=Oop rsi=Oop off=1118}
                                                ;*caload
                                                ; - java.lang.String::equals@60 (line 988)
                                                ;   {runtime_call}
  0x000000010708f43e: mov    %rbx,(%rsp)
  0x000000010708f442: callq  0x0000000106ff8c40  ; OopMap{rax=Oop rsi=Oop off=1127}
                                                ;*caload
                                                ; - java.lang.String::equals@65 (line 988)
                                                ;   {runtime_call}
  0x000000010708f447: mov    %rdi,0x8(%rsp)
  0x000000010708f44c: movq   $0x4a,(%rsp)
  0x000000010708f454: callq  0x000000010708aba0  ; OopMap{rax=Oop rsi=Oop off=1145}
                                                ;*goto
                                                ; - java.lang.String::equals@74 (line 990)
                                                ;   {runtime_call}
  0x000000010708f459: jmpq   0x000000010708f366
  0x000000010708f45e: nop
  0x000000010708f45f: nop
  0x000000010708f460: mov    0x2a8(%r15),%rax
  0x000000010708f467: movabs $0x0,%r10
  0x000000010708f471: mov    %r10,0x2a8(%r15)
  0x000000010708f478: movabs $0x0,%r10
  0x000000010708f482: mov    %r10,0x2b0(%r15)
  0x000000010708f489: add    $0x30,%rsp
  0x000000010708f48d: pop    %rbp
  0x000000010708f48e: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x000000010708f493: hlt    
  0x000000010708f494: hlt    
  0x000000010708f495: hlt    
  0x000000010708f496: hlt    
  0x000000010708f497: hlt    
  0x000000010708f498: hlt    
  0x000000010708f499: hlt    
  0x000000010708f49a: hlt    
  0x000000010708f49b: hlt    
  0x000000010708f49c: hlt    
  0x000000010708f49d: hlt    
  0x000000010708f49e: hlt    
  0x000000010708f49f: hlt    
[Exception Handler]
[Stub Code]
  0x000000010708f4a0: callq  0x0000000107088520  ;   {no_reloc}
  0x000000010708f4a5: mov    %rsp,-0x28(%rsp)
  0x000000010708f4aa: sub    $0x80,%rsp
  0x000000010708f4b1: mov    %rax,0x78(%rsp)
  0x000000010708f4b6: mov    %rcx,0x70(%rsp)
  0x000000010708f4bb: mov    %rdx,0x68(%rsp)
  0x000000010708f4c0: mov    %rbx,0x60(%rsp)
  0x000000010708f4c5: mov    %rbp,0x50(%rsp)
  0x000000010708f4ca: mov    %rsi,0x48(%rsp)
  0x000000010708f4cf: mov    %rdi,0x40(%rsp)
  0x000000010708f4d4: mov    %r8,0x38(%rsp)
  0x000000010708f4d9: mov    %r9,0x30(%rsp)
  0x000000010708f4de: mov    %r10,0x28(%rsp)
  0x000000010708f4e3: mov    %r11,0x20(%rsp)
  0x000000010708f4e8: mov    %r12,0x18(%rsp)
  0x000000010708f4ed: mov    %r13,0x10(%rsp)
  0x000000010708f4f2: mov    %r14,0x8(%rsp)
  0x000000010708f4f7: mov    %r15,(%rsp)
  0x000000010708f4fb: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x000000010708f505: movabs $0x10708f4a5,%rsi  ;   {internal_word}
  0x000000010708f50f: mov    %rsp,%rdx
  0x000000010708f512: and    $0xfffffffffffffff0,%rsp
  0x000000010708f516: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010708f51b: hlt    
[Deopt Handler Code]
  0x000000010708f51c: movabs $0x10708f51c,%r10  ;   {section_word}
  0x000000010708f526: push   %r10
  0x000000010708f528: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010708f52d: hlt    
  0x000000010708f52e: hlt    
  0x000000010708f52f: hlt    
Decoding compiled method 0x00000001070980d0:
Code:
[Entry Point]
[Verified Entry Point]
[Constants]
  # {method} {0x000000011aecf818} 'min' '(II)I' in 'java/lang/Math'
  # parm0:    rsi       = int
  # parm1:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000107098240: mov    %eax,-0x14000(%rsp)
  0x0000000107098247: push   %rbp
  0x0000000107098248: sub    $0x30,%rsp
  0x000000010709824c: movabs $0x11afbd308,%rax  ;   {metadata(method data for {method} {0x000000011aecf818} 'min' '(II)I' in 'java/lang/Math')}
  0x0000000107098256: mov    0xdc(%rax),%edi
  0x000000010709825c: add    $0x8,%edi
  0x000000010709825f: mov    %edi,0xdc(%rax)
  0x0000000107098265: movabs $0x11aecf818,%rax  ;   {metadata({method} {0x000000011aecf818} 'min' '(II)I' in 'java/lang/Math')}
  0x000000010709826f: and    $0x1ff8,%edi
  0x0000000107098275: cmp    $0x0,%edi
  0x0000000107098278: je     0x00000001070982dd  ;*iload_0
                                                ; - java.lang.Math::min@0 (line 1336)

  0x000000010709827e: cmp    %edx,%esi
  0x0000000107098280: movabs $0x11afbd308,%rax  ;   {metadata(method data for {method} {0x000000011aecf818} 'min' '(II)I' in 'java/lang/Math')}
  0x000000010709828a: movabs $0x108,%rdi
  0x0000000107098294: jg     0x00000001070982a4
  0x000000010709829a: movabs $0x118,%rdi
  0x00000001070982a4: mov    (%rax,%rdi,1),%rbx
  0x00000001070982a8: lea    0x1(%rbx),%rbx
  0x00000001070982ac: mov    %rbx,(%rax,%rdi,1)
  0x00000001070982b0: jg     0x00000001070982cb  ;*if_icmpgt
                                                ; - java.lang.Math::min@2 (line 1336)

  0x00000001070982b6: movabs $0x11afbd308,%rax  ;   {metadata(method data for {method} {0x000000011aecf818} 'min' '(II)I' in 'java/lang/Math')}
  0x00000001070982c0: incl   0x128(%rax)
  0x00000001070982c6: jmpq   0x00000001070982ce  ;*goto
                                                ; - java.lang.Math::min@6 (line 1336)

  0x00000001070982cb: mov    %rdx,%rsi          ;*ireturn
                                                ; - java.lang.Math::min@10 (line 1336)

  0x00000001070982ce: mov    %rsi,%rax
  0x00000001070982d1: add    $0x30,%rsp
  0x00000001070982d5: pop    %rbp
  0x00000001070982d6: test   %eax,-0x19241dc(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x00000001070982dc: retq   
  0x00000001070982dd: mov    %rax,0x8(%rsp)
  0x00000001070982e2: movq   $0xffffffffffffffff,(%rsp)
  0x00000001070982ea: callq  0x000000010708aba0  ; OopMap{off=175}
                                                ;*synchronization entry
                                                ; - java.lang.Math::min@-1 (line 1336)
                                                ;   {runtime_call}
  0x00000001070982ef: jmp    0x000000010709827e
  0x00000001070982f1: nop
  0x00000001070982f2: nop
  0x00000001070982f3: mov    0x2a8(%r15),%rax
  0x00000001070982fa: movabs $0x0,%r10
  0x0000000107098304: mov    %r10,0x2a8(%r15)
  0x000000010709830b: movabs $0x0,%r10
  0x0000000107098315: mov    %r10,0x2b0(%r15)
  0x000000010709831c: add    $0x30,%rsp
  0x0000000107098320: pop    %rbp
  0x0000000107098321: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x0000000107098326: hlt    
  0x0000000107098327: hlt    
  0x0000000107098328: hlt    
  0x0000000107098329: hlt    
  0x000000010709832a: hlt    
  0x000000010709832b: hlt    
  0x000000010709832c: hlt    
  0x000000010709832d: hlt    
  0x000000010709832e: hlt    
  0x000000010709832f: hlt    
  0x0000000107098330: hlt    
  0x0000000107098331: hlt    
  0x0000000107098332: hlt    
  0x0000000107098333: hlt    
  0x0000000107098334: hlt    
  0x0000000107098335: hlt    
  0x0000000107098336: hlt    
  0x0000000107098337: hlt    
  0x0000000107098338: hlt    
  0x0000000107098339: hlt    
  0x000000010709833a: hlt    
  0x000000010709833b: hlt    
  0x000000010709833c: hlt    
  0x000000010709833d: hlt    
  0x000000010709833e: hlt    
  0x000000010709833f: hlt    
[Exception Handler]
[Stub Code]
  0x0000000107098340: callq  0x0000000107088520  ;   {no_reloc}
  0x0000000107098345: mov    %rsp,-0x28(%rsp)
  0x000000010709834a: sub    $0x80,%rsp
  0x0000000107098351: mov    %rax,0x78(%rsp)
  0x0000000107098356: mov    %rcx,0x70(%rsp)
  0x000000010709835b: mov    %rdx,0x68(%rsp)
  0x0000000107098360: mov    %rbx,0x60(%rsp)
  0x0000000107098365: mov    %rbp,0x50(%rsp)
  0x000000010709836a: mov    %rsi,0x48(%rsp)
  0x000000010709836f: mov    %rdi,0x40(%rsp)
  0x0000000107098374: mov    %r8,0x38(%rsp)
  0x0000000107098379: mov    %r9,0x30(%rsp)
  0x000000010709837e: mov    %r10,0x28(%rsp)
  0x0000000107098383: mov    %r11,0x20(%rsp)
  0x0000000107098388: mov    %r12,0x18(%rsp)
  0x000000010709838d: mov    %r13,0x10(%rsp)
  0x0000000107098392: mov    %r14,0x8(%rsp)
  0x0000000107098397: mov    %r15,(%rsp)
  0x000000010709839b: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x00000001070983a5: movabs $0x107098345,%rsi  ;   {internal_word}
  0x00000001070983af: mov    %rsp,%rdx
  0x00000001070983b2: and    $0xfffffffffffffff0,%rsp
  0x00000001070983b6: callq  0x00000001063fcd74  ;   {runtime_call}
  0x00000001070983bb: hlt    
[Deopt Handler Code]
  0x00000001070983bc: movabs $0x1070983bc,%r10  ;   {section_word}
  0x00000001070983c6: push   %r10
  0x00000001070983c8: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x00000001070983cd: hlt    
  0x00000001070983ce: hlt    
  0x00000001070983cf: hlt    
Decoding compiled method 0x0000000107098490:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011ae6d610} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder'
  # this:     rsi:rsi   = 'java/lang/AbstractStringBuilder'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000107098600: mov    0x8(%rsi),%r10d
  0x0000000107098604: shl    $0x3,%r10
  0x0000000107098608: cmp    %rax,%r10
  0x000000010709860b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x0000000107098611: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010709861c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x0000000107098620: mov    %eax,-0x14000(%rsp)
  0x0000000107098627: push   %rbp
  0x0000000107098628: sub    $0x30,%rsp
  0x000000010709862c: movabs $0x11aff8040,%rdi  ;   {metadata(method data for {method} {0x000000011ae6d610} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x0000000107098636: mov    0xdc(%rdi),%ebx
  0x000000010709863c: add    $0x8,%ebx
  0x000000010709863f: mov    %ebx,0xdc(%rdi)
  0x0000000107098645: movabs $0x11ae6d610,%rdi  ;   {metadata({method} {0x000000011ae6d610} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x000000010709864f: and    $0x1ff8,%ebx
  0x0000000107098655: cmp    $0x0,%ebx
  0x0000000107098658: je     0x0000000107098748  ;*iload_1
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@0 (line 120)

  0x000000010709865e: mov    0x10(%rsi),%edi
  0x0000000107098661: shl    $0x3,%rdi          ;*getfield value
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@2 (line 120)

  0x0000000107098665: mov    0xc(%rdi),%edi     ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ; implicit exception: dispatches to 0x000000010709875f
  0x0000000107098668: mov    %rdx,%rbx
  0x000000010709866b: sub    %edi,%ebx
  0x000000010709866d: cmp    $0x0,%ebx
  0x0000000107098670: movabs $0x11aff8040,%rdi  ;   {metadata(method data for {method} {0x000000011ae6d610} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x000000010709867a: movabs $0x108,%rbx
  0x0000000107098684: jle    0x0000000107098694
  0x000000010709868a: movabs $0x118,%rbx
  0x0000000107098694: mov    (%rdi,%rbx,1),%rax
  0x0000000107098698: lea    0x1(%rax),%rax
  0x000000010709869c: mov    %rax,(%rdi,%rbx,1)
  0x00000001070986a0: jle    0x000000010709873c  ;*ifle
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@7 (line 120)

  0x00000001070986a6: mov    %rsi,%rdi
  0x00000001070986a9: movabs $0x11aff8040,%rbx  ;   {metadata(method data for {method} {0x000000011ae6d610} 'ensureCapacityInternal' '(I)V' in 'java/lang/AbstractStringBuilder')}
  0x00000001070986b3: mov    0x8(%rdi),%edi
  0x00000001070986b6: shl    $0x3,%rdi
  0x00000001070986ba: cmp    0x130(%rbx),%rdi
  0x00000001070986c1: jne    0x00000001070986d0
  0x00000001070986c3: addq   $0x1,0x138(%rbx)
  0x00000001070986cb: jmpq   0x0000000107098736
  0x00000001070986d0: cmp    0x140(%rbx),%rdi
  0x00000001070986d7: jne    0x00000001070986e6
  0x00000001070986d9: addq   $0x1,0x148(%rbx)
  0x00000001070986e1: jmpq   0x0000000107098736
  0x00000001070986e6: cmpq   $0x0,0x130(%rbx)
  0x00000001070986f1: jne    0x000000010709870a
  0x00000001070986f3: mov    %rdi,0x130(%rbx)
  0x00000001070986fa: movq   $0x1,0x138(%rbx)
  0x0000000107098705: jmpq   0x0000000107098736
  0x000000010709870a: cmpq   $0x0,0x140(%rbx)
  0x0000000107098715: jne    0x000000010709872e
  0x0000000107098717: mov    %rdi,0x140(%rbx)
  0x000000010709871e: movq   $0x1,0x148(%rbx)
  0x0000000107098729: jmpq   0x0000000107098736
  0x000000010709872e: addq   $0x1,0x128(%rbx)
  0x0000000107098736: nop
  0x0000000107098737: callq  0x0000000106fd3020  ; OopMap{off=316}
                                                ;*invokevirtual expandCapacity
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@12 (line 121)
                                                ;   {optimized virtual_call}
  0x000000010709873c: add    $0x30,%rsp
  0x0000000107098740: pop    %rbp
  0x0000000107098741: test   %eax,-0x1924647(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x0000000107098747: retq   
  0x0000000107098748: mov    %rdi,0x8(%rsp)
  0x000000010709874d: movq   $0xffffffffffffffff,(%rsp)
  0x0000000107098755: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=346}
                                                ;*synchronization entry
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@-1 (line 120)
                                                ;   {runtime_call}
  0x000000010709875a: jmpq   0x000000010709865e
  0x000000010709875f: callq  0x0000000107086680  ; OopMap{rsi=Oop off=356}
                                                ;*arraylength
                                                ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@5 (line 120)
                                                ;   {runtime_call}
  0x0000000107098764: nop
  0x0000000107098765: nop
  0x0000000107098766: mov    0x2a8(%r15),%rax
  0x000000010709876d: movabs $0x0,%r10
  0x0000000107098777: mov    %r10,0x2a8(%r15)
  0x000000010709877e: movabs $0x0,%r10
  0x0000000107098788: mov    %r10,0x2b0(%r15)
  0x000000010709878f: add    $0x30,%rsp
  0x0000000107098793: pop    %rbp
  0x0000000107098794: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x0000000107098799: hlt    
  0x000000010709879a: hlt    
  0x000000010709879b: hlt    
  0x000000010709879c: hlt    
  0x000000010709879d: hlt    
  0x000000010709879e: hlt    
  0x000000010709879f: hlt    
[Stub Code]
  0x00000001070987a0: nop                       ;   {no_reloc}
  0x00000001070987a1: nop
  0x00000001070987a2: nop
  0x00000001070987a3: nop
  0x00000001070987a4: nop
  0x00000001070987a5: movabs $0x0,%rbx          ;   {static_stub}
  0x00000001070987af: jmpq   0x00000001070987af  ;   {runtime_call}
[Exception Handler]
  0x00000001070987b4: callq  0x0000000107088520  ;   {runtime_call}
  0x00000001070987b9: mov    %rsp,-0x28(%rsp)
  0x00000001070987be: sub    $0x80,%rsp
  0x00000001070987c5: mov    %rax,0x78(%rsp)
  0x00000001070987ca: mov    %rcx,0x70(%rsp)
  0x00000001070987cf: mov    %rdx,0x68(%rsp)
  0x00000001070987d4: mov    %rbx,0x60(%rsp)
  0x00000001070987d9: mov    %rbp,0x50(%rsp)
  0x00000001070987de: mov    %rsi,0x48(%rsp)
  0x00000001070987e3: mov    %rdi,0x40(%rsp)
  0x00000001070987e8: mov    %r8,0x38(%rsp)
  0x00000001070987ed: mov    %r9,0x30(%rsp)
  0x00000001070987f2: mov    %r10,0x28(%rsp)
  0x00000001070987f7: mov    %r11,0x20(%rsp)
  0x00000001070987fc: mov    %r12,0x18(%rsp)
  0x0000000107098801: mov    %r13,0x10(%rsp)
  0x0000000107098806: mov    %r14,0x8(%rsp)
  0x000000010709880b: mov    %r15,(%rsp)
  0x000000010709880f: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x0000000107098819: movabs $0x1070987b9,%rsi  ;   {internal_word}
  0x0000000107098823: mov    %rsp,%rdx
  0x0000000107098826: and    $0xfffffffffffffff0,%rsp
  0x000000010709882a: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010709882f: hlt    
[Deopt Handler Code]
  0x0000000107098830: movabs $0x107098830,%r10  ;   {section_word}
  0x000000010709883a: push   %r10
  0x000000010709883c: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x0000000107098841: hlt    
  0x0000000107098842: hlt    
  0x0000000107098843: hlt    
  0x0000000107098844: hlt    
  0x0000000107098845: hlt    
  0x0000000107098846: hlt    
  0x0000000107098847: hlt    
Decoding compiled method 0x0000000107099150:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011ae712d0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder'
  # this:     rsi:rsi   = 'java/lang/StringBuilder'
  # parm0:    rdx:rdx   = 'java/lang/String'
  #           [sp+0x40]  (sp of caller)
  0x00000001070992c0: mov    0x8(%rsi),%r10d
  0x00000001070992c4: shl    $0x3,%r10
  0x00000001070992c8: cmp    %rax,%r10
  0x00000001070992cb: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x00000001070992d1: data32 data32 nopw 0x0(%rax,%rax,1)
  0x00000001070992dc: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x00000001070992e0: mov    %eax,-0x14000(%rsp)
  0x00000001070992e7: push   %rbp
  0x00000001070992e8: sub    $0x30,%rsp
  0x00000001070992ec: movabs $0x11b021850,%rdi  ;   {metadata(method data for {method} {0x000000011ae712d0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x00000001070992f6: mov    0xdc(%rdi),%ebx
  0x00000001070992fc: add    $0x8,%ebx
  0x00000001070992ff: mov    %ebx,0xdc(%rdi)
  0x0000000107099305: movabs $0x11ae712d0,%rdi  ;   {metadata({method} {0x000000011ae712d0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x000000010709930f: and    $0x1ff8,%ebx
  0x0000000107099315: cmp    $0x0,%ebx
  0x0000000107099318: je     0x0000000107099355  ;*aload_0
                                                ; - java.lang.StringBuilder::append@0 (line 136)

  0x000000010709931e: mov    %rsi,%rdi
  0x0000000107099321: movabs $0x11b021850,%rbx  ;   {metadata(method data for {method} {0x000000011ae712d0} 'append' '(Ljava/lang/String;)Ljava/lang/StringBuilder;' in 'java/lang/StringBuilder')}
  0x000000010709932b: addq   $0x1,0x108(%rbx)
  0x0000000107099333: mov    %rsi,%rdi
  0x0000000107099336: mov    %rdi,%rsi          ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)

  0x0000000107099339: mov    %rdi,0x20(%rsp)
  0x000000010709933e: nop
  0x000000010709933f: callq  0x0000000106fd3020  ; OopMap{[32]=Oop off=132}
                                                ;*invokespecial append
                                                ; - java.lang.StringBuilder::append@2 (line 136)
                                                ;   {optimized virtual_call}
  0x0000000107099344: mov    0x20(%rsp),%rax
  0x0000000107099349: add    $0x30,%rsp
  0x000000010709934d: pop    %rbp
  0x000000010709934e: test   %eax,-0x1925254(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x0000000107099354: retq   
  0x0000000107099355: mov    %rdi,0x8(%rsp)
  0x000000010709935a: movq   $0xffffffffffffffff,(%rsp)
  0x0000000107099362: callq  0x000000010708aba0  ; OopMap{rsi=Oop rdx=Oop off=167}
                                                ;*synchronization entry
                                                ; - java.lang.StringBuilder::append@-1 (line 136)
                                                ;   {runtime_call}
  0x0000000107099367: jmp    0x000000010709931e
  0x0000000107099369: nop
  0x000000010709936a: nop
  0x000000010709936b: mov    0x2a8(%r15),%rax
  0x0000000107099372: movabs $0x0,%r10
  0x000000010709937c: mov    %r10,0x2a8(%r15)
  0x0000000107099383: movabs $0x0,%r10
  0x000000010709938d: mov    %r10,0x2b0(%r15)
  0x0000000107099394: add    $0x30,%rsp
  0x0000000107099398: pop    %rbp
  0x0000000107099399: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x000000010709939e: hlt    
  0x000000010709939f: hlt    
[Stub Code]
  0x00000001070993a0: nop                       ;   {no_reloc}
  0x00000001070993a1: nop
  0x00000001070993a2: nop
  0x00000001070993a3: nop
  0x00000001070993a4: nop
  0x00000001070993a5: movabs $0x0,%rbx          ;   {static_stub}
  0x00000001070993af: jmpq   0x00000001070993af  ;   {runtime_call}
[Exception Handler]
  0x00000001070993b4: callq  0x0000000107088520  ;   {runtime_call}
  0x00000001070993b9: mov    %rsp,-0x28(%rsp)
  0x00000001070993be: sub    $0x80,%rsp
  0x00000001070993c5: mov    %rax,0x78(%rsp)
  0x00000001070993ca: mov    %rcx,0x70(%rsp)
  0x00000001070993cf: mov    %rdx,0x68(%rsp)
  0x00000001070993d4: mov    %rbx,0x60(%rsp)
  0x00000001070993d9: mov    %rbp,0x50(%rsp)
  0x00000001070993de: mov    %rsi,0x48(%rsp)
  0x00000001070993e3: mov    %rdi,0x40(%rsp)
  0x00000001070993e8: mov    %r8,0x38(%rsp)
  0x00000001070993ed: mov    %r9,0x30(%rsp)
  0x00000001070993f2: mov    %r10,0x28(%rsp)
  0x00000001070993f7: mov    %r11,0x20(%rsp)
  0x00000001070993fc: mov    %r12,0x18(%rsp)
  0x0000000107099401: mov    %r13,0x10(%rsp)
  0x0000000107099406: mov    %r14,0x8(%rsp)
  0x000000010709940b: mov    %r15,(%rsp)
  0x000000010709940f: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x0000000107099419: movabs $0x1070993b9,%rsi  ;   {internal_word}
  0x0000000107099423: mov    %rsp,%rdx
  0x0000000107099426: and    $0xfffffffffffffff0,%rsp
  0x000000010709942a: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010709942f: hlt    
[Deopt Handler Code]
  0x0000000107099430: movabs $0x107099430,%r10  ;   {section_word}
  0x000000010709943a: push   %r10
  0x000000010709943c: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x0000000107099441: hlt    
  0x0000000107099442: hlt    
  0x0000000107099443: hlt    
  0x0000000107099444: hlt    
  0x0000000107099445: hlt    
  0x0000000107099446: hlt    
  0x0000000107099447: hlt    
Decoding compiled method 0x0000000107099510:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011ae211e0} 'get' '()Ljava/lang/Object;' in 'java/lang/ref/Reference'
  #           [sp+0x40]  (sp of caller)
  0x0000000107099660: mov    0x8(%rsi),%r10d
  0x0000000107099664: shl    $0x3,%r10
  0x0000000107099668: cmp    %rax,%r10
  0x000000010709966b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x0000000107099671: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010709967c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x0000000107099680: mov    %eax,-0x14000(%rsp)
  0x0000000107099687: push   %rbp
  0x0000000107099688: sub    $0x30,%rsp
  0x000000010709968c: mov    0xc(%rsi),%eax
  0x000000010709968f: shl    $0x3,%rax          ;*aload_0
                                                ; - java.lang.ref.Reference::get@0 (line 202)

  0x0000000107099693: add    $0x30,%rsp
  0x0000000107099697: pop    %rbp
  0x0000000107099698: test   %eax,-0x192559e(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x000000010709969e: retq   
  0x000000010709969f: nop
  0x00000001070996a0: nop
  0x00000001070996a1: mov    0x2a8(%r15),%rax
  0x00000001070996a8: movabs $0x0,%r10
  0x00000001070996b2: mov    %r10,0x2a8(%r15)
  0x00000001070996b9: movabs $0x0,%r10
  0x00000001070996c3: mov    %r10,0x2b0(%r15)
  0x00000001070996ca: add    $0x30,%rsp
  0x00000001070996ce: pop    %rbp
  0x00000001070996cf: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x00000001070996d4: hlt    
  0x00000001070996d5: hlt    
  0x00000001070996d6: hlt    
  0x00000001070996d7: hlt    
  0x00000001070996d8: hlt    
  0x00000001070996d9: hlt    
  0x00000001070996da: hlt    
  0x00000001070996db: hlt    
  0x00000001070996dc: hlt    
  0x00000001070996dd: hlt    
  0x00000001070996de: hlt    
  0x00000001070996df: hlt    
[Exception Handler]
[Stub Code]
  0x00000001070996e0: callq  0x0000000107088520  ;   {no_reloc}
  0x00000001070996e5: mov    %rsp,-0x28(%rsp)
  0x00000001070996ea: sub    $0x80,%rsp
  0x00000001070996f1: mov    %rax,0x78(%rsp)
  0x00000001070996f6: mov    %rcx,0x70(%rsp)
  0x00000001070996fb: mov    %rdx,0x68(%rsp)
  0x0000000107099700: mov    %rbx,0x60(%rsp)
  0x0000000107099705: mov    %rbp,0x50(%rsp)
  0x000000010709970a: mov    %rsi,0x48(%rsp)
  0x000000010709970f: mov    %rdi,0x40(%rsp)
  0x0000000107099714: mov    %r8,0x38(%rsp)
  0x0000000107099719: mov    %r9,0x30(%rsp)
  0x000000010709971e: mov    %r10,0x28(%rsp)
  0x0000000107099723: mov    %r11,0x20(%rsp)
  0x0000000107099728: mov    %r12,0x18(%rsp)
  0x000000010709972d: mov    %r13,0x10(%rsp)
  0x0000000107099732: mov    %r14,0x8(%rsp)
  0x0000000107099737: mov    %r15,(%rsp)
  0x000000010709973b: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x0000000107099745: movabs $0x1070996e5,%rsi  ;   {internal_word}
  0x000000010709974f: mov    %rsp,%rdx
  0x0000000107099752: and    $0xfffffffffffffff0,%rsp
  0x0000000107099756: callq  0x00000001063fcd74  ;   {runtime_call}
  0x000000010709975b: hlt    
[Deopt Handler Code]
  0x000000010709975c: movabs $0x10709975c,%r10  ;   {section_word}
  0x0000000107099766: push   %r10
  0x0000000107099768: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x000000010709976d: hlt    
  0x000000010709976e: hlt    
  0x000000010709976f: hlt    
Decoding compiled method 0x00000001070997d0:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011adfe090} 'indexOf' '(I)I' in 'java/lang/String'
  # this:     rsi:rsi   = 'java/lang/String'
  # parm0:    rdx       = int
  #           [sp+0x40]  (sp of caller)
  0x0000000107099940: mov    0x8(%rsi),%r10d
  0x0000000107099944: shl    $0x3,%r10
  0x0000000107099948: cmp    %rax,%r10
  0x000000010709994b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x0000000107099951: data32 data32 nopw 0x0(%rax,%rax,1)
  0x000000010709995c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x0000000107099960: mov    %eax,-0x14000(%rsp)
  0x0000000107099967: push   %rbp
  0x0000000107099968: sub    $0x30,%rsp
  0x000000010709996c: movabs $0x11b0380d8,%rcx  ;   {metadata(method data for {method} {0x000000011adfe090} 'indexOf' '(I)I' in 'java/lang/String')}
  0x0000000107099976: mov    0xdc(%rcx),%edi
  0x000000010709997c: add    $0x8,%edi
  0x000000010709997f: mov    %edi,0xdc(%rcx)
  0x0000000107099985: movabs $0x11adfe090,%rcx  ;   {metadata({method} {0x000000011adfe090} 'indexOf' '(I)I' in 'java/lang/String')}
  0x000000010709998f: and    $0x1ff8,%edi
  0x0000000107099995: cmp    $0x0,%edi
  0x0000000107099998: je     0x0000000107099a48  ;*aload_0
                                                ; - java.lang.String::indexOf@0 (line 1503)

  0x000000010709999e: mov    %rsi,%rcx
  0x00000001070999a1: movabs $0x11b0380d8,%rdi  ;   {metadata(method data for {method} {0x000000011adfe090} 'indexOf' '(I)I' in 'java/lang/String')}
  0x00000001070999ab: mov    0x8(%rcx),%ecx
  0x00000001070999ae: shl    $0x3,%rcx
  0x00000001070999b2: cmp    0x110(%rdi),%rcx
  0x00000001070999b9: jne    0x00000001070999c8
  0x00000001070999bb: addq   $0x1,0x118(%rdi)
  0x00000001070999c3: jmpq   0x0000000107099a2e
  0x00000001070999c8: cmp    0x120(%rdi),%rcx
  0x00000001070999cf: jne    0x00000001070999de
  0x00000001070999d1: addq   $0x1,0x128(%rdi)
  0x00000001070999d9: jmpq   0x0000000107099a2e
  0x00000001070999de: cmpq   $0x0,0x110(%rdi)
  0x00000001070999e9: jne    0x0000000107099a02
  0x00000001070999eb: mov    %rcx,0x110(%rdi)
  0x00000001070999f2: movq   $0x1,0x118(%rdi)
  0x00000001070999fd: jmpq   0x0000000107099a2e
  0x0000000107099a02: cmpq   $0x0,0x120(%rdi)
  0x0000000107099a0d: jne    0x0000000107099a26
  0x0000000107099a0f: mov    %rcx,0x120(%rdi)
  0x0000000107099a16: movq   $0x1,0x128(%rdi)
  0x0000000107099a21: jmpq   0x0000000107099a2e
  0x0000000107099a26: addq   $0x1,0x108(%rdi)
  0x0000000107099a2e: mov    $0x0,%ecx          ;*invokevirtual indexOf
                                                ; - java.lang.String::indexOf@3 (line 1503)

  0x0000000107099a33: nop
  0x0000000107099a34: nop
  0x0000000107099a35: nop
  0x0000000107099a36: nop
  0x0000000107099a37: callq  0x0000000106fd3020  ; OopMap{off=252}
                                                ;*invokevirtual indexOf
                                                ; - java.lang.String::indexOf@3 (line 1503)
                                                ;   {optimized virtual_call}
  0x0000000107099a3c: add    $0x30,%rsp
  0x0000000107099a40: pop    %rbp
  0x0000000107099a41: test   %eax,-0x1925947(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x0000000107099a47: retq   
  0x0000000107099a48: mov    %rcx,0x8(%rsp)
  0x0000000107099a4d: movq   $0xffffffffffffffff,(%rsp)
  0x0000000107099a55: callq  0x000000010708aba0  ; OopMap{rsi=Oop off=282}
                                                ;*synchronization entry
                                                ; - java.lang.String::indexOf@-1 (line 1503)
                                                ;   {runtime_call}
  0x0000000107099a5a: jmpq   0x000000010709999e
  0x0000000107099a5f: nop
  0x0000000107099a60: nop
  0x0000000107099a61: mov    0x2a8(%r15),%rax
  0x0000000107099a68: movabs $0x0,%r10
  0x0000000107099a72: mov    %r10,0x2a8(%r15)
  0x0000000107099a79: movabs $0x0,%r10
  0x0000000107099a83: mov    %r10,0x2b0(%r15)
  0x0000000107099a8a: add    $0x30,%rsp
  0x0000000107099a8e: pop    %rbp
  0x0000000107099a8f: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x0000000107099a94: hlt    
  0x0000000107099a95: hlt    
  0x0000000107099a96: hlt    
  0x0000000107099a97: hlt    
  0x0000000107099a98: hlt    
  0x0000000107099a99: hlt    
  0x0000000107099a9a: hlt    
  0x0000000107099a9b: hlt    
  0x0000000107099a9c: hlt    
  0x0000000107099a9d: hlt    
  0x0000000107099a9e: hlt    
  0x0000000107099a9f: hlt    
[Stub Code]
  0x0000000107099aa0: nop                       ;   {no_reloc}
  0x0000000107099aa1: nop
  0x0000000107099aa2: nop
  0x0000000107099aa3: nop
  0x0000000107099aa4: nop
  0x0000000107099aa5: movabs $0x0,%rbx          ;   {static_stub}
  0x0000000107099aaf: jmpq   0x0000000107099aaf  ;   {runtime_call}
[Exception Handler]
  0x0000000107099ab4: callq  0x0000000107088520  ;   {runtime_call}
  0x0000000107099ab9: mov    %rsp,-0x28(%rsp)
  0x0000000107099abe: sub    $0x80,%rsp
  0x0000000107099ac5: mov    %rax,0x78(%rsp)
  0x0000000107099aca: mov    %rcx,0x70(%rsp)
  0x0000000107099acf: mov    %rdx,0x68(%rsp)
  0x0000000107099ad4: mov    %rbx,0x60(%rsp)
  0x0000000107099ad9: mov    %rbp,0x50(%rsp)
  0x0000000107099ade: mov    %rsi,0x48(%rsp)
  0x0000000107099ae3: mov    %rdi,0x40(%rsp)
  0x0000000107099ae8: mov    %r8,0x38(%rsp)
  0x0000000107099aed: mov    %r9,0x30(%rsp)
  0x0000000107099af2: mov    %r10,0x28(%rsp)
  0x0000000107099af7: mov    %r11,0x20(%rsp)
  0x0000000107099afc: mov    %r12,0x18(%rsp)
  0x0000000107099b01: mov    %r13,0x10(%rsp)
  0x0000000107099b06: mov    %r14,0x8(%rsp)
  0x0000000107099b0b: mov    %r15,(%rsp)
  0x0000000107099b0f: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x0000000107099b19: movabs $0x107099ab9,%rsi  ;   {internal_word}
  0x0000000107099b23: mov    %rsp,%rdx
  0x0000000107099b26: and    $0xfffffffffffffff0,%rsp
  0x0000000107099b2a: callq  0x00000001063fcd74  ;   {runtime_call}
  0x0000000107099b2f: hlt    
[Deopt Handler Code]
  0x0000000107099b30: movabs $0x107099b30,%r10  ;   {section_word}
  0x0000000107099b3a: push   %r10
  0x0000000107099b3c: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x0000000107099b41: hlt    
  0x0000000107099b42: hlt    
  0x0000000107099b43: hlt    
  0x0000000107099b44: hlt    
  0x0000000107099b45: hlt    
  0x0000000107099b46: hlt    
  0x0000000107099b47: hlt    
0 doubled is 0
1 doubled is 2
2 doubled is 4
3 doubled is 6
4 doubled is 8
5 doubled is 10
6 doubled is 12
7 doubled is 14
8 doubled is 16
9 doubled is 18
Decoding compiled method 0x0000000107099c10:
Code:
[Entry Point]
[Constants]
  # {method} {0x000000011ae8dcf8} 'position' '()I' in 'java/nio/Buffer'
  #           [sp+0x40]  (sp of caller)
  0x0000000107099d60: mov    0x8(%rsi),%r10d
  0x0000000107099d64: shl    $0x3,%r10
  0x0000000107099d68: cmp    %rax,%r10
  0x0000000107099d6b: jne    0x0000000106fd2e20  ;   {runtime_call}
  0x0000000107099d71: data32 data32 nopw 0x0(%rax,%rax,1)
  0x0000000107099d7c: data32 data32 xchg %ax,%ax
[Verified Entry Point]
  0x0000000107099d80: mov    %eax,-0x14000(%rsp)
  0x0000000107099d87: push   %rbp
  0x0000000107099d88: sub    $0x30,%rsp         ;*aload_0
                                                ; - java.nio.Buffer::position@0 (line 226)

  0x0000000107099d8c: mov    0x18(%rsi),%eax    ;*getfield position
                                                ; - java.nio.Buffer::position@1 (line 226)

  0x0000000107099d8f: add    $0x30,%rsp
  0x0000000107099d93: pop    %rbp
  0x0000000107099d94: test   %eax,-0x1925c9a(%rip)        # 0x0000000105774100
                                                ;   {poll_return}
  0x0000000107099d9a: retq   
  0x0000000107099d9b: nop
  0x0000000107099d9c: nop
  0x0000000107099d9d: mov    0x2a8(%r15),%rax
  0x0000000107099da4: movabs $0x0,%r10
  0x0000000107099dae: mov    %r10,0x2a8(%r15)
  0x0000000107099db5: movabs $0x0,%r10
  0x0000000107099dbf: mov    %r10,0x2b0(%r15)
  0x0000000107099dc6: add    $0x30,%rsp
  0x0000000107099dca: pop    %rbp
  0x0000000107099dcb: jmpq   0x0000000106ff90e0  ;   {runtime_call}
  0x0000000107099dd0: hlt    
  0x0000000107099dd1: hlt    
  0x0000000107099dd2: hlt    
  0x0000000107099dd3: hlt    
  0x0000000107099dd4: hlt    
  0x0000000107099dd5: hlt    
  0x0000000107099dd6: hlt    
  0x0000000107099dd7: hlt    
  0x0000000107099dd8: hlt    
  0x0000000107099dd9: hlt    
  0x0000000107099dda: hlt    
  0x0000000107099ddb: hlt    
  0x0000000107099ddc: hlt    
  0x0000000107099ddd: hlt    
  0x0000000107099dde: hlt    
  0x0000000107099ddf: hlt    
[Exception Handler]
[Stub Code]
  0x0000000107099de0: callq  0x0000000107088520  ;   {no_reloc}
  0x0000000107099de5: mov    %rsp,-0x28(%rsp)
  0x0000000107099dea: sub    $0x80,%rsp
  0x0000000107099df1: mov    %rax,0x78(%rsp)
  0x0000000107099df6: mov    %rcx,0x70(%rsp)
  0x0000000107099dfb: mov    %rdx,0x68(%rsp)
  0x0000000107099e00: mov    %rbx,0x60(%rsp)
  0x0000000107099e05: mov    %rbp,0x50(%rsp)
  0x0000000107099e0a: mov    %rsi,0x48(%rsp)
  0x0000000107099e0f: mov    %rdi,0x40(%rsp)
  0x0000000107099e14: mov    %r8,0x38(%rsp)
  0x0000000107099e19: mov    %r9,0x30(%rsp)
  0x0000000107099e1e: mov    %r10,0x28(%rsp)
  0x0000000107099e23: mov    %r11,0x20(%rsp)
  0x0000000107099e28: mov    %r12,0x18(%rsp)
  0x0000000107099e2d: mov    %r13,0x10(%rsp)
  0x0000000107099e32: mov    %r14,0x8(%rsp)
  0x0000000107099e37: mov    %r15,(%rsp)
  0x0000000107099e3b: movabs $0x1065cdc34,%rdi  ;   {external_word}
  0x0000000107099e45: movabs $0x107099de5,%rsi  ;   {internal_word}
  0x0000000107099e4f: mov    %rsp,%rdx
  0x0000000107099e52: and    $0xfffffffffffffff0,%rsp
  0x0000000107099e56: callq  0x00000001063fcd74  ;   {runtime_call}
  0x0000000107099e5b: hlt    
[Deopt Handler Code]
  0x0000000107099e5c: movabs $0x107099e5c,%r10  ;   {section_word}
  0x0000000107099e66: push   %r10
  0x0000000107099e68: jmpq   0x0000000106fd43c0  ;   {runtime_call}
  0x0000000107099e6d: hlt    
  0x0000000107099e6e: hlt    
  0x0000000107099e6f: hlt    
