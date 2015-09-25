(library (system runtime remoting messaging remoting-surrogate-selector)
  (export new
          is?
          remoting-surrogate-selector?
          use-soap-format
          get-root-object
          get-next-selector
          set-root-object
          get-surrogate
          chain-selector
          filter-get
          filter-set!
          filter-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
      a))
  (define (remoting-surrogate-selector? a)
    (clr-is
      System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
      a))
  (define-method-port
    use-soap-format
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    UseSoapFormat
    (System.Void))
  (define-method-port
    get-root-object
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    GetRootObject
    (System.Object))
  (define-method-port
    get-next-selector
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    GetNextSelector
    (System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    set-root-object
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    SetRootObject
    (System.Void System.Object))
  (define-method-port
    get-surrogate
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    GetSurrogate
    (System.Runtime.Serialization.ISerializationSurrogate
      System.Type
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISurrogateSelector&))
  (define-method-port
    chain-selector
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    ChainSelector
    (System.Void System.Runtime.Serialization.ISurrogateSelector))
  (define-field-port
    filter-get
    filter-set!
    filter-update!
    (property:)
    System.Runtime.Remoting.Messaging.RemotingSurrogateSelector
    Filter
    System.Runtime.Remoting.Messaging.MessageSurrogateFilter))
