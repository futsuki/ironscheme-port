(library (system resources win32-icon-resource)
  (export new is? win32-icon-resource? write-to icon)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Resources.Win32IconResource a ...)))))
  (define (is? a) (clr-is System.Resources.Win32IconResource a))
  (define (win32-icon-resource? a)
    (clr-is System.Resources.Win32IconResource a))
  (define-method-port
    write-to
    System.Resources.Win32IconResource
    WriteTo
    (System.Void System.IO.Stream))
  (define-field-port
    icon
    #f
    #f
    (property:)
    System.Resources.Win32IconResource
    Icon
    System.Resources.ICONDIRENTRY))
