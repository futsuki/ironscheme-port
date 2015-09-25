(library (system io drive-info)
  (export new
          is?
          drive-info?
          get-drives
          to-string
          available-free-space
          total-free-space
          total-size
          volume-label-get
          volume-label-set!
          volume-label-update!
          drive-format
          drive-type
          name
          root-directory
          is-ready?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.DriveInfo a ...)))))
  (define (is? a) (clr-is System.IO.DriveInfo a))
  (define (drive-info? a) (clr-is System.IO.DriveInfo a))
  (define-method-port
    get-drives
    System.IO.DriveInfo
    GetDrives
    (static: System.IO.DriveInfo[]))
  (define-method-port
    to-string
    System.IO.DriveInfo
    ToString
    (System.String))
  (define-field-port
    available-free-space
    #f
    #f
    (property:)
    System.IO.DriveInfo
    AvailableFreeSpace
    System.Int64)
  (define-field-port
    total-free-space
    #f
    #f
    (property:)
    System.IO.DriveInfo
    TotalFreeSpace
    System.Int64)
  (define-field-port
    total-size
    #f
    #f
    (property:)
    System.IO.DriveInfo
    TotalSize
    System.Int64)
  (define-field-port
    volume-label-get
    volume-label-set!
    volume-label-update!
    (property:)
    System.IO.DriveInfo
    VolumeLabel
    System.String)
  (define-field-port
    drive-format
    #f
    #f
    (property:)
    System.IO.DriveInfo
    DriveFormat
    System.String)
  (define-field-port
    drive-type
    #f
    #f
    (property:)
    System.IO.DriveInfo
    DriveType
    System.IO.DriveType)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.IO.DriveInfo
    Name
    System.String)
  (define-field-port
    root-directory
    #f
    #f
    (property:)
    System.IO.DriveInfo
    RootDirectory
    System.IO.DirectoryInfo)
  (define-field-port
    is-ready?
    #f
    #f
    (property:)
    System.IO.DriveInfo
    IsReady
    System.Boolean))
