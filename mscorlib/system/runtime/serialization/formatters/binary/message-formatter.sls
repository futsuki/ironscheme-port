(library (system
          runtime
          serialization
          formatters
          binary
          message-formatter)
  (export new
          is?
          message-formatter?
          read-method-call
          is-method-primitive?
          write-method-response
          write-method-call
          read-method-response)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.Binary.MessageFormatter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.MessageFormatter
      a))
  (define (message-formatter? a)
    (clr-is
      System.Runtime.Serialization.Formatters.Binary.MessageFormatter
      a))
  (define-method-port
    read-method-call
    System.Runtime.Serialization.Formatters.Binary.MessageFormatter
    ReadMethodCall
    (static:
      System.Object
      System.Runtime.Serialization.Formatters.Binary.BinaryElement
      System.IO.BinaryReader
      System.Boolean
      System.Runtime.Remoting.Messaging.HeaderHandler
      System.Runtime.Serialization.Formatters.Binary.BinaryFormatter)
    (static:
      System.Object
      System.IO.BinaryReader
      System.Boolean
      System.Runtime.Remoting.Messaging.HeaderHandler
      System.Runtime.Serialization.Formatters.Binary.BinaryFormatter))
  (define-method-port
    is-method-primitive?
    System.Runtime.Serialization.Formatters.Binary.MessageFormatter
    IsMethodPrimitive
    (static: System.Boolean System.Type))
  (define-method-port
    write-method-response
    System.Runtime.Serialization.Formatters.Binary.MessageFormatter
    WriteMethodResponse
    (static:
      System.Void
      System.IO.BinaryWriter
      System.Object
      System.Runtime.Remoting.Messaging.Header[]
      System.Runtime.Serialization.ISurrogateSelector
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.Formatters.FormatterAssemblyStyle
      System.Runtime.Serialization.Formatters.FormatterTypeStyle))
  (define-method-port
    write-method-call
    System.Runtime.Serialization.Formatters.Binary.MessageFormatter
    WriteMethodCall
    (static:
      System.Void
      System.IO.BinaryWriter
      System.Object
      System.Runtime.Remoting.Messaging.Header[]
      System.Runtime.Serialization.ISurrogateSelector
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.Formatters.FormatterAssemblyStyle
      System.Runtime.Serialization.Formatters.FormatterTypeStyle))
  (define-method-port
    read-method-response
    System.Runtime.Serialization.Formatters.Binary.MessageFormatter
    ReadMethodResponse
    (static:
      System.Object
      System.Runtime.Serialization.Formatters.Binary.BinaryElement
      System.IO.BinaryReader
      System.Boolean
      System.Runtime.Remoting.Messaging.HeaderHandler
      System.Runtime.Remoting.Messaging.IMethodCallMessage
      System.Runtime.Serialization.Formatters.Binary.BinaryFormatter)
    (static:
      System.Object
      System.IO.BinaryReader
      System.Boolean
      System.Runtime.Remoting.Messaging.HeaderHandler
      System.Runtime.Remoting.Messaging.IMethodCallMessage
      System.Runtime.Serialization.Formatters.Binary.BinaryFormatter)))
