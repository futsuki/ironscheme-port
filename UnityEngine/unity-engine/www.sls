(library (unity-engine www)
  (export new
          is?
          www?
          get-audio-clip-compressed
          dispose
          load-image-into-texture
          load-unity-web
          init-www
          un-escape-url
          get-texture-from-url
          escape-url
          get-audio-clip
          get-url
          load-from-cache-or-download
          response-headers
          text
          data
          bytes
          size
          error
          texture
          texture-non-readable
          audio-clip
          movie
          is-done?
          progress
          upload-progress
          bytes-downloaded
          ogg-vorbis
          url
          asset-bundle
          thread-priority-get
          thread-priority-set!
          thread-priority-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new UnityEngine.WWW a ...)))))
  (define (is? a) (clr-is UnityEngine.WWW a))
  (define (www? a) (clr-is UnityEngine.WWW a))
  (define-method-port
    get-audio-clip-compressed
    UnityEngine.WWW
    GetAudioClipCompressed
    (UnityEngine.AudioClip System.Boolean UnityEngine.AudioType)
    (UnityEngine.AudioClip System.Boolean)
    (UnityEngine.AudioClip))
  (define-method-port dispose UnityEngine.WWW Dispose (System.Void))
  (define-method-port
    load-image-into-texture
    UnityEngine.WWW
    LoadImageIntoTexture
    (System.Void UnityEngine.Texture2D))
  (define-method-port
    load-unity-web
    UnityEngine.WWW
    LoadUnityWeb
    (System.Void))
  (define-method-port
    init-www
    UnityEngine.WWW
    InitWWW
    (System.Void System.String System.Byte[] System.String[]))
  (define-method-port
    un-escape-url
    UnityEngine.WWW
    UnEscapeURL
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    get-texture-from-url
    UnityEngine.WWW
    GetTextureFromURL
    (static: UnityEngine.Texture2D System.String))
  (define-method-port
    escape-url
    UnityEngine.WWW
    EscapeURL
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    get-audio-clip
    UnityEngine.WWW
    GetAudioClip
    (UnityEngine.AudioClip
      System.Boolean
      System.Boolean
      UnityEngine.AudioType)
    (UnityEngine.AudioClip System.Boolean System.Boolean)
    (UnityEngine.AudioClip System.Boolean))
  (define-method-port
    get-url
    UnityEngine.WWW
    GetURL
    (static: System.String System.String))
  (define-method-port
    load-from-cache-or-download
    UnityEngine.WWW
    LoadFromCacheOrDownload
    (static:
      UnityEngine.WWW
      System.String
      UnityEngine.Hash128
      System.UInt32)
    (static: UnityEngine.WWW System.String UnityEngine.Hash128)
    (static: UnityEngine.WWW System.String System.Int32 System.UInt32)
    (static: UnityEngine.WWW System.String System.Int32))
  (define-field-port
    response-headers
    #f
    #f
    (property:)
    UnityEngine.WWW
    responseHeaders
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    text
    #f
    #f
    (property:)
    UnityEngine.WWW
    text
    System.String)
  (define-field-port
    data
    #f
    #f
    (property:)
    UnityEngine.WWW
    data
    System.String)
  (define-field-port
    bytes
    #f
    #f
    (property:)
    UnityEngine.WWW
    bytes
    System.Byte[])
  (define-field-port
    size
    #f
    #f
    (property:)
    UnityEngine.WWW
    size
    System.Int32)
  (define-field-port
    error
    #f
    #f
    (property:)
    UnityEngine.WWW
    error
    System.String)
  (define-field-port
    texture
    #f
    #f
    (property:)
    UnityEngine.WWW
    texture
    UnityEngine.Texture2D)
  (define-field-port
    texture-non-readable
    #f
    #f
    (property:)
    UnityEngine.WWW
    textureNonReadable
    UnityEngine.Texture2D)
  (define-field-port
    audio-clip
    #f
    #f
    (property:)
    UnityEngine.WWW
    audioClip
    UnityEngine.AudioClip)
  (define-field-port
    movie
    #f
    #f
    (property:)
    UnityEngine.WWW
    movie
    UnityEngine.MovieTexture)
  (define-field-port
    is-done?
    #f
    #f
    (property:)
    UnityEngine.WWW
    isDone
    System.Boolean)
  (define-field-port
    progress
    #f
    #f
    (property:)
    UnityEngine.WWW
    progress
    System.Single)
  (define-field-port
    upload-progress
    #f
    #f
    (property:)
    UnityEngine.WWW
    uploadProgress
    System.Single)
  (define-field-port
    bytes-downloaded
    #f
    #f
    (property:)
    UnityEngine.WWW
    bytesDownloaded
    System.Int32)
  (define-field-port
    ogg-vorbis
    #f
    #f
    (property:)
    UnityEngine.WWW
    oggVorbis
    UnityEngine.AudioClip)
  (define-field-port
    url
    #f
    #f
    (property:)
    UnityEngine.WWW
    url
    System.String)
  (define-field-port
    asset-bundle
    #f
    #f
    (property:)
    UnityEngine.WWW
    assetBundle
    UnityEngine.AssetBundle)
  (define-field-port
    thread-priority-get
    thread-priority-set!
    thread-priority-update!
    (property:)
    UnityEngine.WWW
    threadPriority
    UnityEngine.ThreadPriority))
