(library (system component-model event-descriptor-collection)
  (export new
          is?
          event-descriptor-collection?
          remove-at
          find
          sort
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
             System.ComponentModel.EventDescriptorCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.EventDescriptorCollection a))
  (define (event-descriptor-collection? a)
    (clr-is System.ComponentModel.EventDescriptorCollection a))
  (define-method-port
    remove-at
    System.ComponentModel.EventDescriptorCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    find
    System.ComponentModel.EventDescriptorCollection
    Find
    (System.ComponentModel.EventDescriptor
      System.String
      System.Boolean))
  (define-method-port
    sort
    System.ComponentModel.EventDescriptorCollection
    Sort
    (System.ComponentModel.EventDescriptorCollection
      System.String[]
      System.Collections.IComparer)
    (System.ComponentModel.EventDescriptorCollection System.String[])
    (System.ComponentModel.EventDescriptorCollection
      System.Collections.IComparer)
    (System.ComponentModel.EventDescriptorCollection))
  (define-method-port
    index-of
    System.ComponentModel.EventDescriptorCollection
    IndexOf
    (System.Int32 System.ComponentModel.EventDescriptor))
  (define-method-port
    get-enumerator
    System.ComponentModel.EventDescriptorCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.ComponentModel.EventDescriptorCollection
    Add
    (System.Int32 System.ComponentModel.EventDescriptor))
  (define-method-port
    contains?
    System.ComponentModel.EventDescriptorCollection
    Contains
    (System.Boolean System.ComponentModel.EventDescriptor))
  (define-method-port
    remove
    System.ComponentModel.EventDescriptorCollection
    Remove
    (System.Void System.ComponentModel.EventDescriptor))
  (define-method-port
    insert
    System.ComponentModel.EventDescriptorCollection
    Insert
    (System.Void System.Int32 System.ComponentModel.EventDescriptor))
  (define-method-port
    clear
    System.ComponentModel.EventDescriptorCollection
    Clear
    (System.Void))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.ComponentModel.EventDescriptorCollection
    Empty
    System.ComponentModel.EventDescriptorCollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.ComponentModel.EventDescriptorCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.EventDescriptorCollection
    Item
    System.ComponentModel.EventDescriptor)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.EventDescriptorCollection
    Item
    System.ComponentModel.EventDescriptor))
