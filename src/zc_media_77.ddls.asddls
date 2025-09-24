@AbapCatalog.sqlViewName: 'ZV_MEDIA_77'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Media'
@Metadata.ignorePropagatedAnnotations: true
define view ZC_MEDIA_77 as select distinct  from ZR_ASISTENTES_77
{
    IdCiudad,
    avg(Edad as abap.dec(11,1)) as PromedioEdad
}
group by IdCiudad
