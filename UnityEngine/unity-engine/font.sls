(library (unity-engine font)
  (export new
          is?
          font?
          create-dynamic-font-from-osfont
          has-character?
          get-max-verts-for-string
          request-characters-in-texture
          get-osinstalled-font-names
          get-character-info?
          material-get
          material-set!
          material-update!
          font-names-get
          font-names-set!
          font-names-update!
          character-info-get
          character-info-set!
          character-info-update!
          texture-rebuild-callback-get
          texture-rebuild-callback-set!
          texture-rebuild-callback-update!
          dynamic?
          ascent
          line-height
          font-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Font a ...)))))
  (define (is? a) (clr-is UnityEngine.Font a))
  (define (font? a) (clr-is UnityEngine.Font a))
  (define-method-port
    create-dynamic-font-from-osfont
    UnityEngine.Font
    CreateDynamicFontFromOSFont
    (static: UnityEngine.Font System.String[] System.Int32)
    (static: UnityEngine.Font System.String System.Int32))
  (define-method-port
    has-character?
    UnityEngine.Font
    HasCharacter
    (System.Boolean System.Char))
  (define-method-port
    get-max-verts-for-string
    UnityEngine.Font
    GetMaxVertsForString
    (static: System.Int32 System.String))
  (define-method-port
    request-characters-in-texture
    UnityEngine.Font
    RequestCharactersInTexture
    (System.Void System.String)
    (System.Void System.String System.Int32)
    (System.Void System.String System.Int32 UnityEngine.FontStyle))
  (define-method-port
    get-osinstalled-font-names
    UnityEngine.Font
    GetOSInstalledFontNames
    (static: System.String[]))
  (define-method-port
    get-character-info?
    UnityEngine.Font
    GetCharacterInfo
    (System.Boolean System.Char UnityEngine.CharacterInfo&)
    (System.Boolean System.Char UnityEngine.CharacterInfo& System.Int32)
    (System.Boolean
      System.Char
      UnityEngine.CharacterInfo&
      System.Int32
      UnityEngine.FontStyle))
  (define-field-port
    material-get
    material-set!
    material-update!
    (property:)
    UnityEngine.Font
    material
    UnityEngine.Material)
  (define-field-port
    font-names-get
    font-names-set!
    font-names-update!
    (property:)
    UnityEngine.Font
    fontNames
    System.String[])
  (define-field-port
    character-info-get
    character-info-set!
    character-info-update!
    (property:)
    UnityEngine.Font
    characterInfo
    UnityEngine.CharacterInfo[])
  (define-field-port
    texture-rebuild-callback-get
    texture-rebuild-callback-set!
    texture-rebuild-callback-update!
    (property:)
    UnityEngine.Font
    textureRebuildCallback
    UnityEngine.Font+FontTextureRebuildCallback)
  (define-field-port
    dynamic?
    #f
    #f
    (property:)
    UnityEngine.Font
    dynamic
    System.Boolean)
  (define-field-port
    ascent
    #f
    #f
    (property:)
    UnityEngine.Font
    ascent
    System.Int32)
  (define-field-port
    line-height
    #f
    #f
    (property:)
    UnityEngine.Font
    lineHeight
    System.Int32)
  (define-field-port
    font-size
    #f
    #f
    (property:)
    UnityEngine.Font
    fontSize
    System.Int32))
