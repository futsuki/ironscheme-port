(library (system runtime interop-services handle-collector)
  (export new
          is?
          handle-collector?
          add
          remove
          count
          initial-threshold
          maximum-threshold
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.HandleCollector
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.HandleCollector a))
  (define (handle-collector? a)
    (clr-is System.Runtime.InteropServices.HandleCollector a))
  (define-method-port
    add
    System.Runtime.InteropServices.HandleCollector
    Add
    (System.Void))
  (define-method-port
    remove
    System.Runtime.InteropServices.HandleCollector
    Remove
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Runtime.InteropServices.HandleCollector
    Count
    System.Int32)
  (define-field-port
    initial-threshold
    #f
    #f
    (property:)
    System.Runtime.InteropServices.HandleCollector
    InitialThreshold
    System.Int32)
  (define-field-port
    maximum-threshold
    #f
    #f
    (property:)
    System.Runtime.InteropServices.HandleCollector
    MaximumThreshold
    System.Int32)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Runtime.InteropServices.HandleCollector
    Name
    System.String))
