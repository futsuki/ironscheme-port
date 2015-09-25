(library (system configuration configuration-section-group)
  (export new
          is?
          configuration-section-group?
          force-declaration
          is-declared?
          is-declaration-required?
          name
          section-group-name
          section-groups
          sections
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationSectionGroup
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationSectionGroup a))
  (define (configuration-section-group? a)
    (clr-is System.Configuration.ConfigurationSectionGroup a))
  (define-method-port
    force-declaration
    System.Configuration.ConfigurationSectionGroup
    ForceDeclaration
    (System.Void)
    (System.Void System.Boolean))
  (define-field-port
    is-declared?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroup
    IsDeclared
    System.Boolean)
  (define-field-port
    is-declaration-required?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroup
    IsDeclarationRequired
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroup
    Name
    System.String)
  (define-field-port
    section-group-name
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroup
    SectionGroupName
    System.String)
  (define-field-port
    section-groups
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroup
    SectionGroups
    System.Configuration.ConfigurationSectionGroupCollection)
  (define-field-port
    sections
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroup
    Sections
    System.Configuration.ConfigurationSectionCollection)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Configuration.ConfigurationSectionGroup
    Type
    System.String))
