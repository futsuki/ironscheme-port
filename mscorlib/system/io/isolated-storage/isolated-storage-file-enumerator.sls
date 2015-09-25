(library (system io isolated-storage isolated-storage-file-enumerator)
  (export new
          is?
          isolated-storage-file-enumerator?
          reset
          move-next?
          current)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.IO.IsolatedStorage.IsolatedStorageFileEnumerator
             a
             ...)))))
  (define (is? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageFileEnumerator a))
  (define (isolated-storage-file-enumerator? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageFileEnumerator a))
  (define-method-port
    reset
    System.IO.IsolatedStorage.IsolatedStorageFileEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.IO.IsolatedStorage.IsolatedStorageFileEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileEnumerator
    Current
    System.Object))
