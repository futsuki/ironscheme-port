(library (system resources win32-res-file-reader)
  (export new is? win32-res-file-reader? read-resources)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Resources.Win32ResFileReader a ...)))))
  (define (is? a) (clr-is System.Resources.Win32ResFileReader a))
  (define (win32-res-file-reader? a)
    (clr-is System.Resources.Win32ResFileReader a))
  (define-method-port
    read-resources
    System.Resources.Win32ResFileReader
    ReadResources
    (System.Collections.ICollection)))
