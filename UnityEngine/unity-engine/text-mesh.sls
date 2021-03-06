(library (unity-engine text-mesh)
  (export new
          is?
          text-mesh?
          text-get
          text-set!
          text-update!
          font-get
          font-set!
          font-update!
          font-size-get
          font-size-set!
          font-size-update!
          font-style-get
          font-style-set!
          font-style-update!
          offset-z-get
          offset-z-set!
          offset-z-update!
          alignment-get
          alignment-set!
          alignment-update!
          anchor-get
          anchor-set!
          anchor-update!
          character-size-get
          character-size-set!
          character-size-update!
          line-spacing-get
          line-spacing-set!
          line-spacing-update!
          tab-size-get
          tab-size-set!
          tab-size-update!
          rich-text?-get
          rich-text?-set!
          rich-text?-update!
          color-get
          color-set!
          color-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TextMesh a ...)))))
  (define (is? a) (clr-is UnityEngine.TextMesh a))
  (define (text-mesh? a) (clr-is UnityEngine.TextMesh a))
  (define-field-port
    text-get
    text-set!
    text-update!
    (property:)
    UnityEngine.TextMesh
    text
    System.String)
  (define-field-port
    font-get
    font-set!
    font-update!
    (property:)
    UnityEngine.TextMesh
    font
    UnityEngine.Font)
  (define-field-port
    font-size-get
    font-size-set!
    font-size-update!
    (property:)
    UnityEngine.TextMesh
    fontSize
    System.Int32)
  (define-field-port
    font-style-get
    font-style-set!
    font-style-update!
    (property:)
    UnityEngine.TextMesh
    fontStyle
    UnityEngine.FontStyle)
  (define-field-port
    offset-z-get
    offset-z-set!
    offset-z-update!
    (property:)
    UnityEngine.TextMesh
    offsetZ
    System.Single)
  (define-field-port
    alignment-get
    alignment-set!
    alignment-update!
    (property:)
    UnityEngine.TextMesh
    alignment
    UnityEngine.TextAlignment)
  (define-field-port
    anchor-get
    anchor-set!
    anchor-update!
    (property:)
    UnityEngine.TextMesh
    anchor
    UnityEngine.TextAnchor)
  (define-field-port
    character-size-get
    character-size-set!
    character-size-update!
    (property:)
    UnityEngine.TextMesh
    characterSize
    System.Single)
  (define-field-port
    line-spacing-get
    line-spacing-set!
    line-spacing-update!
    (property:)
    UnityEngine.TextMesh
    lineSpacing
    System.Single)
  (define-field-port
    tab-size-get
    tab-size-set!
    tab-size-update!
    (property:)
    UnityEngine.TextMesh
    tabSize
    System.Single)
  (define-field-port
    rich-text?-get
    rich-text?-set!
    rich-text?-update!
    (property:)
    UnityEngine.TextMesh
    richText
    System.Boolean)
  (define-field-port
    color-get
    color-set!
    color-update!
    (property:)
    UnityEngine.TextMesh
    color
    UnityEngine.Color))
