(library (mono globalization unicode sort-key-buffer)
  (export new
          is?
          sort-key-buffer?
          get-result-and-reset
          reset
          get-result)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Globalization.Unicode.SortKeyBuffer a ...)))))
  (define (is? a) (clr-is Mono.Globalization.Unicode.SortKeyBuffer a))
  (define (sort-key-buffer? a)
    (clr-is Mono.Globalization.Unicode.SortKeyBuffer a))
  (define-method-port
    get-result-and-reset
    Mono.Globalization.Unicode.SortKeyBuffer
    GetResultAndReset
    (System.Globalization.SortKey))
  (define-method-port
    reset
    Mono.Globalization.Unicode.SortKeyBuffer
    Reset
    (System.Void))
  (define-method-port
    get-result
    Mono.Globalization.Unicode.SortKeyBuffer
    GetResult
    (System.Globalization.SortKey)))
