(library (system data common db-connection-string-builder-helper)
  (export new
          is?
          db-connection-string-builder-helper?
          convert-to-int32
          convert-to-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DbConnectionStringBuilderHelper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DbConnectionStringBuilderHelper a))
  (define (db-connection-string-builder-helper? a)
    (clr-is System.Data.Common.DbConnectionStringBuilderHelper a))
  (define-method-port
    convert-to-int32
    System.Data.Common.DbConnectionStringBuilderHelper
    ConvertToInt32
    (static: System.Int32 System.Object))
  (define-method-port
    convert-to-boolean?
    System.Data.Common.DbConnectionStringBuilderHelper
    ConvertToBoolean
    (static: System.Boolean System.Object)))
