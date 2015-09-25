(library (system text regular-expressions group)
  (export is? group? synchronized captures success?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.RegularExpressions.Group a))
  (define (group? a) (clr-is System.Text.RegularExpressions.Group a))
  (define-method-port
    synchronized
    System.Text.RegularExpressions.Group
    Synchronized
    (static:
      System.Text.RegularExpressions.Group
      System.Text.RegularExpressions.Group))
  (define-field-port
    captures
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Group
    Captures
    System.Text.RegularExpressions.CaptureCollection)
  (define-field-port
    success?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Group
    Success
    System.Boolean))
