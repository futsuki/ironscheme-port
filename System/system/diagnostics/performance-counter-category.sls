(library (system diagnostics performance-counter-category)
  (export new
          is?
          performance-counter-category?
          delete
          instance-exists?
          create
          get-categories
          get-counters
          counter-exists?
          get-instance-names
          exists?
          read-category
          category-help
          category-name-get
          category-name-set!
          category-name-update!
          machine-name-get
          machine-name-set!
          machine-name-update!
          category-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.PerformanceCounterCategory
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.PerformanceCounterCategory a))
  (define (performance-counter-category? a)
    (clr-is System.Diagnostics.PerformanceCounterCategory a))
  (define-method-port
    delete
    System.Diagnostics.PerformanceCounterCategory
    Delete
    (static: System.Void System.String))
  (define-method-port
    instance-exists?
    System.Diagnostics.PerformanceCounterCategory
    InstanceExists
    (static: System.Boolean System.String System.String System.String)
    (static: System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    create
    System.Diagnostics.PerformanceCounterCategory
    Create
    (static:
      System.Diagnostics.PerformanceCounterCategory
      System.String
      System.String
      System.Diagnostics.PerformanceCounterCategoryType
      System.String
      System.String)
    (static:
      System.Diagnostics.PerformanceCounterCategory
      System.String
      System.String
      System.Diagnostics.PerformanceCounterCategoryType
      System.Diagnostics.CounterCreationDataCollection)
    (static:
      System.Diagnostics.PerformanceCounterCategory
      System.String
      System.String
      System.String
      System.String)
    (static:
      System.Diagnostics.PerformanceCounterCategory
      System.String
      System.String
      System.Diagnostics.CounterCreationDataCollection))
  (define-method-port
    get-categories
    System.Diagnostics.PerformanceCounterCategory
    GetCategories
    (static:
      System.Diagnostics.PerformanceCounterCategory[]
      System.String)
    (static: System.Diagnostics.PerformanceCounterCategory[]))
  (define-method-port
    get-counters
    System.Diagnostics.PerformanceCounterCategory
    GetCounters
    (System.Diagnostics.PerformanceCounter[] System.String)
    (System.Diagnostics.PerformanceCounter[]))
  (define-method-port
    counter-exists?
    System.Diagnostics.PerformanceCounterCategory
    CounterExists
    (static: System.Boolean System.String System.String System.String)
    (static: System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    get-instance-names
    System.Diagnostics.PerformanceCounterCategory
    GetInstanceNames
    (System.String[]))
  (define-method-port
    exists?
    System.Diagnostics.PerformanceCounterCategory
    Exists
    (static: System.Boolean System.String System.String)
    (static: System.Boolean System.String))
  (define-method-port
    read-category
    System.Diagnostics.PerformanceCounterCategory
    ReadCategory
    (System.Diagnostics.InstanceDataCollectionCollection))
  (define-field-port
    category-help
    #f
    #f
    (property:)
    System.Diagnostics.PerformanceCounterCategory
    CategoryHelp
    System.String)
  (define-field-port
    category-name-get
    category-name-set!
    category-name-update!
    (property:)
    System.Diagnostics.PerformanceCounterCategory
    CategoryName
    System.String)
  (define-field-port
    machine-name-get
    machine-name-set!
    machine-name-update!
    (property:)
    System.Diagnostics.PerformanceCounterCategory
    MachineName
    System.String)
  (define-field-port
    category-type
    #f
    #f
    (property:)
    System.Diagnostics.PerformanceCounterCategory
    CategoryType
    System.Diagnostics.PerformanceCounterCategoryType))
