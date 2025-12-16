@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZZPRPURCHASE'
}
@AccessControl.authorizationCheck: #MANDATORY
@AbapCatalog.extensibility:{ extensible: true,
                             allowNewDatasources: false,
                             dataSources: [ 'Purchase' ]
                           }
define root view entity ZZPRC_PURCHASE
  provider contract transactional_query
  as projection on ZZPRR_PURCHASE as Purchase
  association [1..1] to ZZPRR_PURCHASE as _BaseEntity on $projection.Matnr = _BaseEntity.Matnr
{
  key Matnr,
  Werks,
  Ekorg,
  Menge,
  @Consumption: {
    valueHelpDefinition: [ {
      entity.element: 'UnitOfMeasure', 
      entity.name: 'I_UnitOfMeasureStdVH', 
      useForValidation: true
    } ]
  }
  Meins,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  Locallastchg,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  Lastchged,
  @Semantics.user.lastChangedBy: true
  Changedby,
  @Semantics.user.createdBy: true
  Createdby,
  _BaseEntity
}
