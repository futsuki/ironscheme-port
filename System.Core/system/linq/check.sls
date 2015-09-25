(library (system linq check)
  (export is?
          check?
          source-and-key-selector
          source-and-predicate
          source-and-func-and-selector
          source-and-collection-selector-and-result-selector
          join-selectors
          group-by-selectors
          source-and-collection-selectors
          source-and-func
          source
          source1-and-source2
          source-and-key-element-selectors
          source-and-selector
          source-and-key-result-selectors
          first-and-second)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Check a))
  (define (check? a) (clr-is System.Linq.Check a))
  (define-method-port
    source-and-key-selector
    System.Linq.Check
    SourceAndKeySelector
    (static: System.Void System.Object System.Object))
  (define-method-port
    source-and-predicate
    System.Linq.Check
    SourceAndPredicate
    (static: System.Void System.Object System.Object))
  (define-method-port
    source-and-func-and-selector
    System.Linq.Check
    SourceAndFuncAndSelector
    (static: System.Void System.Object System.Object System.Object))
  (define-method-port
    source-and-collection-selector-and-result-selector
    System.Linq.Check
    SourceAndCollectionSelectorAndResultSelector
    (static: System.Void System.Object System.Object System.Object))
  (define-method-port
    join-selectors
    System.Linq.Check
    JoinSelectors
    (static:
      System.Void
      System.Object
      System.Object
      System.Object
      System.Object
      System.Object))
  (define-method-port
    group-by-selectors
    System.Linq.Check
    GroupBySelectors
    (static:
      System.Void
      System.Object
      System.Object
      System.Object
      System.Object))
  (define-method-port
    source-and-collection-selectors
    System.Linq.Check
    SourceAndCollectionSelectors
    (static: System.Void System.Object System.Object System.Object))
  (define-method-port
    source-and-func
    System.Linq.Check
    SourceAndFunc
    (static: System.Void System.Object System.Object))
  (define-method-port
    source
    System.Linq.Check
    Source
    (static: System.Void System.Object))
  (define-method-port
    source1-and-source2
    System.Linq.Check
    Source1AndSource2
    (static: System.Void System.Object System.Object))
  (define-method-port
    source-and-key-element-selectors
    System.Linq.Check
    SourceAndKeyElementSelectors
    (static: System.Void System.Object System.Object System.Object))
  (define-method-port
    source-and-selector
    System.Linq.Check
    SourceAndSelector
    (static: System.Void System.Object System.Object))
  (define-method-port
    source-and-key-result-selectors
    System.Linq.Check
    SourceAndKeyResultSelectors
    (static: System.Void System.Object System.Object System.Object))
  (define-method-port
    first-and-second
    System.Linq.Check
    FirstAndSecond
    (static: System.Void System.Object System.Object)))
