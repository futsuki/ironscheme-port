(library (system component-model syntax-check)
  (export is?
          syntax-check?
          check-machine-name?
          check-path?
          check-rooted-path?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.SyntaxCheck a))
  (define (syntax-check? a)
    (clr-is System.ComponentModel.SyntaxCheck a))
  (define-method-port
    check-machine-name?
    System.ComponentModel.SyntaxCheck
    CheckMachineName
    (static: System.Boolean System.String))
  (define-method-port
    check-path?
    System.ComponentModel.SyntaxCheck
    CheckPath
    (static: System.Boolean System.String))
  (define-method-port
    check-rooted-path?
    System.ComponentModel.SyntaxCheck
    CheckRootedPath
    (static: System.Boolean System.String)))
