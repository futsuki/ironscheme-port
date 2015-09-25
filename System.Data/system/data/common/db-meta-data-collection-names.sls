(library (system data common db-meta-data-collection-names)
  (export is?
          db-meta-data-collection-names?
          data-source-information
          data-types
          meta-data-collections
          reserved-words
          restrictions)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.Common.DbMetaDataCollectionNames a))
  (define (db-meta-data-collection-names? a)
    (clr-is System.Data.Common.DbMetaDataCollectionNames a))
  (define-field-port
    data-source-information
    #f
    #f
    (static:)
    System.Data.Common.DbMetaDataCollectionNames
    DataSourceInformation
    System.String)
  (define-field-port
    data-types
    #f
    #f
    (static:)
    System.Data.Common.DbMetaDataCollectionNames
    DataTypes
    System.String)
  (define-field-port
    meta-data-collections
    #f
    #f
    (static:)
    System.Data.Common.DbMetaDataCollectionNames
    MetaDataCollections
    System.String)
  (define-field-port
    reserved-words
    #f
    #f
    (static:)
    System.Data.Common.DbMetaDataCollectionNames
    ReservedWords
    System.String)
  (define-field-port
    restrictions
    #f
    #f
    (static:)
    System.Data.Common.DbMetaDataCollectionNames
    Restrictions
    System.String))
