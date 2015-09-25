(library (microsoft win32 win32-result-code)
  (export new
          is?
          win32-result-code?
          success
          file-not-found
          access-denied
          invalid-parameter
          more-data
          network-path-not-found
          no-more-entries
          marked-for-deletion)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Microsoft.Win32.Win32ResultCode a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.Win32ResultCode a))
  (define (win32-result-code? a)
    (clr-is Microsoft.Win32.Win32ResultCode a))
  (define-field-port
    success
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    Success
    System.Int32)
  (define-field-port
    file-not-found
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    FileNotFound
    System.Int32)
  (define-field-port
    access-denied
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    AccessDenied
    System.Int32)
  (define-field-port
    invalid-parameter
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    InvalidParameter
    System.Int32)
  (define-field-port
    more-data
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    MoreData
    System.Int32)
  (define-field-port
    network-path-not-found
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    NetworkPathNotFound
    System.Int32)
  (define-field-port
    no-more-entries
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    NoMoreEntries
    System.Int32)
  (define-field-port
    marked-for-deletion
    #f
    #f
    (static:)
    Microsoft.Win32.Win32ResultCode
    MarkedForDeletion
    System.Int32))
