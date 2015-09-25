(library (system net configuration socket-element)
  (export new
          is?
          socket-element?
          always-use-completion-ports-for-accept?-get
          always-use-completion-ports-for-accept?-set!
          always-use-completion-ports-for-accept?-update!
          always-use-completion-ports-for-connect?-get
          always-use-completion-ports-for-connect?-set!
          always-use-completion-ports-for-connect?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.SocketElement a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.SocketElement a))
  (define (socket-element? a)
    (clr-is System.Net.Configuration.SocketElement a))
  (define-field-port
    always-use-completion-ports-for-accept?-get
    always-use-completion-ports-for-accept?-set!
    always-use-completion-ports-for-accept?-update!
    (property:)
    System.Net.Configuration.SocketElement
    AlwaysUseCompletionPortsForAccept
    System.Boolean)
  (define-field-port
    always-use-completion-ports-for-connect?-get
    always-use-completion-ports-for-connect?-set!
    always-use-completion-ports-for-connect?-update!
    (property:)
    System.Net.Configuration.SocketElement
    AlwaysUseCompletionPortsForConnect
    System.Boolean))
