(library (system configuration configuration-element)
  (export is?
          configuration-element?
          get-hash-code
          is-read-only?
          equals?
          element-information
          lock-all-attributes-except
          lock-all-elements-except
          lock-attributes
          lock-elements
          lock-item?-get
          lock-item?-set!
          lock-item?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ConfigurationElement a))
  (define (configuration-element? a)
    (clr-is System.Configuration.ConfigurationElement a))
  (define-method-port
    get-hash-code
    System.Configuration.ConfigurationElement
    GetHashCode
    (System.Int32))
  (define-method-port
    is-read-only?
    System.Configuration.ConfigurationElement
    IsReadOnly
    (System.Boolean))
  (define-method-port
    equals?
    System.Configuration.ConfigurationElement
    Equals
    (System.Boolean System.Object))
  (define-field-port
    element-information
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElement
    ElementInformation
    System.Configuration.ElementInformation)
  (define-field-port
    lock-all-attributes-except
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElement
    LockAllAttributesExcept
    System.Configuration.ConfigurationLockCollection)
  (define-field-port
    lock-all-elements-except
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElement
    LockAllElementsExcept
    System.Configuration.ConfigurationLockCollection)
  (define-field-port
    lock-attributes
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElement
    LockAttributes
    System.Configuration.ConfigurationLockCollection)
  (define-field-port
    lock-elements
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElement
    LockElements
    System.Configuration.ConfigurationLockCollection)
  (define-field-port
    lock-item?-get
    lock-item?-set!
    lock-item?-update!
    (property:)
    System.Configuration.ConfigurationElement
    LockItem
    System.Boolean))
