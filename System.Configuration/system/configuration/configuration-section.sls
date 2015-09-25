(library (system configuration configuration-section)
  (export is? configuration-section? section-information)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ConfigurationSection a))
  (define (configuration-section? a)
    (clr-is System.Configuration.ConfigurationSection a))
  (define-field-port
    section-information
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSection
    SectionInformation
    System.Configuration.SectionInformation))
