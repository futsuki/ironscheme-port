(library (system io isolated-storage isolated-storage-exception)
  (export new is? isolated-storage-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.IO.IsolatedStorage.IsolatedStorageException
             a
             ...)))))
  (define (is? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageException a))
  (define (isolated-storage-exception? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageException a)))
