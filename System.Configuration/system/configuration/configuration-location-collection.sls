(library (system configuration configuration-location-collection)
  (export is? configuration-location-collection? item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationLocationCollection a))
  (define (configuration-location-collection? a)
    (clr-is System.Configuration.ConfigurationLocationCollection a))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLocationCollection
    Item
    System.Configuration.ConfigurationLocation))
