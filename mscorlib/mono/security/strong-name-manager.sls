(library (mono security strong-name-manager)
  (export new
          is?
          strong-name-manager?
          load-config
          must-verify?
          get-mapped-public-key
          to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.StrongNameManager a ...)))))
  (define (is? a) (clr-is Mono.Security.StrongNameManager a))
  (define (strong-name-manager? a)
    (clr-is Mono.Security.StrongNameManager a))
  (define-method-port
    load-config
    Mono.Security.StrongNameManager
    LoadConfig
    (static: System.Void System.String))
  (define-method-port
    must-verify?
    Mono.Security.StrongNameManager
    MustVerify
    (static: System.Boolean System.Reflection.AssemblyName))
  (define-method-port
    get-mapped-public-key
    Mono.Security.StrongNameManager
    GetMappedPublicKey
    (static: System.Byte[] System.Byte[]))
  (define-method-port
    to-string
    Mono.Security.StrongNameManager
    ToString
    (System.String)))
