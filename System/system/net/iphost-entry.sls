(library (system net iphost-entry)
  (export new
          is?
          iphost-entry?
          address-list-get
          address-list-set!
          address-list-update!
          aliases-get
          aliases-set!
          aliases-update!
          host-name-get
          host-name-set!
          host-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.IPHostEntry a ...)))))
  (define (is? a) (clr-is System.Net.IPHostEntry a))
  (define (iphost-entry? a) (clr-is System.Net.IPHostEntry a))
  (define-field-port
    address-list-get
    address-list-set!
    address-list-update!
    (property:)
    System.Net.IPHostEntry
    AddressList
    System.Net.IPAddress[])
  (define-field-port
    aliases-get
    aliases-set!
    aliases-update!
    (property:)
    System.Net.IPHostEntry
    Aliases
    System.String[])
  (define-field-port
    host-name-get
    host-name-set!
    host-name-update!
    (property:)
    System.Net.IPHostEntry
    HostName
    System.String))
