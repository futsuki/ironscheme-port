(library (system net mime media-type-names)
  (export is? media-type-names?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Mime.MediaTypeNames a))
  (define (media-type-names? a)
    (clr-is System.Net.Mime.MediaTypeNames a)))
