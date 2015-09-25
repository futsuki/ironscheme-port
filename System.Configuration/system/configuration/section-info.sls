(library (system configuration section-info)
  (export new
          is?
          section-info?
          has-data-content?
          write-data
          read-config
          read-data
          has-config-content?
          write-config
          create-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SectionInfo a ...)))))
  (define (is? a) (clr-is System.Configuration.SectionInfo a))
  (define (section-info? a) (clr-is System.Configuration.SectionInfo a))
  (define-method-port
    has-data-content?
    System.Configuration.SectionInfo
    HasDataContent
    (System.Boolean System.Configuration.Configuration))
  (define-method-port
    write-data
    System.Configuration.SectionInfo
    WriteData
    (System.Void
      System.Configuration.Configuration
      System.Xml.XmlWriter
      System.Configuration.ConfigurationSaveMode))
  (define-method-port
    read-config
    System.Configuration.SectionInfo
    ReadConfig
    (System.Void
      System.Configuration.Configuration
      System.String
      System.Xml.XmlReader))
  (define-method-port
    read-data
    System.Configuration.SectionInfo
    ReadData
    (System.Void
      System.Configuration.Configuration
      System.Xml.XmlReader
      System.Boolean))
  (define-method-port
    has-config-content?
    System.Configuration.SectionInfo
    HasConfigContent
    (System.Boolean System.Configuration.Configuration))
  (define-method-port
    write-config
    System.Configuration.SectionInfo
    WriteConfig
    (System.Void
      System.Configuration.Configuration
      System.Xml.XmlWriter
      System.Configuration.ConfigurationSaveMode))
  (define-method-port
    create-instance
    System.Configuration.SectionInfo
    CreateInstance
    (System.Object)))
