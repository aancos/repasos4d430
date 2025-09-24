@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZASISTENTES_77'
@EndUserText.label: 'Asistentes'
define root view entity ZR_ASISTENTES_77
  as select from zasistentes_77
{
  key id as ID,
  nombre as Nombre,
  apellidos as Apellidos,
  
  case apellidos
    when 'de Ancos' then 'P'
    else 'A'
  end as Tipo,
  
  edad as Edad,
  id_ciudad as IdCiudad,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
