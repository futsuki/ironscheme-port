(library (system component-model background-worker)
  (export new
          is?
          background-worker?
          report-progress
          cancel-async
          run-worker-async
          cancellation-pending?
          is-busy?
          worker-reports-progress?-get
          worker-reports-progress?-set!
          worker-reports-progress?-update!
          worker-supports-cancellation?-get
          worker-supports-cancellation?-set!
          worker-supports-cancellation?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.BackgroundWorker a ...)))))
  (define (is? a) (clr-is System.ComponentModel.BackgroundWorker a))
  (define (background-worker? a)
    (clr-is System.ComponentModel.BackgroundWorker a))
  (define-method-port
    report-progress
    System.ComponentModel.BackgroundWorker
    ReportProgress
    (System.Void System.Int32 System.Object)
    (System.Void System.Int32))
  (define-method-port
    cancel-async
    System.ComponentModel.BackgroundWorker
    CancelAsync
    (System.Void))
  (define-method-port
    run-worker-async
    System.ComponentModel.BackgroundWorker
    RunWorkerAsync
    (System.Void System.Object)
    (System.Void))
  (define-field-port
    cancellation-pending?
    #f
    #f
    (property:)
    System.ComponentModel.BackgroundWorker
    CancellationPending
    System.Boolean)
  (define-field-port
    is-busy?
    #f
    #f
    (property:)
    System.ComponentModel.BackgroundWorker
    IsBusy
    System.Boolean)
  (define-field-port
    worker-reports-progress?-get
    worker-reports-progress?-set!
    worker-reports-progress?-update!
    (property:)
    System.ComponentModel.BackgroundWorker
    WorkerReportsProgress
    System.Boolean)
  (define-field-port
    worker-supports-cancellation?-get
    worker-supports-cancellation?-set!
    worker-supports-cancellation?-update!
    (property:)
    System.ComponentModel.BackgroundWorker
    WorkerSupportsCancellation
    System.Boolean))
