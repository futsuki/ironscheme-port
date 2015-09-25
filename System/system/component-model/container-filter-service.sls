(library (system component-model container-filter-service)
  (export is? container-filter-service? filter-components)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.ComponentModel.ContainerFilterService a))
  (define (container-filter-service? a)
    (clr-is System.ComponentModel.ContainerFilterService a))
  (define-method-port
    filter-components
    System.ComponentModel.ContainerFilterService
    FilterComponents
    (System.ComponentModel.ComponentCollection
      System.ComponentModel.ComponentCollection)))
