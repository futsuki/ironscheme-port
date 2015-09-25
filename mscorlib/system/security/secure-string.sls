(library (system security secure-string)
  (export new
          is?
          secure-string?
          remove-at
          dispose
          append-char
          insert-at
          is-read-only?
          set-at
          make-read-only
          clear
          copy
          length)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.SecureString a ...)))))
  (define (is? a) (clr-is System.Security.SecureString a))
  (define (secure-string? a) (clr-is System.Security.SecureString a))
  (define-method-port
    remove-at
    System.Security.SecureString
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    dispose
    System.Security.SecureString
    Dispose
    (System.Void))
  (define-method-port
    append-char
    System.Security.SecureString
    AppendChar
    (System.Void System.Char))
  (define-method-port
    insert-at
    System.Security.SecureString
    InsertAt
    (System.Void System.Int32 System.Char))
  (define-method-port
    is-read-only?
    System.Security.SecureString
    IsReadOnly
    (System.Boolean))
  (define-method-port
    set-at
    System.Security.SecureString
    SetAt
    (System.Void System.Int32 System.Char))
  (define-method-port
    make-read-only
    System.Security.SecureString
    MakeReadOnly
    (System.Void))
  (define-method-port
    clear
    System.Security.SecureString
    Clear
    (System.Void))
  (define-method-port
    copy
    System.Security.SecureString
    Copy
    (System.Security.SecureString))
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Security.SecureString
    Length
    System.Int32))
