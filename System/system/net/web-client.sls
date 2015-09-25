(library (system net web-client)
  (export new
          is?
          web-client?
          open-write
          upload-string-async
          open-read
          open-write-async
          upload-values
          cancel-async
          download-data
          upload-values-async
          download-file
          upload-file
          upload-string
          download-string-async
          upload-file-async
          upload-data-async
          upload-data
          download-string
          download-data-async
          download-file-async
          open-read-async
          base-address-get
          base-address-set!
          base-address-update!
          cache-policy-get
          cache-policy-set!
          cache-policy-update!
          use-default-credentials?-get
          use-default-credentials?-set!
          use-default-credentials?-update!
          credentials-get
          credentials-set!
          credentials-update!
          headers-get
          headers-set!
          headers-update!
          query-string-get
          query-string-set!
          query-string-update!
          response-headers
          encoding-get
          encoding-set!
          encoding-update!
          proxy-get
          proxy-set!
          proxy-update!
          is-busy?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebClient a ...)))))
  (define (is? a) (clr-is System.Net.WebClient a))
  (define (web-client? a) (clr-is System.Net.WebClient a))
  (define-method-port
    open-write
    System.Net.WebClient
    OpenWrite
    (System.IO.Stream System.Uri System.String)
    (System.IO.Stream System.Uri)
    (System.IO.Stream System.String System.String)
    (System.IO.Stream System.String))
  (define-method-port
    upload-string-async
    System.Net.WebClient
    UploadStringAsync
    (System.Void System.Uri System.String System.String System.Object)
    (System.Void System.Uri System.String System.String)
    (System.Void System.Uri System.String))
  (define-method-port
    open-read
    System.Net.WebClient
    OpenRead
    (System.IO.Stream System.Uri)
    (System.IO.Stream System.String))
  (define-method-port
    open-write-async
    System.Net.WebClient
    OpenWriteAsync
    (System.Void System.Uri System.String System.Object)
    (System.Void System.Uri System.String)
    (System.Void System.Uri))
  (define-method-port
    upload-values
    System.Net.WebClient
    UploadValues
    (System.Byte[]
      System.Uri
      System.String
      System.Collections.Specialized.NameValueCollection)
    (System.Byte[]
      System.Uri
      System.Collections.Specialized.NameValueCollection)
    (System.Byte[]
      System.String
      System.String
      System.Collections.Specialized.NameValueCollection)
    (System.Byte[]
      System.String
      System.Collections.Specialized.NameValueCollection))
  (define-method-port
    cancel-async
    System.Net.WebClient
    CancelAsync
    (System.Void))
  (define-method-port
    download-data
    System.Net.WebClient
    DownloadData
    (System.Byte[] System.Uri)
    (System.Byte[] System.String))
  (define-method-port
    upload-values-async
    System.Net.WebClient
    UploadValuesAsync
    (System.Void
      System.Uri
      System.String
      System.Collections.Specialized.NameValueCollection
      System.Object)
    (System.Void
      System.Uri
      System.String
      System.Collections.Specialized.NameValueCollection)
    (System.Void
      System.Uri
      System.Collections.Specialized.NameValueCollection))
  (define-method-port
    download-file
    System.Net.WebClient
    DownloadFile
    (System.Void System.Uri System.String)
    (System.Void System.String System.String))
  (define-method-port
    upload-file
    System.Net.WebClient
    UploadFile
    (System.Byte[] System.Uri System.String System.String)
    (System.Byte[] System.String System.String System.String)
    (System.Byte[] System.Uri System.String)
    (System.Byte[] System.String System.String))
  (define-method-port
    upload-string
    System.Net.WebClient
    UploadString
    (System.String System.Uri System.String System.String)
    (System.String System.Uri System.String)
    (System.String System.String System.String System.String)
    (System.String System.String System.String))
  (define-method-port
    download-string-async
    System.Net.WebClient
    DownloadStringAsync
    (System.Void System.Uri System.Object)
    (System.Void System.Uri))
  (define-method-port
    upload-file-async
    System.Net.WebClient
    UploadFileAsync
    (System.Void System.Uri System.String System.String System.Object)
    (System.Void System.Uri System.String System.String)
    (System.Void System.Uri System.String))
  (define-method-port
    upload-data-async
    System.Net.WebClient
    UploadDataAsync
    (System.Void System.Uri System.String System.Byte[] System.Object)
    (System.Void System.Uri System.String System.Byte[])
    (System.Void System.Uri System.Byte[]))
  (define-method-port
    upload-data
    System.Net.WebClient
    UploadData
    (System.Byte[] System.Uri System.String System.Byte[])
    (System.Byte[] System.Uri System.Byte[])
    (System.Byte[] System.String System.String System.Byte[])
    (System.Byte[] System.String System.Byte[]))
  (define-method-port
    download-string
    System.Net.WebClient
    DownloadString
    (System.String System.Uri)
    (System.String System.String))
  (define-method-port
    download-data-async
    System.Net.WebClient
    DownloadDataAsync
    (System.Void System.Uri System.Object)
    (System.Void System.Uri))
  (define-method-port
    download-file-async
    System.Net.WebClient
    DownloadFileAsync
    (System.Void System.Uri System.String System.Object)
    (System.Void System.Uri System.String))
  (define-method-port
    open-read-async
    System.Net.WebClient
    OpenReadAsync
    (System.Void System.Uri System.Object)
    (System.Void System.Uri))
  (define-field-port
    base-address-get
    base-address-set!
    base-address-update!
    (property:)
    System.Net.WebClient
    BaseAddress
    System.String)
  (define-field-port
    cache-policy-get
    cache-policy-set!
    cache-policy-update!
    (property:)
    System.Net.WebClient
    CachePolicy
    System.Net.Cache.RequestCachePolicy)
  (define-field-port
    use-default-credentials?-get
    use-default-credentials?-set!
    use-default-credentials?-update!
    (property:)
    System.Net.WebClient
    UseDefaultCredentials
    System.Boolean)
  (define-field-port
    credentials-get
    credentials-set!
    credentials-update!
    (property:)
    System.Net.WebClient
    Credentials
    System.Net.ICredentials)
  (define-field-port
    headers-get
    headers-set!
    headers-update!
    (property:)
    System.Net.WebClient
    Headers
    System.Net.WebHeaderCollection)
  (define-field-port
    query-string-get
    query-string-set!
    query-string-update!
    (property:)
    System.Net.WebClient
    QueryString
    System.Collections.Specialized.NameValueCollection)
  (define-field-port
    response-headers
    #f
    #f
    (property:)
    System.Net.WebClient
    ResponseHeaders
    System.Net.WebHeaderCollection)
  (define-field-port
    encoding-get
    encoding-set!
    encoding-update!
    (property:)
    System.Net.WebClient
    Encoding
    System.Text.Encoding)
  (define-field-port
    proxy-get
    proxy-set!
    proxy-update!
    (property:)
    System.Net.WebClient
    Proxy
    System.Net.IWebProxy)
  (define-field-port
    is-busy?
    #f
    #f
    (property:)
    System.Net.WebClient
    IsBusy
    System.Boolean))
