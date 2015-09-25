(library (system runtime interop-services default-char-set-attribute)
  (export new is? default-char-set-attribute? char-set)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.DefaultCharSetAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.DefaultCharSetAttribute a))
  (define (default-char-set-attribute? a)
    (clr-is System.Runtime.InteropServices.DefaultCharSetAttribute a))
  (define-field-port
    char-set
    #f
    #f
    (property:)
    System.Runtime.InteropServices.DefaultCharSetAttribute
    CharSet
    System.Runtime.InteropServices.CharSet))
