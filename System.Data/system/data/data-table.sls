(library (system data data-table)
  (export new
          is?
          data-table?
          reject-changes
          create-data-reader
          get-errors
          begin-init
          select
          get-object-data
          import-row
          read-xml-schema
          new-row
          merge
          get-changes
          accept-changes
          write-xml
          get-data-table-schema
          end-load-data
          load-data-row
          write-xml-schema
          read-xml
          load
          reset
          end-init
          begin-load-data
          clone
          clear
          copy
          to-string
          compute
          read-xml-internal
          case-sensitive?-get
          case-sensitive?-set!
          case-sensitive?-update!
          child-relations
          columns
          constraints
          data-set
          default-view
          display-expression-get
          display-expression-set!
          display-expression-update!
          extended-properties
          has-errors?
          locale-get
          locale-set!
          locale-update!
          minimum-capacity-get
          minimum-capacity-set!
          minimum-capacity-update!
          namespace-get
          namespace-set!
          namespace-update!
          parent-relations
          prefix-get
          prefix-set!
          prefix-update!
          primary-key-get
          primary-key-set!
          primary-key-update!
          rows
          site-get
          site-set!
          site-update!
          table-name-get
          table-name-set!
          table-name-update!
          is-initialized?
          remoting-format-get
          remoting-format-set!
          remoting-format-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DataTable a ...)))))
  (define (is? a) (clr-is System.Data.DataTable a))
  (define (data-table? a) (clr-is System.Data.DataTable a))
  (define-method-port
    reject-changes
    System.Data.DataTable
    RejectChanges
    (System.Void))
  (define-method-port
    create-data-reader
    System.Data.DataTable
    CreateDataReader
    (System.Data.DataTableReader))
  (define-method-port
    get-errors
    System.Data.DataTable
    GetErrors
    (System.Data.DataRow[]))
  (define-method-port
    begin-init
    System.Data.DataTable
    BeginInit
    (System.Void))
  (define-method-port
    select
    System.Data.DataTable
    Select
    (System.Data.DataRow[]
      System.String
      System.String
      System.Data.DataViewRowState)
    (System.Data.DataRow[] System.String System.String)
    (System.Data.DataRow[] System.String)
    (System.Data.DataRow[]))
  (define-method-port
    get-object-data
    System.Data.DataTable
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    import-row
    System.Data.DataTable
    ImportRow
    (System.Void System.Data.DataRow))
  (define-method-port
    read-xml-schema
    System.Data.DataTable
    ReadXmlSchema
    (System.Void System.Xml.XmlReader)
    (System.Void System.String)
    (System.Void System.IO.TextReader)
    (System.Void System.IO.Stream))
  (define-method-port
    new-row
    System.Data.DataTable
    NewRow
    (System.Data.DataRow))
  (define-method-port
    merge
    System.Data.DataTable
    Merge
    (System.Void
      System.Data.DataTable
      System.Boolean
      System.Data.MissingSchemaAction)
    (System.Void System.Data.DataTable System.Boolean)
    (System.Void System.Data.DataTable))
  (define-method-port
    get-changes
    System.Data.DataTable
    GetChanges
    (System.Data.DataTable System.Data.DataRowState)
    (System.Data.DataTable))
  (define-method-port
    accept-changes
    System.Data.DataTable
    AcceptChanges
    (System.Void))
  (define-method-port
    write-xml
    System.Data.DataTable
    WriteXml
    (System.Void
      System.Xml.XmlWriter
      System.Data.XmlWriteMode
      System.Boolean)
    (System.Void
      System.IO.TextWriter
      System.Data.XmlWriteMode
      System.Boolean)
    (System.Void System.String System.Data.XmlWriteMode System.Boolean)
    (System.Void
      System.IO.Stream
      System.Data.XmlWriteMode
      System.Boolean)
    (System.Void System.Xml.XmlWriter System.Boolean)
    (System.Void System.IO.TextWriter System.Boolean)
    (System.Void System.String System.Boolean)
    (System.Void System.IO.Stream System.Boolean)
    (System.Void System.String System.Data.XmlWriteMode)
    (System.Void System.Xml.XmlWriter System.Data.XmlWriteMode)
    (System.Void System.IO.TextWriter System.Data.XmlWriteMode)
    (System.Void System.IO.Stream System.Data.XmlWriteMode)
    (System.Void System.String)
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter)
    (System.Void System.IO.Stream))
  (define-method-port
    get-data-table-schema
    System.Data.DataTable
    GetDataTableSchema
    (static:
      System.Xml.Schema.XmlSchemaComplexType
      System.Xml.Schema.XmlSchemaSet))
  (define-method-port
    end-load-data
    System.Data.DataTable
    EndLoadData
    (System.Void))
  (define-method-port
    load-data-row
    System.Data.DataTable
    LoadDataRow
    (System.Data.DataRow System.Object[] System.Data.LoadOption)
    (System.Data.DataRow System.Object[] System.Boolean))
  (define-method-port
    write-xml-schema
    System.Data.DataTable
    WriteXmlSchema
    (System.Void System.String System.Boolean)
    (System.Void System.Xml.XmlWriter System.Boolean)
    (System.Void System.IO.TextWriter System.Boolean)
    (System.Void System.IO.Stream System.Boolean)
    (System.Void System.String)
    (System.Void System.Xml.XmlWriter)
    (System.Void System.IO.TextWriter)
    (System.Void System.IO.Stream))
  (define-method-port
    read-xml
    System.Data.DataTable
    ReadXml
    (System.Data.XmlReadMode System.Xml.XmlReader)
    (System.Data.XmlReadMode System.IO.TextReader)
    (System.Data.XmlReadMode System.String)
    (System.Data.XmlReadMode System.IO.Stream))
  (define-method-port
    load
    System.Data.DataTable
    Load
    (System.Void
      System.Data.IDataReader
      System.Data.LoadOption
      System.Data.FillErrorEventHandler)
    (System.Void System.Data.IDataReader System.Data.LoadOption)
    (System.Void System.Data.IDataReader))
  (define-method-port reset System.Data.DataTable Reset (System.Void))
  (define-method-port
    end-init
    System.Data.DataTable
    EndInit
    (System.Void))
  (define-method-port
    begin-load-data
    System.Data.DataTable
    BeginLoadData
    (System.Void))
  (define-method-port
    clone
    System.Data.DataTable
    Clone
    (System.Data.DataTable))
  (define-method-port clear System.Data.DataTable Clear (System.Void))
  (define-method-port
    copy
    System.Data.DataTable
    Copy
    (System.Data.DataTable))
  (define-method-port
    to-string
    System.Data.DataTable
    ToString
    (System.String))
  (define-method-port
    compute
    System.Data.DataTable
    Compute
    (System.Object System.String System.String))
  (define-method-port
    read-xml-internal
    System.Data.DataTable
    ReadXml_internal
    (System.Data.XmlReadMode System.Xml.XmlReader System.Boolean))
  (define-field-port
    case-sensitive?-get
    case-sensitive?-set!
    case-sensitive?-update!
    (property:)
    System.Data.DataTable
    CaseSensitive
    System.Boolean)
  (define-field-port
    child-relations
    #f
    #f
    (property:)
    System.Data.DataTable
    ChildRelations
    System.Data.DataRelationCollection)
  (define-field-port
    columns
    #f
    #f
    (property:)
    System.Data.DataTable
    Columns
    System.Data.DataColumnCollection)
  (define-field-port
    constraints
    #f
    #f
    (property:)
    System.Data.DataTable
    Constraints
    System.Data.ConstraintCollection)
  (define-field-port
    data-set
    #f
    #f
    (property:)
    System.Data.DataTable
    DataSet
    System.Data.DataSet)
  (define-field-port
    default-view
    #f
    #f
    (property:)
    System.Data.DataTable
    DefaultView
    System.Data.DataView)
  (define-field-port
    display-expression-get
    display-expression-set!
    display-expression-update!
    (property:)
    System.Data.DataTable
    DisplayExpression
    System.String)
  (define-field-port
    extended-properties
    #f
    #f
    (property:)
    System.Data.DataTable
    ExtendedProperties
    System.Data.PropertyCollection)
  (define-field-port
    has-errors?
    #f
    #f
    (property:)
    System.Data.DataTable
    HasErrors
    System.Boolean)
  (define-field-port
    locale-get
    locale-set!
    locale-update!
    (property:)
    System.Data.DataTable
    Locale
    System.Globalization.CultureInfo)
  (define-field-port
    minimum-capacity-get
    minimum-capacity-set!
    minimum-capacity-update!
    (property:)
    System.Data.DataTable
    MinimumCapacity
    System.Int32)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Data.DataTable
    Namespace
    System.String)
  (define-field-port
    parent-relations
    #f
    #f
    (property:)
    System.Data.DataTable
    ParentRelations
    System.Data.DataRelationCollection)
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    System.Data.DataTable
    Prefix
    System.String)
  (define-field-port
    primary-key-get
    primary-key-set!
    primary-key-update!
    (property:)
    System.Data.DataTable
    PrimaryKey
    System.Data.DataColumn[])
  (define-field-port
    rows
    #f
    #f
    (property:)
    System.Data.DataTable
    Rows
    System.Data.DataRowCollection)
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.Data.DataTable
    Site
    System.ComponentModel.ISite)
  (define-field-port
    table-name-get
    table-name-set!
    table-name-update!
    (property:)
    System.Data.DataTable
    TableName
    System.String)
  (define-field-port
    is-initialized?
    #f
    #f
    (property:)
    System.Data.DataTable
    IsInitialized
    System.Boolean)
  (define-field-port
    remoting-format-get
    remoting-format-set!
    remoting-format-update!
    (property:)
    System.Data.DataTable
    RemotingFormat
    System.Data.SerializationFormat))
