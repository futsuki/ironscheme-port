(library (system diagnostics debugger-visualizer-attribute)
  (export new
          is?
          debugger-visualizer-attribute?
          description-get
          description-set!
          description-update!
          target-get
          target-set!
          target-update!
          target-type-name-get
          target-type-name-set!
          target-type-name-update!
          visualizer-object-source-type-name
          visualizer-type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerVisualizerAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerVisualizerAttribute a))
  (define (debugger-visualizer-attribute? a)
    (clr-is System.Diagnostics.DebuggerVisualizerAttribute a))
  (define-field-port
    description-get
    description-set!
    description-update!
    (property:)
    System.Diagnostics.DebuggerVisualizerAttribute
    Description
    System.String)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    System.Diagnostics.DebuggerVisualizerAttribute
    Target
    System.Type)
  (define-field-port
    target-type-name-get
    target-type-name-set!
    target-type-name-update!
    (property:)
    System.Diagnostics.DebuggerVisualizerAttribute
    TargetTypeName
    System.String)
  (define-field-port
    visualizer-object-source-type-name
    #f
    #f
    (property:)
    System.Diagnostics.DebuggerVisualizerAttribute
    VisualizerObjectSourceTypeName
    System.String)
  (define-field-port
    visualizer-type-name
    #f
    #f
    (property:)
    System.Diagnostics.DebuggerVisualizerAttribute
    VisualizerTypeName
    System.String))
