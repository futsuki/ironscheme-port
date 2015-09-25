(library (system component-model property-descriptor-collection)
  (export new
          is?
          property-descriptor-collection?
          copy-to
          find
          sort
          remove-at
          index-of
          get-enumerator
          add
          contains?
          remove
          insert
          clear
          empty
          count
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.PropertyDescriptorCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.PropertyDescriptorCollection a))
  (define (property-descriptor-collection? a)
    (clr-is System.ComponentModel.PropertyDescriptorCollection a))
  (define-method-port
    copy-to
    System.ComponentModel.PropertyDescriptorCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    find
    System.ComponentModel.PropertyDescriptorCollection
    Find
    (System.ComponentModel.PropertyDescriptor
      System.String
      System.Boolean))
  (define-method-port
    sort
    System.ComponentModel.PropertyDescriptorCollection
    Sort
    (System.ComponentModel.PropertyDescriptorCollection
      System.String[]
      System.Collections.IComparer)
    (System.ComponentModel.PropertyDescriptorCollection System.String[])
    (System.ComponentModel.PropertyDescriptorCollection
      System.Collections.IComparer)
    (System.ComponentModel.PropertyDescriptorCollection))
  (define-method-port
    remove-at
    System.ComponentModel.PropertyDescriptorCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.ComponentModel.PropertyDescriptorCollection
    IndexOf
    (System.Int32 System.ComponentModel.PropertyDescriptor))
  (define-method-port
    get-enumerator
    System.ComponentModel.PropertyDescriptorCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.ComponentModel.PropertyDescriptorCollection
    Add
    (System.Int32 System.ComponentModel.PropertyDescriptor))
  (define-method-port
    contains?
    System.ComponentModel.PropertyDescriptorCollection
    Contains
    (System.Boolean System.ComponentModel.PropertyDescriptor))
  (define-method-port
    remove
    System.ComponentModel.PropertyDescriptorCollection
    Remove
    (System.Void System.ComponentModel.PropertyDescriptor))
  (define-method-port
    insert
    System.ComponentModel.PropertyDescriptorCollection
    Insert
    (System.Void System.Int32 System.ComponentModel.PropertyDescriptor))
  (define-method-port
    clear
    System.ComponentModel.PropertyDescriptorCollection
    Clear
    (System.Void))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.ComponentModel.PropertyDescriptorCollection
    Empty
    System.ComponentModel.PropertyDescriptorCollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptorCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptorCollection
    Item
    System.ComponentModel.PropertyDescriptor)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptorCollection
    Item
    System.ComponentModel.PropertyDescriptor))
