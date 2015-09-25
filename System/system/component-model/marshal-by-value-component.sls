(library (system component-model marshal-by-value-component)
  (export new
          is?
          marshal-by-value-component?
          dispose
          get-service
          to-string
          container
          design-mode?
          site-get
          site-set!
          site-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.MarshalByValueComponent
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.MarshalByValueComponent a))
  (define (marshal-by-value-component? a)
    (clr-is System.ComponentModel.MarshalByValueComponent a))
  (define-method-port
    dispose
    System.ComponentModel.MarshalByValueComponent
    Dispose
    (System.Void))
  (define-method-port
    get-service
    System.ComponentModel.MarshalByValueComponent
    GetService
    (System.Object System.Type))
  (define-method-port
    to-string
    System.ComponentModel.MarshalByValueComponent
    ToString
    (System.String))
  (define-field-port
    container
    #f
    #f
    (property:)
    System.ComponentModel.MarshalByValueComponent
    Container
    System.ComponentModel.IContainer)
  (define-field-port
    design-mode?
    #f
    #f
    (property:)
    System.ComponentModel.MarshalByValueComponent
    DesignMode
    System.Boolean)
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.ComponentModel.MarshalByValueComponent
    Site
    System.ComponentModel.ISite))
