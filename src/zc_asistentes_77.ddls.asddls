@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Asistentes'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZASISTENTES_77'
}
@AccessControl.authorizationCheck: #NOT_ALLOWED
define root view entity ZC_ASISTENTES_77
  provider contract transactional_query
  as projection on ZR_ASISTENTES_77
  association [1..1] to ZR_ASISTENTES_77 as _BaseEntity on $projection.ID = _BaseEntity.ID
  association [0..1] to ZC_CIUDADES_77 as _Ciudad on $projection.IdCiudad = _Ciudad.ID
{
  key ID,
  Nombre,
  Apellidos,
  Tipo,
  Edad,
  IdCiudad,
//
//  @Semantics: {
//    user.createdBy: true
//  }
//  CreatedBy,
//  @Semantics: {
//    systemDateTime.createdAt: true
//  }
//  CreatedAt,
//  @Semantics: {
//    user.localInstanceLastChangedBy: true
//  }
//  LocalLastChangedBy,
//  @Semantics: {
//    systemDateTime.localInstanceLastChangedAt: true
//  }
//  LocalLastChangedAt,
//  @Semantics: {
//    systemDateTime.lastChangedAt: true
//  }
//  LastChangedAt,
//  _BaseEntity,
  _Ciudad
}
