(library (unity-engine text-generator)
  (export new
          is?
          text-generator?
          get-vertices
          get-vertices-array
          get-preferred-width
          get-characters
          get-characters-array
          get-preferred-height
          get-lines
          invalidate
          populate?
          get-lines-array
          rect-extents
          vertex-count
          character-count
          character-count-visible
          line-count
          font-size-used-for-best-fit
          verts
          characters
          lines)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.TextGenerator a ...)))))
  (define (is? a) (clr-is UnityEngine.TextGenerator a))
  (define (text-generator? a) (clr-is UnityEngine.TextGenerator a))
  (define-method-port
    get-vertices
    UnityEngine.TextGenerator
    GetVertices)
  (define-method-port
    get-vertices-array
    UnityEngine.TextGenerator
    GetVerticesArray
    (UnityEngine.UIVertex[]))
  (define-method-port
    get-preferred-width
    UnityEngine.TextGenerator
    GetPreferredWidth
    (System.Single System.String UnityEngine.TextGenerationSettings))
  (define-method-port
    get-characters
    UnityEngine.TextGenerator
    GetCharacters)
  (define-method-port
    get-characters-array
    UnityEngine.TextGenerator
    GetCharactersArray
    (UnityEngine.UICharInfo[]))
  (define-method-port
    get-preferred-height
    UnityEngine.TextGenerator
    GetPreferredHeight
    (System.Single System.String UnityEngine.TextGenerationSettings))
  (define-method-port get-lines UnityEngine.TextGenerator GetLines)
  (define-method-port
    invalidate
    UnityEngine.TextGenerator
    Invalidate
    (System.Void))
  (define-method-port
    populate?
    UnityEngine.TextGenerator
    Populate
    (System.Boolean System.String UnityEngine.TextGenerationSettings))
  (define-method-port
    get-lines-array
    UnityEngine.TextGenerator
    GetLinesArray
    (UnityEngine.UILineInfo[]))
  (define-field-port
    rect-extents
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    rectExtents
    UnityEngine.Rect)
  (define-field-port
    vertex-count
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    vertexCount
    System.Int32)
  (define-field-port
    character-count
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    characterCount
    System.Int32)
  (define-field-port
    character-count-visible
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    characterCountVisible
    System.Int32)
  (define-field-port
    line-count
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    lineCount
    System.Int32)
  (define-field-port
    font-size-used-for-best-fit
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    fontSizeUsedForBestFit
    System.Int32)
  (define-field-port
    verts
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    verts
    "System.Collections.Generic.IList`1[[UnityEngine.UIVertex, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    characters
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    characters
    "System.Collections.Generic.IList`1[[UnityEngine.UICharInfo, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]")
  (define-field-port
    lines
    #f
    #f
    (property:)
    UnityEngine.TextGenerator
    lines
    "System.Collections.Generic.IList`1[[UnityEngine.UILineInfo, UnityEngine, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null]]"))
