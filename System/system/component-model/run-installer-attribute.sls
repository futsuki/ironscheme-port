(library (system component-model run-installer-attribute)
  (export new
          is?
          run-installer-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          yes
          no
          default
          run-installer?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.RunInstallerAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.RunInstallerAttribute a))
  (define (run-installer-attribute? a)
    (clr-is System.ComponentModel.RunInstallerAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.RunInstallerAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.RunInstallerAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.RunInstallerAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.RunInstallerAttribute
    Yes
    System.ComponentModel.RunInstallerAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.RunInstallerAttribute
    No
    System.ComponentModel.RunInstallerAttribute)
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.RunInstallerAttribute
    Default
    System.ComponentModel.RunInstallerAttribute)
  (define-field-port
    run-installer?
    #f
    #f
    (property:)
    System.ComponentModel.RunInstallerAttribute
    RunInstaller
    System.Boolean))
