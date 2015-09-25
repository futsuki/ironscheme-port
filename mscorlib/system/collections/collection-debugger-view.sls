(library (system collections collection-debugger-view)
  (export new is? collection-debugger-view? items)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Collections.CollectionDebuggerView a ...)))))
  (define (is? a) (clr-is System.Collections.CollectionDebuggerView a))
  (define (collection-debugger-view? a)
    (clr-is System.Collections.CollectionDebuggerView a))
  (define-field-port
    items
    #f
    #f
    (property:)
    System.Collections.CollectionDebuggerView
    Items
    System.Object[]))
