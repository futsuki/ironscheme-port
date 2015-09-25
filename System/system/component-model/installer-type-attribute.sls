(library (system component-model installer-type-attribute)
  (export new
          is?
          installer-type-attribute?
          get-hash-code
          equals?
          installer-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.InstallerTypeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.InstallerTypeAttribute a))
  (define (installer-type-attribute? a)
    (clr-is System.ComponentModel.InstallerTypeAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.InstallerTypeAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.InstallerTypeAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    installer-type
    #f
    #f
    (property:)
    System.ComponentModel.InstallerTypeAttribute
    InstallerType
    System.Type))
