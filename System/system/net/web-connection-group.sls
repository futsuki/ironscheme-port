(library (system net web-connection-group)
  (export new is? web-connection-group? get-connection close name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebConnectionGroup a ...)))))
  (define (is? a) (clr-is System.Net.WebConnectionGroup a))
  (define (web-connection-group? a)
    (clr-is System.Net.WebConnectionGroup a))
  (define-method-port
    get-connection
    System.Net.WebConnectionGroup
    GetConnection
    (System.Net.WebConnection System.Net.HttpWebRequest))
  (define-method-port
    close
    System.Net.WebConnectionGroup
    Close
    (System.Void))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Net.WebConnectionGroup
    Name
    System.String))
