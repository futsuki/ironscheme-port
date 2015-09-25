(library (system net file-web-response)
  (export is?
          file-web-response?
          get-response-stream
          close
          content-length
          content-type
          headers
          response-uri)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.FileWebResponse a))
  (define (file-web-response? a) (clr-is System.Net.FileWebResponse a))
  (define-method-port
    get-response-stream
    System.Net.FileWebResponse
    GetResponseStream
    (System.IO.Stream))
  (define-method-port
    close
    System.Net.FileWebResponse
    Close
    (System.Void))
  (define-field-port
    content-length
    #f
    #f
    (property:)
    System.Net.FileWebResponse
    ContentLength
    System.Int64)
  (define-field-port
    content-type
    #f
    #f
    (property:)
    System.Net.FileWebResponse
    ContentType
    System.String)
  (define-field-port
    headers
    #f
    #f
    (property:)
    System.Net.FileWebResponse
    Headers
    System.Net.WebHeaderCollection)
  (define-field-port
    response-uri
    #f
    #f
    (property:)
    System.Net.FileWebResponse
    ResponseUri
    System.Uri))
