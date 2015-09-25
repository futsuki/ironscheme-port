(library (system collections generic rbtree)
  (export new
          is?
          rbtree?
          intern
          get-enumerator
          remove
          lookup
          clear
          count
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Collections.Generic.RBTree a ...)))))
  (define (is? a) (clr-is System.Collections.Generic.RBTree a))
  (define (rbtree? a) (clr-is System.Collections.Generic.RBTree a))
  (define-method-port intern System.Collections.Generic.RBTree Intern)
  (define-method-port
    get-enumerator
    System.Collections.Generic.RBTree
    GetEnumerator
    (System.Collections.Generic.RBTree+NodeEnumerator))
  (define-method-port remove System.Collections.Generic.RBTree Remove)
  (define-method-port lookup System.Collections.Generic.RBTree Lookup)
  (define-method-port
    clear
    System.Collections.Generic.RBTree
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Generic.RBTree
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Collections.Generic.RBTree
    Item
    System.Collections.Generic.RBTree+Node))
