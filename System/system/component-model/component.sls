(library (system component-model component)
  (export new
          is?
          component?
          dispose
          to-string
          site-get
          site-set!
          site-update!
          container)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ComponentModel.Component a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Component a))
  (define (component? a) (clr-is System.ComponentModel.Component a))
  (define-method-port
    dispose
    System.ComponentModel.Component
    Dispose
    (System.Void))
  (define-method-port
    to-string
    System.ComponentModel.Component
    ToString
    (System.String))
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.ComponentModel.Component
    Site
    System.ComponentModel.ISite)
  (define-field-port
    container
    #f
    #f
    (property:)
    System.ComponentModel.Component
    Container
    System.ComponentModel.IContainer))
