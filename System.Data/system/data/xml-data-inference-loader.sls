(library (system data xml-data-inference-loader)
  (export is? xml-data-inference-loader? infer)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.XmlDataInferenceLoader a))
  (define (xml-data-inference-loader? a)
    (clr-is System.Data.XmlDataInferenceLoader a))
  (define-method-port
    infer
    System.Data.XmlDataInferenceLoader
    Infer
    (static:
      System.Void
      System.Data.DataSet
      System.Xml.XmlDocument
      System.Data.XmlReadMode
      System.String[])))
