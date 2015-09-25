(library (system uri-parser)
  (export is? uri-parser? is-known-scheme? register)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.UriParser a))
  (define (uri-parser? a) (clr-is System.UriParser a))
  (define-method-port
    is-known-scheme?
    System.UriParser
    IsKnownScheme
    (static: System.Boolean System.String))
  (define-method-port
    register
    System.UriParser
    Register
    (static: System.Void System.UriParser System.String System.Int32)))
