(library (system data common index)
  (export is? index?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.Index a))
  (define (index? a) (clr-is System.Data.Common.Index a)))
