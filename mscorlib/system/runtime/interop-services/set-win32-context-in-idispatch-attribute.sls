(library (system
          runtime
          interop-services
          set-win32-context-in-idispatch-attribute)
  (export new is? set-win32-context-in-idispatch-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute
      a))
  (define (set-win32-context-in-idispatch-attribute? a)
    (clr-is
      System.Runtime.InteropServices.SetWin32ContextInIDispatchAttribute
      a)))
