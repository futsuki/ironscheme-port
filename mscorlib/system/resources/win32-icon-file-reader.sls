(library (system resources win32-icon-file-reader)
  (export new is? win32-icon-file-reader? read-icons)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Resources.Win32IconFileReader a ...)))))
  (define (is? a) (clr-is System.Resources.Win32IconFileReader a))
  (define (win32-icon-file-reader? a)
    (clr-is System.Resources.Win32IconFileReader a))
  (define-method-port
    read-icons
    System.Resources.Win32IconFileReader
    ReadIcons
    (System.Resources.ICONDIRENTRY[])))
