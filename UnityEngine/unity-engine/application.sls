(library (unity-engine application)
  (export new
          is?
          application?
          external-call
          load-level
          external-eval
          dont-destroy-on-load
          quit
          load-level-additive-async
          has-pro-license?
          can-streamed-level-be-loaded?
          commit-suicide
          load-level-async
          cancel-quit
          register-log-callback
          capture-screenshot
          get-stream-progress-for-level
          has-user-authorization?
          register-log-callback-threaded
          open-url
          load-level-additive
          request-user-authorization
          loaded-level
          loaded-level-name
          is-loading-level?
          level-count
          streamed-bytes
          is-playing?
          is-editor?
          is-web-player?
          platform
          is-mobile-platform?
          is-console-platform?
          run-in-background?-get
          run-in-background?-set!
          run-in-background?-update!
          is-player?
          data-path
          streaming-assets-path
          persistent-data-path
          temporary-cache-path
          src-value
          absolute-url
          absolute-url
          unity-version
          version
          bundle-identifier
          install-mode
          sandbox-type
          product-name
          company-name
          cloud-project-id
          web-security-enabled?
          web-security-host-url
          target-frame-rate-get
          target-frame-rate-set!
          target-frame-rate-update!
          system-language
          background-loading-priority-get
          background-loading-priority-set!
          background-loading-priority-update!
          internet-reachability
          genuine?
          genuine-check-available?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Application a ...)))))
  (define (is? a) (clr-is UnityEngine.Application a))
  (define (application? a) (clr-is UnityEngine.Application a))
  (define-method-port
    external-call
    UnityEngine.Application
    ExternalCall
    (static: System.Void System.String System.Object[]))
  (define-method-port
    load-level
    UnityEngine.Application
    LoadLevel
    (static: System.Void System.String)
    (static: System.Void System.Int32))
  (define-method-port
    external-eval
    UnityEngine.Application
    ExternalEval
    (static: System.Void System.String))
  (define-method-port
    dont-destroy-on-load
    UnityEngine.Application
    DontDestroyOnLoad
    (static: System.Void UnityEngine.Object))
  (define-method-port
    quit
    UnityEngine.Application
    Quit
    (static: System.Void))
  (define-method-port
    load-level-additive-async
    UnityEngine.Application
    LoadLevelAdditiveAsync
    (static: UnityEngine.AsyncOperation System.String)
    (static: UnityEngine.AsyncOperation System.Int32))
  (define-method-port
    has-pro-license?
    UnityEngine.Application
    HasProLicense
    (static: System.Boolean))
  (define-method-port
    can-streamed-level-be-loaded?
    UnityEngine.Application
    CanStreamedLevelBeLoaded
    (static: System.Boolean System.String)
    (static: System.Boolean System.Int32))
  (define-method-port
    commit-suicide
    UnityEngine.Application
    CommitSuicide
    (static: System.Void System.Int32))
  (define-method-port
    load-level-async
    UnityEngine.Application
    LoadLevelAsync
    (static: UnityEngine.AsyncOperation System.String)
    (static: UnityEngine.AsyncOperation System.Int32))
  (define-method-port
    cancel-quit
    UnityEngine.Application
    CancelQuit
    (static: System.Void))
  (define-method-port
    register-log-callback
    UnityEngine.Application
    RegisterLogCallback
    (static: System.Void UnityEngine.Application+LogCallback))
  (define-method-port
    capture-screenshot
    UnityEngine.Application
    CaptureScreenshot
    (static: System.Void System.String)
    (static: System.Void System.String System.Int32))
  (define-method-port
    get-stream-progress-for-level
    UnityEngine.Application
    GetStreamProgressForLevel
    (static: System.Single System.String)
    (static: System.Single System.Int32))
  (define-method-port
    has-user-authorization?
    UnityEngine.Application
    HasUserAuthorization
    (static: System.Boolean UnityEngine.UserAuthorization))
  (define-method-port
    register-log-callback-threaded
    UnityEngine.Application
    RegisterLogCallbackThreaded
    (static: System.Void UnityEngine.Application+LogCallback))
  (define-method-port
    open-url
    UnityEngine.Application
    OpenURL
    (static: System.Void System.String))
  (define-method-port
    load-level-additive
    UnityEngine.Application
    LoadLevelAdditive
    (static: System.Void System.String)
    (static: System.Void System.Int32))
  (define-method-port
    request-user-authorization
    UnityEngine.Application
    RequestUserAuthorization
    (static: UnityEngine.AsyncOperation UnityEngine.UserAuthorization))
  (define-field-port
    loaded-level
    #f
    #f
    (static: property:)
    UnityEngine.Application
    loadedLevel
    System.Int32)
  (define-field-port
    loaded-level-name
    #f
    #f
    (static: property:)
    UnityEngine.Application
    loadedLevelName
    System.String)
  (define-field-port
    is-loading-level?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isLoadingLevel
    System.Boolean)
  (define-field-port
    level-count
    #f
    #f
    (static: property:)
    UnityEngine.Application
    levelCount
    System.Int32)
  (define-field-port
    streamed-bytes
    #f
    #f
    (static: property:)
    UnityEngine.Application
    streamedBytes
    System.Int32)
  (define-field-port
    is-playing?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isPlaying
    System.Boolean)
  (define-field-port
    is-editor?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isEditor
    System.Boolean)
  (define-field-port
    is-web-player?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isWebPlayer
    System.Boolean)
  (define-field-port
    platform
    #f
    #f
    (static: property:)
    UnityEngine.Application
    platform
    UnityEngine.RuntimePlatform)
  (define-field-port
    is-mobile-platform?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isMobilePlatform
    System.Boolean)
  (define-field-port
    is-console-platform?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isConsolePlatform
    System.Boolean)
  (define-field-port
    run-in-background?-get
    run-in-background?-set!
    run-in-background?-update!
    (static: property:)
    UnityEngine.Application
    runInBackground
    System.Boolean)
  (define-field-port
    is-player?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    isPlayer
    System.Boolean)
  (define-field-port
    data-path
    #f
    #f
    (static: property:)
    UnityEngine.Application
    dataPath
    System.String)
  (define-field-port
    streaming-assets-path
    #f
    #f
    (static: property:)
    UnityEngine.Application
    streamingAssetsPath
    System.String)
  (define-field-port
    persistent-data-path
    #f
    #f
    (static: property:)
    UnityEngine.Application
    persistentDataPath
    System.String)
  (define-field-port
    temporary-cache-path
    #f
    #f
    (static: property:)
    UnityEngine.Application
    temporaryCachePath
    System.String)
  (define-field-port
    src-value
    #f
    #f
    (static: property:)
    UnityEngine.Application
    srcValue
    System.String)
  (define-field-port
    absolute-url
    #f
    #f
    (static: property:)
    UnityEngine.Application
    absoluteURL
    System.String)
  (define-field-port
    absolute-url
    #f
    #f
    (static: property:)
    UnityEngine.Application
    absoluteUrl
    System.String)
  (define-field-port
    unity-version
    #f
    #f
    (static: property:)
    UnityEngine.Application
    unityVersion
    System.String)
  (define-field-port
    version
    #f
    #f
    (static: property:)
    UnityEngine.Application
    version
    System.String)
  (define-field-port
    bundle-identifier
    #f
    #f
    (static: property:)
    UnityEngine.Application
    bundleIdentifier
    System.String)
  (define-field-port
    install-mode
    #f
    #f
    (static: property:)
    UnityEngine.Application
    installMode
    UnityEngine.ApplicationInstallMode)
  (define-field-port
    sandbox-type
    #f
    #f
    (static: property:)
    UnityEngine.Application
    sandboxType
    UnityEngine.ApplicationSandboxType)
  (define-field-port
    product-name
    #f
    #f
    (static: property:)
    UnityEngine.Application
    productName
    System.String)
  (define-field-port
    company-name
    #f
    #f
    (static: property:)
    UnityEngine.Application
    companyName
    System.String)
  (define-field-port
    cloud-project-id
    #f
    #f
    (static: property:)
    UnityEngine.Application
    cloudProjectId
    System.String)
  (define-field-port
    web-security-enabled?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    webSecurityEnabled
    System.Boolean)
  (define-field-port
    web-security-host-url
    #f
    #f
    (static: property:)
    UnityEngine.Application
    webSecurityHostUrl
    System.String)
  (define-field-port
    target-frame-rate-get
    target-frame-rate-set!
    target-frame-rate-update!
    (static: property:)
    UnityEngine.Application
    targetFrameRate
    System.Int32)
  (define-field-port
    system-language
    #f
    #f
    (static: property:)
    UnityEngine.Application
    systemLanguage
    UnityEngine.SystemLanguage)
  (define-field-port
    background-loading-priority-get
    background-loading-priority-set!
    background-loading-priority-update!
    (static: property:)
    UnityEngine.Application
    backgroundLoadingPriority
    UnityEngine.ThreadPriority)
  (define-field-port
    internet-reachability
    #f
    #f
    (static: property:)
    UnityEngine.Application
    internetReachability
    UnityEngine.NetworkReachability)
  (define-field-port
    genuine?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    genuine
    System.Boolean)
  (define-field-port
    genuine-check-available?
    #f
    #f
    (static: property:)
    UnityEngine.Application
    genuineCheckAvailable
    System.Boolean))
