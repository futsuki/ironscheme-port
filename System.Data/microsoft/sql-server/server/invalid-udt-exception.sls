(library (microsoft sql-server server invalid-udt-exception)
  (export is? invalid-udt-exception? get-object-data)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is Microsoft.SqlServer.Server.InvalidUdtException a))
  (define (invalid-udt-exception? a)
    (clr-is Microsoft.SqlServer.Server.InvalidUdtException a))
  (define-method-port
    get-object-data
    Microsoft.SqlServer.Server.InvalidUdtException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
