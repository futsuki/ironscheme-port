(library (system diagnostics process-thread-collection)
  (export new
          is?
          process-thread-collection?
          insert
          index-of
          add
          contains?
          remove
          copy-to
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.ProcessThreadCollection
             a
             ...)))))
  (define (is? a) (clr-is System.Diagnostics.ProcessThreadCollection a))
  (define (process-thread-collection? a)
    (clr-is System.Diagnostics.ProcessThreadCollection a))
  (define-method-port
    insert
    System.Diagnostics.ProcessThreadCollection
    Insert
    (System.Void System.Int32 System.Diagnostics.ProcessThread))
  (define-method-port
    index-of
    System.Diagnostics.ProcessThreadCollection
    IndexOf
    (System.Int32 System.Diagnostics.ProcessThread))
  (define-method-port
    add
    System.Diagnostics.ProcessThreadCollection
    Add
    (System.Int32 System.Diagnostics.ProcessThread))
  (define-method-port
    contains?
    System.Diagnostics.ProcessThreadCollection
    Contains
    (System.Boolean System.Diagnostics.ProcessThread))
  (define-method-port
    remove
    System.Diagnostics.ProcessThreadCollection
    Remove
    (System.Void System.Diagnostics.ProcessThread))
  (define-method-port
    copy-to
    System.Diagnostics.ProcessThreadCollection
    CopyTo
    (System.Void System.Diagnostics.ProcessThread[] System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Diagnostics.ProcessThreadCollection
    Item
    System.Diagnostics.ProcessThread))
