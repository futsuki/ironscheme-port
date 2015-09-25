(library (system xml linq extensions)
  (export is?
          extensions?
          ancestors
          elements
          ancestors-and-self
          descendant-nodes-and-self
          nodes
          attributes
          in-document-order
          remove
          descendant-nodes
          descendants-and-self
          descendants)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Linq.Extensions a))
  (define (extensions? a) (clr-is System.Xml.Linq.Extensions a))
  (define-method-port ancestors System.Xml.Linq.Extensions Ancestors)
  (define-method-port elements System.Xml.Linq.Extensions Elements)
  (define-method-port
    ancestors-and-self
    System.Xml.Linq.Extensions
    AncestorsAndSelf)
  (define-method-port
    descendant-nodes-and-self
    System.Xml.Linq.Extensions
    DescendantNodesAndSelf)
  (define-method-port nodes System.Xml.Linq.Extensions Nodes)
  (define-method-port attributes System.Xml.Linq.Extensions Attributes)
  (define-method-port
    in-document-order
    System.Xml.Linq.Extensions
    InDocumentOrder)
  (define-method-port remove System.Xml.Linq.Extensions Remove)
  (define-method-port
    descendant-nodes
    System.Xml.Linq.Extensions
    DescendantNodes)
  (define-method-port
    descendants-and-self
    System.Xml.Linq.Extensions
    DescendantsAndSelf)
  (define-method-port
    descendants
    System.Xml.Linq.Extensions
    Descendants))
