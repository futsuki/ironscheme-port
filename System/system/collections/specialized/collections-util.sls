(library (system collections specialized collections-util)
  (export new
          is?
          collections-util?
          create-case-insensitive-hashtable
          create-case-insensitive-sorted-list)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Collections.Specialized.CollectionsUtil
             a
             ...)))))
  (define (is? a)
    (clr-is System.Collections.Specialized.CollectionsUtil a))
  (define (collections-util? a)
    (clr-is System.Collections.Specialized.CollectionsUtil a))
  (define-method-port
    create-case-insensitive-hashtable
    System.Collections.Specialized.CollectionsUtil
    CreateCaseInsensitiveHashtable
    (static: System.Collections.Hashtable System.Int32)
    (static:
      System.Collections.Hashtable
      System.Collections.IDictionary)
    (static: System.Collections.Hashtable))
  (define-method-port
    create-case-insensitive-sorted-list
    System.Collections.Specialized.CollectionsUtil
    CreateCaseInsensitiveSortedList
    (static: System.Collections.SortedList)))
