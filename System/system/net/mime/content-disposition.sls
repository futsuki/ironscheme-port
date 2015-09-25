(library (system net mime content-disposition)
  (export new
          is?
          content-disposition?
          get-hash-code
          to-string
          equals?
          creation-date-get
          creation-date-set!
          creation-date-update!
          disposition-type-get
          disposition-type-set!
          disposition-type-update!
          file-name-get
          file-name-set!
          file-name-update!
          inline?-get
          inline?-set!
          inline?-update!
          modification-date-get
          modification-date-set!
          modification-date-update!
          parameters
          read-date-get
          read-date-set!
          read-date-update!
          size-get
          size-set!
          size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Mime.ContentDisposition a ...)))))
  (define (is? a) (clr-is System.Net.Mime.ContentDisposition a))
  (define (content-disposition? a)
    (clr-is System.Net.Mime.ContentDisposition a))
  (define-method-port
    get-hash-code
    System.Net.Mime.ContentDisposition
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Net.Mime.ContentDisposition
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Net.Mime.ContentDisposition
    Equals
    (System.Boolean System.Object))
  (define-field-port
    creation-date-get
    creation-date-set!
    creation-date-update!
    (property:)
    System.Net.Mime.ContentDisposition
    CreationDate
    System.DateTime)
  (define-field-port
    disposition-type-get
    disposition-type-set!
    disposition-type-update!
    (property:)
    System.Net.Mime.ContentDisposition
    DispositionType
    System.String)
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    (property:)
    System.Net.Mime.ContentDisposition
    FileName
    System.String)
  (define-field-port
    inline?-get
    inline?-set!
    inline?-update!
    (property:)
    System.Net.Mime.ContentDisposition
    Inline
    System.Boolean)
  (define-field-port
    modification-date-get
    modification-date-set!
    modification-date-update!
    (property:)
    System.Net.Mime.ContentDisposition
    ModificationDate
    System.DateTime)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Net.Mime.ContentDisposition
    Parameters
    System.Collections.Specialized.StringDictionary)
  (define-field-port
    read-date-get
    read-date-set!
    read-date-update!
    (property:)
    System.Net.Mime.ContentDisposition
    ReadDate
    System.DateTime)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    System.Net.Mime.ContentDisposition
    Size
    System.Int64))
