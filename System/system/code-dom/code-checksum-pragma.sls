(library (system code-dom code-checksum-pragma)
  (export new
          is?
          code-checksum-pragma?
          checksum-algorithm-id-get
          checksum-algorithm-id-set!
          checksum-algorithm-id-update!
          checksum-data-get
          checksum-data-set!
          checksum-data-update!
          file-name-get
          file-name-set!
          file-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeChecksumPragma a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeChecksumPragma a))
  (define (code-checksum-pragma? a)
    (clr-is System.CodeDom.CodeChecksumPragma a))
  (define-field-port
    checksum-algorithm-id-get
    checksum-algorithm-id-set!
    checksum-algorithm-id-update!
    (property:)
    System.CodeDom.CodeChecksumPragma
    ChecksumAlgorithmId
    System.Guid)
  (define-field-port
    checksum-data-get
    checksum-data-set!
    checksum-data-update!
    (property:)
    System.CodeDom.CodeChecksumPragma
    ChecksumData
    System.Byte[])
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    (property:)
    System.CodeDom.CodeChecksumPragma
    FileName
    System.String))
