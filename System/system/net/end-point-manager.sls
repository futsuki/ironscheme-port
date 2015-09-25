(library (system net end-point-manager)
  (export is?
          end-point-manager?
          add-prefix
          remove-end-point
          remove-prefix
          remove-listener
          add-listener)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.EndPointManager a))
  (define (end-point-manager? a) (clr-is System.Net.EndPointManager a))
  (define-method-port
    add-prefix
    System.Net.EndPointManager
    AddPrefix
    (static: System.Void System.String System.Net.HttpListener))
  (define-method-port
    remove-end-point
    System.Net.EndPointManager
    RemoveEndPoint
    (static:
      System.Void
      System.Net.EndPointListener
      System.Net.IPEndPoint))
  (define-method-port
    remove-prefix
    System.Net.EndPointManager
    RemovePrefix
    (static: System.Void System.String System.Net.HttpListener))
  (define-method-port
    remove-listener
    System.Net.EndPointManager
    RemoveListener
    (static: System.Void System.Net.HttpListener))
  (define-method-port
    add-listener
    System.Net.EndPointManager
    AddListener
    (static: System.Void System.Net.HttpListener)))
