(library (system diagnostics switch)
  (export is? switch? description display-name attributes)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Diagnostics.Switch a))
  (define (switch? a) (clr-is System.Diagnostics.Switch a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Diagnostics.Switch
    Description
    System.String)
  (define-field-port
    display-name
    #f
    #f
    (property:)
    System.Diagnostics.Switch
    DisplayName
    System.String)
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Diagnostics.Switch
    Attributes
    System.Collections.Specialized.StringDictionary))
