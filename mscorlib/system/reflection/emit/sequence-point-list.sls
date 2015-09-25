(library (system reflection emit sequence-point-list)
  (export new
          is?
          sequence-point-list?
          get-end-columns
          get-end-lines
          get-offsets
          add-sequence-point
          get-lines
          get-columns
          document
          start-line
          end-line
          start-column
          end-column)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.Emit.SequencePointList a ...)))))
  (define (is? a) (clr-is System.Reflection.Emit.SequencePointList a))
  (define (sequence-point-list? a)
    (clr-is System.Reflection.Emit.SequencePointList a))
  (define-method-port
    get-end-columns
    System.Reflection.Emit.SequencePointList
    GetEndColumns
    (System.Int32[]))
  (define-method-port
    get-end-lines
    System.Reflection.Emit.SequencePointList
    GetEndLines
    (System.Int32[]))
  (define-method-port
    get-offsets
    System.Reflection.Emit.SequencePointList
    GetOffsets
    (System.Int32[]))
  (define-method-port
    add-sequence-point
    System.Reflection.Emit.SequencePointList
    AddSequencePoint
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    get-lines
    System.Reflection.Emit.SequencePointList
    GetLines
    (System.Int32[]))
  (define-method-port
    get-columns
    System.Reflection.Emit.SequencePointList
    GetColumns
    (System.Int32[]))
  (define-field-port
    document
    #f
    #f
    (property:)
    System.Reflection.Emit.SequencePointList
    Document
    System.Diagnostics.SymbolStore.ISymbolDocumentWriter)
  (define-field-port
    start-line
    #f
    #f
    (property:)
    System.Reflection.Emit.SequencePointList
    StartLine
    System.Int32)
  (define-field-port
    end-line
    #f
    #f
    (property:)
    System.Reflection.Emit.SequencePointList
    EndLine
    System.Int32)
  (define-field-port
    start-column
    #f
    #f
    (property:)
    System.Reflection.Emit.SequencePointList
    StartColumn
    System.Int32)
  (define-field-port
    end-column
    #f
    #f
    (property:)
    System.Reflection.Emit.SequencePointList
    EndColumn
    System.Int32))
