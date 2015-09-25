(library (system known-terminals)
  (export is? known-terminals? linux xterm ansi)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.KnownTerminals a))
  (define (known-terminals? a) (clr-is System.KnownTerminals a))
  (define-field-port
    linux
    #f
    #f
    (static: property:)
    System.KnownTerminals
    linux
    System.Byte[])
  (define-field-port
    xterm
    #f
    #f
    (static: property:)
    System.KnownTerminals
    xterm
    System.Byte[])
  (define-field-port
    ansi
    #f
    #f
    (static: property:)
    System.KnownTerminals
    ansi
    System.Byte[]))
