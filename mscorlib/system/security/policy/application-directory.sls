(library (system security policy application-directory)
  (export new
          is?
          application-directory?
          get-hash-code
          to-string
          copy
          equals?
          directory)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.ApplicationDirectory
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.ApplicationDirectory a))
  (define (application-directory? a)
    (clr-is System.Security.Policy.ApplicationDirectory a))
  (define-method-port
    get-hash-code
    System.Security.Policy.ApplicationDirectory
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Policy.ApplicationDirectory
    ToString
    (System.String))
  (define-method-port
    copy
    System.Security.Policy.ApplicationDirectory
    Copy
    (System.Object))
  (define-method-port
    equals?
    System.Security.Policy.ApplicationDirectory
    Equals
    (System.Boolean System.Object))
  (define-field-port
    directory
    #f
    #f
    (property:)
    System.Security.Policy.ApplicationDirectory
    Directory
    System.String))
