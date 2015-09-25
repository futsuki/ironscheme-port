(library (system environment)
  (export is?
          environment?
          get-environment-variable
          set-environment-variable
          get-logical-drives
          expand-environment-variables
          get-environment-variables
          exit
          get-command-line-args
          get-folder-path
          fail-fast
          command-line
          current-directory-get
          current-directory-set!
          current-directory-update!
          exit-code-get
          exit-code-set!
          exit-code-update!
          has-shutdown-started?
          embedding-host-name
          socket-security-enabled?
          unity-web-security-enabled?
          machine-name
          new-line
          osversion
          stack-trace
          system-directory
          tick-count
          user-domain-name
          user-interactive?
          user-name
          version
          working-set
          processor-count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Environment a))
  (define (environment? a) (clr-is System.Environment a))
  (define-method-port
    get-environment-variable
    System.Environment
    GetEnvironmentVariable
    (static:
      System.String
      System.String
      System.EnvironmentVariableTarget)
    (static: System.String System.String))
  (define-method-port
    set-environment-variable
    System.Environment
    SetEnvironmentVariable
    (static:
      System.Void
      System.String
      System.String
      System.EnvironmentVariableTarget)
    (static: System.Void System.String System.String))
  (define-method-port
    get-logical-drives
    System.Environment
    GetLogicalDrives
    (static: System.String[]))
  (define-method-port
    expand-environment-variables
    System.Environment
    ExpandEnvironmentVariables
    (static: System.String System.String))
  (define-method-port
    get-environment-variables
    System.Environment
    GetEnvironmentVariables
    (static:
      System.Collections.IDictionary
      System.EnvironmentVariableTarget)
    (static: System.Collections.IDictionary))
  (define-method-port
    exit
    System.Environment
    Exit
    (static: System.Void System.Int32))
  (define-method-port
    get-command-line-args
    System.Environment
    GetCommandLineArgs
    (static: System.String[]))
  (define-method-port
    get-folder-path
    System.Environment
    GetFolderPath
    (static: System.String System.Environment+SpecialFolder))
  (define-method-port
    fail-fast
    System.Environment
    FailFast
    (static: System.Void System.String))
  (define-field-port
    command-line
    #f
    #f
    (static: property:)
    System.Environment
    CommandLine
    System.String)
  (define-field-port
    current-directory-get
    current-directory-set!
    current-directory-update!
    (static: property:)
    System.Environment
    CurrentDirectory
    System.String)
  (define-field-port
    exit-code-get
    exit-code-set!
    exit-code-update!
    (static: property:)
    System.Environment
    ExitCode
    System.Int32)
  (define-field-port
    has-shutdown-started?
    #f
    #f
    (static: property:)
    System.Environment
    HasShutdownStarted
    System.Boolean)
  (define-field-port
    embedding-host-name
    #f
    #f
    (static: property:)
    System.Environment
    EmbeddingHostName
    System.String)
  (define-field-port
    socket-security-enabled?
    #f
    #f
    (static: property:)
    System.Environment
    SocketSecurityEnabled
    System.Boolean)
  (define-field-port
    unity-web-security-enabled?
    #f
    #f
    (static: property:)
    System.Environment
    UnityWebSecurityEnabled
    System.Boolean)
  (define-field-port
    machine-name
    #f
    #f
    (static: property:)
    System.Environment
    MachineName
    System.String)
  (define-field-port
    new-line
    #f
    #f
    (static: property:)
    System.Environment
    NewLine
    System.String)
  (define-field-port
    osversion
    #f
    #f
    (static: property:)
    System.Environment
    OSVersion
    System.OperatingSystem)
  (define-field-port
    stack-trace
    #f
    #f
    (static: property:)
    System.Environment
    StackTrace
    System.String)
  (define-field-port
    system-directory
    #f
    #f
    (static: property:)
    System.Environment
    SystemDirectory
    System.String)
  (define-field-port
    tick-count
    #f
    #f
    (static: property:)
    System.Environment
    TickCount
    System.Int32)
  (define-field-port
    user-domain-name
    #f
    #f
    (static: property:)
    System.Environment
    UserDomainName
    System.String)
  (define-field-port
    user-interactive?
    #f
    #f
    (static: property:)
    System.Environment
    UserInteractive
    System.Boolean)
  (define-field-port
    user-name
    #f
    #f
    (static: property:)
    System.Environment
    UserName
    System.String)
  (define-field-port
    version
    #f
    #f
    (static: property:)
    System.Environment
    Version
    System.Version)
  (define-field-port
    working-set
    #f
    #f
    (static: property:)
    System.Environment
    WorkingSet
    System.Int64)
  (define-field-port
    processor-count
    #f
    #f
    (static: property:)
    System.Environment
    ProcessorCount
    System.Int32))
