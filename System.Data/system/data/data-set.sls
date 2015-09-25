(library (system data data-set)
  (export new
          is?
          data-set?
          reject-changes
          create-data-reader
          write-xml-schema
          begin-init
          get-data-set-schema
          get-xml
          get-object-data
          read-xml-schema
          merge
          get-changes
          accept-changes
          write-xml
          has-changes?
          get-xml-schema
          read-xml
          load
          reset
          end-init
          clone
          clear
          copy
          infer-xml-schema
          case-sensitive?-get
          case-sensitive?-set!
          case-sensitive?-update!
          data-set-name-get
          data-set-name-set!
          data-set-name-update!
          default-view-manager
          enforce-constraints?-get
          enforce-constraints?-set!
          enforce-constraints?-update!
          extended-properties
          has-errors?
          locale-get
          locale-set!
          locale-update!
          namespace-get
          namespace-set!
          namespace-update!
          prefix-get
          prefix-set!
          prefix-update!
          relations
          site-get
          site-set!
          site-update!
          tables
          remoting-format-get
          remoting-format-set!
          remoting-format-update!
          is-initialized?
          schema-serialization-mode-get
          schema-serialization-mode-set!
          schema-serialization-mode-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DataSet a ...)))))
  (define (is? a) (clr-is System.Data.DataSet a))
  (define (data-set? a) (clr-is System.Data.DataSet a))
  (define-method-port
    reject-changes
    System.Data.DataSet
    RejectChanges
    (System.Void))
  (define-method-port
    create-data-reader
    System.Data.DataSet
    CreateDataReader
    (System.Data.DataTableReader)
    (System.Data.DataTableReader System.Data.DataTable[]))
  (define-method-port
    write-xml-schema
    System.Data.DataSet
    WriteXmlSchema
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter)
    (System.Void System.String)
    (System.Void System.IO.Stream))
  (define-method-port
    begin-init
    System.Data.DataSet
    BeginInit
    (System.Void))
  (define-method-port
    get-data-set-schema
    System.Data.DataSet
    GetDataSetSchema
    (static:
      System.Xml.Schema.XmlSchemaComplexType
      System.Xml.Schema.XmlSchemaSet))
  (define-method-port
    get-xml
    System.Data.DataSet
    GetXml
    (System.String))
  (define-method-port
    get-object-data
    System.Data.DataSet
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    read-xml-schema
    System.Data.DataSet
    ReadXmlSchema
    (System.Void System.Xml.XmlReader)
    (System.Void System.IO.TextReader)
    (System.Void System.String)
    (System.Void System.IO.Stream))
  (define-method-port
    merge
    System.Data.DataSet
    Merge
    (System.Void
      System.Data.DataTable
      System.Boolean
      System.Data.MissingSchemaAction)
    (System.Void
      System.Data.DataSet
      System.Boolean
      System.Data.MissingSchemaAction)
    (System.Void
      System.Data.DataRow[]
      System.Boolean
      System.Data.MissingSchemaAction)
    (System.Void System.Data.DataSet System.Boolean)
    (System.Void System.Data.DataTable)
    (System.Void System.Data.DataSet)
    (System.Void System.Data.DataRow[]))
  (define-method-port
    get-changes
    System.Data.DataSet
    GetChanges
    (System.Data.DataSet System.Data.DataRowState)
    (System.Data.DataSet))
  (define-method-port
    accept-changes
    System.Data.DataSet
    AcceptChanges
    (System.Void))
  (define-method-port
    write-xml
    System.Data.DataSet
    WriteXml
    (System.Void System.Xml.XmlWriter System.Data.XmlWriteMode)
    (System.Void System.IO.TextWriter System.Data.XmlWriteMode)
    (System.Void System.IO.Stream System.Data.XmlWriteMode)
    (System.Void System.String System.Data.XmlWriteMode)
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter)
    (System.Void System.String)
    (System.Void System.IO.Stream))
  (define-method-port
    has-changes?
    System.Data.DataSet
    HasChanges
    (System.Boolean System.Data.DataRowState)
    (System.Boolean))
  (define-method-port
    get-xml-schema
    System.Data.DataSet
    GetXmlSchema
    (System.String))
  (define-method-port
    read-xml
    System.Data.DataSet
    ReadXml
    (System.Data.XmlReadMode
      System.Xml.XmlReader
      System.Data.XmlReadMode)
    (System.Data.XmlReadMode
      System.IO.TextReader
      System.Data.XmlReadMode)
    (System.Data.XmlReadMode System.String System.Data.XmlReadMode)
    (System.Data.XmlReadMode System.IO.Stream System.Data.XmlReadMode)
    (System.Data.XmlReadMode System.Xml.XmlReader)
    (System.Data.XmlReadMode System.IO.TextReader)
    (System.Data.XmlReadMode System.String)
    (System.Data.XmlReadMode System.IO.Stream))
  (define-method-port
    load
    System.Data.DataSet
    Load
    (System.Void
      System.Data.IDataReader
      System.Data.LoadOption
      System.Data.FillErrorEventHandler
      System.Data.DataTable[])
    (System.Void
      System.Data.IDataReader
      System.Data.LoadOption
      System.String[])
    (System.Void
      System.Data.IDataReader
      System.Data.LoadOption
      System.Data.DataTable[]))
  (define-method-port reset System.Data.DataSet Reset (System.Void))
  (define-method-port
    end-init
    System.Data.DataSet
    EndInit
    (System.Void))
  (define-method-port
    clone
    System.Data.DataSet
    Clone
    (System.Data.DataSet))
  (define-method-port clear System.Data.DataSet Clear (System.Void))
  (define-method-port
    copy
    System.Data.DataSet
    Copy
    (System.Data.DataSet))
  (define-method-port
    infer-xml-schema
    System.Data.DataSet
    InferXmlSchema
    (System.Void System.String System.String[])
    (System.Void System.IO.TextReader System.String[])
    (System.Void System.IO.Stream System.String[])
    (System.Void System.Xml.XmlReader System.String[]))
  (define-field-port
    case-sensitive?-get
    case-sensitive?-set!
    case-sensitive?-update!
    (property:)
    System.Data.DataSet
    CaseSensitive
    System.Boolean)
  (define-field-port
    data-set-name-get
    data-set-name-set!
    data-set-name-update!
    (property:)
    System.Data.DataSet
    DataSetName
    System.String)
  (define-field-port
    default-view-manager
    #f
    #f
    (property:)
    System.Data.DataSet
    DefaultViewManager
    System.Data.DataViewManager)
  (define-field-port
    enforce-constraints?-get
    enforce-constraints?-set!
    enforce-constraints?-update!
    (property:)
    System.Data.DataSet
    EnforceConstraints
    System.Boolean)
  (define-field-port
    extended-properties
    #f
    #f
    (property:)
    System.Data.DataSet
    ExtendedProperties
    System.Data.PropertyCollection)
  (define-field-port
    has-errors?
    #f
    #f
    (property:)
    System.Data.DataSet
    HasErrors
    System.Boolean)
  (define-field-port
    locale-get
    locale-set!
    locale-update!
    (property:)
    System.Data.DataSet
    Locale
    System.Globalization.CultureInfo)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Data.DataSet
    Namespace
    System.String)
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    System.Data.DataSet
    Prefix
    System.String)
  (define-field-port
    relations
    #f
    #f
    (property:)
    System.Data.DataSet
    Relations
    System.Data.DataRelationCollection)
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.Data.DataSet
    Site
    System.ComponentModel.ISite)
  (define-field-port
    tables
    #f
    #f
    (property:)
    System.Data.DataSet
    Tables
    System.Data.DataTableCollection)
  (define-field-port
    remoting-format-get
    remoting-format-set!
    remoting-format-update!
    (property:)
    System.Data.DataSet
    RemotingFormat
    System.Data.SerializationFormat)
  (define-field-port
    is-initialized?
    #f
    #f
    (property:)
    System.Data.DataSet
    IsInitialized
    System.Boolean)
  (define-field-port
    schema-serialization-mode-get
    schema-serialization-mode-set!
    schema-serialization-mode-update!
    (property:)
    System.Data.DataSet
    SchemaSerializationMode
    System.Data.SchemaSerializationMode))
