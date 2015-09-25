(library (system configuration element-map)
  (export new
          is?
          element-map?
          get-map
          collection-attribute
          has-properties?
          properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Configuration.ElementMap a ...)))))
  (define (is? a) (clr-is System.Configuration.ElementMap a))
  (define (element-map? a) (clr-is System.Configuration.ElementMap a))
  (define-method-port
    get-map
    System.Configuration.ElementMap
    GetMap
    (static: System.Configuration.ElementMap System.Type))
  (define-field-port
    collection-attribute
    #f
    #f
    (property:)
    System.Configuration.ElementMap
    CollectionAttribute
    System.Configuration.ConfigurationCollectionAttribute)
  (define-field-port
    has-properties?
    #f
    #f
    (property:)
    System.Configuration.ElementMap
    HasProperties
    System.Boolean)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Configuration.ElementMap
    Properties
    System.Configuration.ConfigurationPropertyCollection))
