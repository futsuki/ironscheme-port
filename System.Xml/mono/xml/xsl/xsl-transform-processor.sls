(library (mono xml xsl xsl-transform-processor)
  (export new
          is?
          xsl-transform-processor?
          select
          pop-cdata-state
          evaluate-boolean?
          release-avt-string-builder
          get-document
          set-busy
          push-element-state?
          call-template
          get-avt-string-builder
          push-stack
          evaluate-number
          pop-stack
          push-output
          apply-imports
          pop-for-each-context
          push-nodeset
          evaluate-string
          push-for-each-context
          set-stack-item
          is-busy?
          evaluate
          nodeset-move-next?
          apply-templates
          get-stack-item
          pop-nodeset
          set-free
          pop-output
          process
          resolve-attribute-set
          matches?
          debugger
          compiled-style
          arguments
          root
          script-manager
          resolver
          out
          outputs
          output
          current-output-uri
          inside-cdata-element?
          current-nodeset
          current-node
          stack-item-count
          preserve-output-whitespace?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.XslTransformProcessor a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslTransformProcessor a))
  (define (xsl-transform-processor? a)
    (clr-is Mono.Xml.Xsl.XslTransformProcessor a))
  (define-method-port
    select
    Mono.Xml.Xsl.XslTransformProcessor
    Select
    (System.Xml.XPath.XPathNodeIterator
      System.Xml.XPath.XPathExpression))
  (define-method-port
    pop-cdata-state
    Mono.Xml.Xsl.XslTransformProcessor
    PopCDataState
    (System.Void System.Boolean))
  (define-method-port
    evaluate-boolean?
    Mono.Xml.Xsl.XslTransformProcessor
    EvaluateBoolean
    (System.Boolean System.Xml.XPath.XPathExpression))
  (define-method-port
    release-avt-string-builder
    Mono.Xml.Xsl.XslTransformProcessor
    ReleaseAvtStringBuilder
    (System.String))
  (define-method-port
    get-document
    Mono.Xml.Xsl.XslTransformProcessor
    GetDocument
    (System.Xml.XPath.XPathNavigator System.Uri))
  (define-method-port
    set-busy
    Mono.Xml.Xsl.XslTransformProcessor
    SetBusy
    (System.Void System.Object))
  (define-method-port
    push-element-state?
    Mono.Xml.Xsl.XslTransformProcessor
    PushElementState
    (System.Boolean
      System.String
      System.String
      System.String
      System.Boolean))
  (define-method-port
    call-template
    Mono.Xml.Xsl.XslTransformProcessor
    CallTemplate
    (System.Void
      System.Xml.XmlQualifiedName
      System.Collections.ArrayList))
  (define-method-port
    get-avt-string-builder
    Mono.Xml.Xsl.XslTransformProcessor
    GetAvtStringBuilder
    (System.Text.StringBuilder))
  (define-method-port
    push-stack
    Mono.Xml.Xsl.XslTransformProcessor
    PushStack
    (System.Void System.Int32))
  (define-method-port
    evaluate-number
    Mono.Xml.Xsl.XslTransformProcessor
    EvaluateNumber
    (System.Double System.Xml.XPath.XPathExpression))
  (define-method-port
    pop-stack
    Mono.Xml.Xsl.XslTransformProcessor
    PopStack
    (System.Void))
  (define-method-port
    push-output
    Mono.Xml.Xsl.XslTransformProcessor
    PushOutput
    (System.Void Mono.Xml.Xsl.Outputter))
  (define-method-port
    apply-imports
    Mono.Xml.Xsl.XslTransformProcessor
    ApplyImports
    (System.Void))
  (define-method-port
    pop-for-each-context
    Mono.Xml.Xsl.XslTransformProcessor
    PopForEachContext
    (System.Void))
  (define-method-port
    push-nodeset
    Mono.Xml.Xsl.XslTransformProcessor
    PushNodeset
    (System.Void System.Xml.XPath.XPathNodeIterator))
  (define-method-port
    evaluate-string
    Mono.Xml.Xsl.XslTransformProcessor
    EvaluateString
    (System.String System.Xml.XPath.XPathExpression))
  (define-method-port
    push-for-each-context
    Mono.Xml.Xsl.XslTransformProcessor
    PushForEachContext
    (System.Void))
  (define-method-port
    set-stack-item
    Mono.Xml.Xsl.XslTransformProcessor
    SetStackItem
    (System.Void System.Int32 System.Object))
  (define-method-port
    is-busy?
    Mono.Xml.Xsl.XslTransformProcessor
    IsBusy
    (System.Boolean System.Object))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.XslTransformProcessor
    Evaluate
    (System.Object System.Xml.XPath.XPathExpression))
  (define-method-port
    nodeset-move-next?
    Mono.Xml.Xsl.XslTransformProcessor
    NodesetMoveNext
    (System.Boolean System.Xml.XPath.XPathNodeIterator)
    (System.Boolean))
  (define-method-port
    apply-templates
    Mono.Xml.Xsl.XslTransformProcessor
    ApplyTemplates
    (System.Void
      System.Xml.XPath.XPathNodeIterator
      System.Xml.XmlQualifiedName
      System.Collections.ArrayList))
  (define-method-port
    get-stack-item
    Mono.Xml.Xsl.XslTransformProcessor
    GetStackItem
    (System.Object System.Int32))
  (define-method-port
    pop-nodeset
    Mono.Xml.Xsl.XslTransformProcessor
    PopNodeset
    (System.Void))
  (define-method-port
    set-free
    Mono.Xml.Xsl.XslTransformProcessor
    SetFree
    (System.Void System.Object))
  (define-method-port
    pop-output
    Mono.Xml.Xsl.XslTransformProcessor
    PopOutput
    (Mono.Xml.Xsl.Outputter))
  (define-method-port
    process
    Mono.Xml.Xsl.XslTransformProcessor
    Process
    (System.Void
      System.Xml.XPath.XPathNavigator
      Mono.Xml.Xsl.Outputter
      System.Xml.Xsl.XsltArgumentList
      System.Xml.XmlResolver))
  (define-method-port
    resolve-attribute-set
    Mono.Xml.Xsl.XslTransformProcessor
    ResolveAttributeSet
    (Mono.Xml.Xsl.XslAttributeSet System.Xml.XmlQualifiedName))
  (define-method-port
    matches?
    Mono.Xml.Xsl.XslTransformProcessor
    Matches
    (System.Boolean
      Mono.Xml.XPath.Pattern
      System.Xml.XPath.XPathNavigator))
  (define-field-port
    debugger
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Debugger
    Mono.Xml.Xsl.XsltDebuggerWrapper)
  (define-field-port
    compiled-style
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    CompiledStyle
    Mono.Xml.Xsl.CompiledStylesheet)
  (define-field-port
    arguments
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Arguments
    System.Xml.Xsl.XsltArgumentList)
  (define-field-port
    root
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Root
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    script-manager
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    ScriptManager
    Mono.Xml.Xsl.MSXslScriptManager)
  (define-field-port
    resolver
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Resolver
    System.Xml.XmlResolver)
  (define-field-port
    out
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Out
    Mono.Xml.Xsl.Outputter)
  (define-field-port
    outputs
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Outputs
    System.Collections.Hashtable)
  (define-field-port
    output
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    Output
    Mono.Xml.Xsl.XslOutput)
  (define-field-port
    current-output-uri
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    CurrentOutputUri
    System.String)
  (define-field-port
    inside-cdata-element?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    InsideCDataElement
    System.Boolean)
  (define-field-port
    current-nodeset
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    CurrentNodeset
    System.Xml.XPath.XPathNodeIterator)
  (define-field-port
    current-node
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    CurrentNode
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    stack-item-count
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    StackItemCount
    System.Int32)
  (define-field-port
    preserve-output-whitespace?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslTransformProcessor
    PreserveOutputWhitespace
    System.Boolean))
