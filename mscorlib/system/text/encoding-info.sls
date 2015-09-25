(library (system text encoding-info)
  (export is?
          encoding-info?
          get-hash-code
          get-encoding
          equals?
          code-page
          display-name
          name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.EncodingInfo a))
  (define (encoding-info? a) (clr-is System.Text.EncodingInfo a))
  (define-method-port
    get-hash-code
    System.Text.EncodingInfo
    GetHashCode
    (System.Int32))
  (define-method-port
    get-encoding
    System.Text.EncodingInfo
    GetEncoding
    (System.Text.Encoding))
  (define-method-port
    equals?
    System.Text.EncodingInfo
    Equals
    (System.Boolean System.Object))
  (define-field-port
    code-page
    #f
    #f
    (property:)
    System.Text.EncodingInfo
    CodePage
    System.Int32)
  (define-field-port
    display-name
    #f
    #f
    (property:)
    System.Text.EncodingInfo
    DisplayName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Text.EncodingInfo
    Name
    System.String))
