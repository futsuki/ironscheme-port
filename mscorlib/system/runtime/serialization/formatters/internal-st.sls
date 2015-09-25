(library (system runtime serialization formatters internal-st)
  (export is?
          internal-st?
          serialization-set-value
          soap-check-enabled?
          soap-assert
          load-assembly-from-string
          info-soap
          soap)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Serialization.Formatters.InternalST a))
  (define (internal-st? a)
    (clr-is System.Runtime.Serialization.Formatters.InternalST a))
  (define-method-port
    serialization-set-value
    System.Runtime.Serialization.Formatters.InternalST
    SerializationSetValue
    (static:
      System.Void
      System.Reflection.FieldInfo
      System.Object
      System.Object))
  (define-method-port
    soap-check-enabled?
    System.Runtime.Serialization.Formatters.InternalST
    SoapCheckEnabled
    (static: System.Boolean))
  (define-method-port
    soap-assert
    System.Runtime.Serialization.Formatters.InternalST
    SoapAssert
    (static: System.Void System.Boolean System.String))
  (define-method-port
    load-assembly-from-string
    System.Runtime.Serialization.Formatters.InternalST
    LoadAssemblyFromString
    (static: System.Reflection.Assembly System.String))
  (define-method-port
    info-soap
    System.Runtime.Serialization.Formatters.InternalST
    InfoSoap
    (static: System.Void System.Object[]))
  (define-method-port
    soap
    System.Runtime.Serialization.Formatters.InternalST
    Soap
    (static: System.Void System.Object[])))
