(library (system configuration section-group-info)
  (export new
          is?
          section-group-info?
          has-data-content?
          write-data
          write-content
          write-root-data
          read-config
          read-data
          has-config-content?
          write-config
          add-child
          remove-child
          read-root-data
          get-child-group
          get-child-section
          clear
          has-child?
          sections
          groups)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SectionGroupInfo a ...)))))
  (define (is? a) (clr-is System.Configuration.SectionGroupInfo a))
  (define (section-group-info? a)
    (clr-is System.Configuration.SectionGroupInfo a))
  (define-method-port
    has-data-content?
    System.Configuration.SectionGroupInfo
    HasDataContent
    (System.Boolean System.Configuration.Configuration))
  (define-method-port
    write-data
    System.Configuration.SectionGroupInfo
    WriteData
    (System.Void
      System.Configuration.Configuration
      System.Xml.XmlWriter
      System.Configuration.ConfigurationSaveMode))
  (define-method-port
    write-content
    System.Configuration.SectionGroupInfo
    WriteContent
    (System.Void
      System.Xml.XmlWriter
      System.Configuration.Configuration
      System.Configuration.ConfigurationSaveMode
      System.Boolean))
  (define-method-port
    write-root-data
    System.Configuration.SectionGroupInfo
    WriteRootData
    (System.Void
      System.Xml.XmlWriter
      System.Configuration.Configuration
      System.Configuration.ConfigurationSaveMode))
  (define-method-port
    read-config
    System.Configuration.SectionGroupInfo
    ReadConfig
    (System.Void
      System.Configuration.Configuration
      System.String
      System.Xml.XmlReader))
  (define-method-port
    read-data
    System.Configuration.SectionGroupInfo
    ReadData
    (System.Void
      System.Configuration.Configuration
      System.Xml.XmlReader
      System.Boolean))
  (define-method-port
    has-config-content?
    System.Configuration.SectionGroupInfo
    HasConfigContent
    (System.Boolean System.Configuration.Configuration))
  (define-method-port
    write-config
    System.Configuration.SectionGroupInfo
    WriteConfig
    (System.Void
      System.Configuration.Configuration
      System.Xml.XmlWriter
      System.Configuration.ConfigurationSaveMode))
  (define-method-port
    add-child
    System.Configuration.SectionGroupInfo
    AddChild
    (System.Void System.Configuration.ConfigInfo))
  (define-method-port
    remove-child
    System.Configuration.SectionGroupInfo
    RemoveChild
    (System.Void System.String))
  (define-method-port
    read-root-data
    System.Configuration.SectionGroupInfo
    ReadRootData
    (System.Void
      System.Xml.XmlReader
      System.Configuration.Configuration
      System.Boolean))
  (define-method-port
    get-child-group
    System.Configuration.SectionGroupInfo
    GetChildGroup
    (System.Configuration.SectionGroupInfo System.String))
  (define-method-port
    get-child-section
    System.Configuration.SectionGroupInfo
    GetChildSection
    (System.Configuration.SectionInfo System.String))
  (define-method-port
    clear
    System.Configuration.SectionGroupInfo
    Clear
    (System.Void))
  (define-method-port
    has-child?
    System.Configuration.SectionGroupInfo
    HasChild
    (System.Boolean System.String))
  (define-field-port
    sections
    #f
    #f
    (property:)
    System.Configuration.SectionGroupInfo
    Sections
    System.Configuration.ConfigInfoCollection)
  (define-field-port
    groups
    #f
    #f
    (property:)
    System.Configuration.SectionGroupInfo
    Groups
    System.Configuration.ConfigInfoCollection))
