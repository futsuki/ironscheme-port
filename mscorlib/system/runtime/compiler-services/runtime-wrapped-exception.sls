(library (system runtime compiler-services runtime-wrapped-exception)
  (export is?
          runtime-wrapped-exception?
          get-object-data
          wrapped-exception)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.RuntimeWrappedException a))
  (define (runtime-wrapped-exception? a)
    (clr-is System.Runtime.CompilerServices.RuntimeWrappedException a))
  (define-method-port
    get-object-data
    System.Runtime.CompilerServices.RuntimeWrappedException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    wrapped-exception
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.RuntimeWrappedException
    WrappedException
    System.Object))
