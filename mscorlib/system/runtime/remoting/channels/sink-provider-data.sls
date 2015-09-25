(library (system runtime remoting channels sink-provider-data)
  (export new is? sink-provider-data? children name properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Channels.SinkProviderData
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Channels.SinkProviderData a))
  (define (sink-provider-data? a)
    (clr-is System.Runtime.Remoting.Channels.SinkProviderData a))
  (define-field-port
    children
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.SinkProviderData
    Children
    System.Collections.IList)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.SinkProviderData
    Name
    System.String)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Runtime.Remoting.Channels.SinkProviderData
    Properties
    System.Collections.IDictionary))
