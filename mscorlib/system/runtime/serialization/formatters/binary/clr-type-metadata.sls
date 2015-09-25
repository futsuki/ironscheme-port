(library (system
          runtime
          serialization
          formatters
          binary
          clr-type-metadata)
  (export new
          is?
          clr-type-metadata?
          instance-type-get
          instance-type-set!
          instance-type-update!
          requires-types?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.ClrTypeMetadata
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.ClrTypeMetadata
      a))
  (define (clr-type-metadata? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.ClrTypeMetadata
      a))
  (define-field-port
    instance-type-get
    instance-type-set!
    instance-type-update!
    ()
    System.Runtime.Serialization.Formatters.Binary.ClrTypeMetadata
    InstanceType
    System.Type)
  (define-field-port
    requires-types?
    #f
    #f
    (property:)
    System.Runtime.Serialization.Formatters.Binary.ClrTypeMetadata
    RequiresTypes
    System.Boolean))
