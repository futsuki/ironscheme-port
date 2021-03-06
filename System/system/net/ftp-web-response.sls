(library (system net ftp-web-response)
  (export is?
          ftp-web-response?
          get-response-stream
          close
          content-length
          headers
          response-uri
          last-modified
          banner-message
          welcome-message
          exit-message
          status-code
          status-description)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.FtpWebResponse a))
  (define (ftp-web-response? a) (clr-is System.Net.FtpWebResponse a))
  (define-method-port
    get-response-stream
    System.Net.FtpWebResponse
    GetResponseStream
    (System.IO.Stream))
  (define-method-port
    close
    System.Net.FtpWebResponse
    Close
    (System.Void))
  (define-field-port
    content-length
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    ContentLength
    System.Int64)
  (define-field-port
    headers
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    Headers
    System.Net.WebHeaderCollection)
  (define-field-port
    response-uri
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    ResponseUri
    System.Uri)
  (define-field-port
    last-modified
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    LastModified
    System.DateTime)
  (define-field-port
    banner-message
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    BannerMessage
    System.String)
  (define-field-port
    welcome-message
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    WelcomeMessage
    System.String)
  (define-field-port
    exit-message
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    ExitMessage
    System.String)
  (define-field-port
    status-code
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    StatusCode
    System.Net.FtpStatusCode)
  (define-field-port
    status-description
    #f
    #f
    (property:)
    System.Net.FtpWebResponse
    StatusDescription
    System.String))
