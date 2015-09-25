(library (system text regular-expressions disassembler)
  (export new
          is?
          disassembler?
          disassemble-block
          disassemble-op
          disassemble-pattern)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Disassembler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Disassembler a))
  (define (disassembler? a)
    (clr-is System.Text.RegularExpressions.Disassembler a))
  (define-method-port
    disassemble-block
    System.Text.RegularExpressions.Disassembler
    DisassembleBlock
    (static: System.Void System.UInt16[] System.Int32 System.Int32))
  (define-method-port
    disassemble-op
    System.Text.RegularExpressions.Disassembler
    DisassembleOp
    (static: System.String System.UInt16[] System.Int32))
  (define-method-port
    disassemble-pattern
    System.Text.RegularExpressions.Disassembler
    DisassemblePattern
    (static: System.Void System.UInt16[])))
