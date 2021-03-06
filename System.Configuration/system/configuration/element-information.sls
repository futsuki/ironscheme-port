(library (system configuration element-information)
  (export is?
          element-information?
          errors
          is-collection?
          is-locked?
          is-present?
          line-number
          source
          type
          validator
          properties)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ElementInformation a))
  (define (element-information? a)
    (clr-is System.Configuration.ElementInformation a))
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    Errors
    System.Collections.ICollection)
  (define-field-port
    is-collection?
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    IsCollection
    System.Boolean)
  (define-field-port
    is-locked?
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    IsLocked
    System.Boolean)
  (define-field-port
    is-present?
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    IsPresent
    System.Boolean)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    LineNumber
    System.Int32)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    Source
    System.String)
  (define-field-port
    type
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    Type
    System.Type)
  (define-field-port
    validator
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    Validator
    System.Configuration.ConfigurationValidatorBase)
  (define-field-port
    properties
    #f
    #f
    (property:)
    System.Configuration.ElementInformation
    Properties
    System.Configuration.PropertyInformationCollection))
