(library (system net configuration handlers-util)
  (export is? handlers-util?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Configuration.HandlersUtil a))
  (define (handlers-util? a)
    (clr-is System.Net.Configuration.HandlersUtil a)))
