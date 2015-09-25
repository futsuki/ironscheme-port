(library (system data class-generator-options)
  (export is?
          class-generator-options?
          make-classes-inside-data-set?-get
          make-classes-inside-data-set?-set!
          make-classes-inside-data-set?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.ClassGeneratorOptions a))
  (define (class-generator-options? a)
    (clr-is System.Data.ClassGeneratorOptions a))
  (define-field-port
    make-classes-inside-data-set?-get
    make-classes-inside-data-set?-set!
    make-classes-inside-data-set?-update!
    ()
    System.Data.ClassGeneratorOptions
    MakeClassesInsideDataSet
    System.Boolean))
