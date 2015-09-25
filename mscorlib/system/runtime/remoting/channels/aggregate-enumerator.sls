(library (system runtime remoting channels aggregate-enumerator)
  (export new
          is?
          aggregate-enumerator?
          reset
          move-next?
          entry
          key
          value
          current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.AggregateEnumerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.AggregateEnumerator a))
  (define (aggregate-enumerator? a)
    (clr-is System.Runtime.Remoting.Channels.AggregateEnumerator a))
  (define-method-port
    reset
    System.Runtime.Remoting.Channels.AggregateEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Runtime.Remoting.Channels.AggregateEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    entry
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateEnumerator
    Entry
    System.Collections.DictionaryEntry)
  (define-field-port
    key
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateEnumerator
    Key
    System.Object)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateEnumerator
    Value
    System.Object)
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.AggregateEnumerator
    Current
    System.Object))
