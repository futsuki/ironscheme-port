(library (system component-model design standard-tool-windows)
  (export new
          is?
          standard-tool-windows?
          object-browser
          output-window
          project-explorer
          property-browser
          related-links
          server-explorer
          task-list
          toolbox)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.StandardToolWindows
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.StandardToolWindows a))
  (define (standard-tool-windows? a)
    (clr-is System.ComponentModel.Design.StandardToolWindows a))
  (define-field-port
    object-browser
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    ObjectBrowser
    System.Guid)
  (define-field-port
    output-window
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    OutputWindow
    System.Guid)
  (define-field-port
    project-explorer
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    ProjectExplorer
    System.Guid)
  (define-field-port
    property-browser
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    PropertyBrowser
    System.Guid)
  (define-field-port
    related-links
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    RelatedLinks
    System.Guid)
  (define-field-port
    server-explorer
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    ServerExplorer
    System.Guid)
  (define-field-port
    task-list
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    TaskList
    System.Guid)
  (define-field-port
    toolbox
    #f
    #f
    (static:)
    System.ComponentModel.Design.StandardToolWindows
    Toolbox
    System.Guid))
