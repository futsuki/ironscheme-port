(library (system data related-data-view)
  (export is?
          related-data-view?
          depends-on?
          get-hash-code
          eval-boolean?
          eval
          equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.RelatedDataView a))
  (define (related-data-view? a) (clr-is System.Data.RelatedDataView a))
  (define-method-port
    depends-on?
    System.Data.RelatedDataView
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    get-hash-code
    System.Data.RelatedDataView
    GetHashCode
    (System.Int32))
  (define-method-port
    eval-boolean?
    System.Data.RelatedDataView
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    System.Data.RelatedDataView
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    System.Data.RelatedDataView
    Equals
    (System.Boolean System.Object)))
