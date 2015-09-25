(library (system net http-listener-context)
  (export is? http-listener-context? request response user)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.HttpListenerContext a))
  (define (http-listener-context? a)
    (clr-is System.Net.HttpListenerContext a))
  (define-field-port
    request
    #f
    #f
    (property:)
    System.Net.HttpListenerContext
    Request
    System.Net.HttpListenerRequest)
  (define-field-port
    response
    #f
    #f
    (property:)
    System.Net.HttpListenerContext
    Response
    System.Net.HttpListenerResponse)
  (define-field-port
    user
    #f
    #f
    (property:)
    System.Net.HttpListenerContext
    User
    System.Security.Principal.IPrincipal))
