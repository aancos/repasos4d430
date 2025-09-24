@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Ciudades'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZCIUDADES_77'
}
@AccessControl.authorizationCheck: #NOT_ALLOWED
define root view entity ZC_CIUDADES_77
  provider contract transactional_query
  as projection on ZR_CIUDADES_77
  association [1..1] to ZR_CIUDADES_77 as _BaseEntity on $projection.ID = _BaseEntity.ID
  association [0..1] to ZC_ASISTENTES_77 as _Asistentes on $projection.ID = _Asistentes.IdCiudad
{
  key ID,
  Ciudad,
  IdPais,
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
  _Asistentes
}
