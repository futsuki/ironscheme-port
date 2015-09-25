(library (system reflection manifest-resource-info)
  (export is?
          manifest-resource-info?
          file-name
          referenced-assembly
          resource-location)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.ManifestResourceInfo a))
  (define (manifest-resource-info? a)
    (clr-is System.Reflection.ManifestResourceInfo a))
  (define-field-port
    file-name
    #f
    #f
    (property:)
    System.Reflection.ManifestResourceInfo
    FileName
    System.String)
  (define-field-port
    referenced-assembly
    #f
    #f
    (property:)
    System.Reflection.ManifestResourceInfo
    ReferencedAssembly
    System.Reflection.Assembly)
  (define-field-port
    resource-location
    #f
    #f
    (property:)
    System.Reflection.ManifestResourceInfo
    ResourceLocation
    System.Reflection.ResourceLocation))
