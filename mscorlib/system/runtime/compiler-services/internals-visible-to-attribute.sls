(library (system
          runtime
          compiler-services
          internals-visible-to-attribute)
  (export new
          is?
          internals-visible-to-attribute?
          assembly-name
          all-internals-visible?-get
          all-internals-visible?-set!
          all-internals-visible?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.InternalsVisibleToAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.InternalsVisibleToAttribute
      a))
  (define (internals-visible-to-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.InternalsVisibleToAttribute
      a))
  (define-field-port
    assembly-name
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.InternalsVisibleToAttribute
    AssemblyName
    System.String)
  (define-field-port
    all-internals-visible?-get
    all-internals-visible?-set!
    all-internals-visible?-update!
    (property:)
    System.Runtime.CompilerServices.InternalsVisibleToAttribute
    AllInternalsVisible
    System.Boolean))
