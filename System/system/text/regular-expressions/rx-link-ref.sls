(library (system text regular-expressions rx-link-ref)
  (export new
          is?
          rx-link-ref?
          push-instruction-base
          push-offset-position
          offsets-get
          offsets-set!
          offsets-update!
          current-get
          current-set!
          current-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.RegularExpressions.RxLinkRef a ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.RxLinkRef a))
  (define (rx-link-ref? a)
    (clr-is System.Text.RegularExpressions.RxLinkRef a))
  (define-method-port
    push-instruction-base
    System.Text.RegularExpressions.RxLinkRef
    PushInstructionBase
    (System.Void System.Int32))
  (define-method-port
    push-offset-position
    System.Text.RegularExpressions.RxLinkRef
    PushOffsetPosition
    (System.Void System.Int32))
  (define-field-port
    offsets-get
    offsets-set!
    offsets-update!
    ()
    System.Text.RegularExpressions.RxLinkRef
    offsets
    System.Int32[])
  (define-field-port
    current-get
    current-set!
    current-update!
    ()
    System.Text.RegularExpressions.RxLinkRef
    current
    System.Int32))
