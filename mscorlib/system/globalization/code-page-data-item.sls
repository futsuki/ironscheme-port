(library (system globalization code-page-data-item)
  (export is? code-page-data-item?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Globalization.CodePageDataItem a))
  (define (code-page-data-item? a)
    (clr-is System.Globalization.CodePageDataItem a)))
