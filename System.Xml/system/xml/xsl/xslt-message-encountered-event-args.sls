(library (system xml xsl xslt-message-encountered-event-args)
  (export is? xslt-message-encountered-event-args? message)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Xml.Xsl.XsltMessageEncounteredEventArgs a))
  (define (xslt-message-encountered-event-args? a)
    (clr-is System.Xml.Xsl.XsltMessageEncounteredEventArgs a))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Xml.Xsl.XsltMessageEncounteredEventArgs
    Message
    System.String))
