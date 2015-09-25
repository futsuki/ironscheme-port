(library (system configuration comma-delimited-string-collection)
  (export new
          is?
          comma-delimited-string-collection?
          set-read-only
          add-range
          insert
          add
          remove
          clone
          clear
          to-string
          is-modified?
          is-read-only?
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.CommaDelimitedStringCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.CommaDelimitedStringCollection a))
  (define (comma-delimited-string-collection? a)
    (clr-is System.Configuration.CommaDelimitedStringCollection a))
  (define-method-port
    set-read-only
    System.Configuration.CommaDelimitedStringCollection
    SetReadOnly
    (System.Void))
  (define-method-port
    add-range
    System.Configuration.CommaDelimitedStringCollection
    AddRange
    (System.Void System.String[]))
  (define-method-port
    insert
    System.Configuration.CommaDelimitedStringCollection
    Insert
    (System.Void System.Int32 System.String))
  (define-method-port
    add
    System.Configuration.CommaDelimitedStringCollection
    Add
    (System.Void System.String))
  (define-method-port
    remove
    System.Configuration.CommaDelimitedStringCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clone
    System.Configuration.CommaDelimitedStringCollection
    Clone
    (System.Configuration.CommaDelimitedStringCollection))
  (define-method-port
    clear
    System.Configuration.CommaDelimitedStringCollection
    Clear
    (System.Void))
  (define-method-port
    to-string
    System.Configuration.CommaDelimitedStringCollection
    ToString
    (System.String))
  (define-field-port
    is-modified?
    #f
    #f
    (property:)
    System.Configuration.CommaDelimitedStringCollection
    IsModified
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Configuration.CommaDelimitedStringCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Configuration.CommaDelimitedStringCollection
    Item
    System.String))
