@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZPRPURCHASE'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AbapCatalog.extensibility:{ extensible: true,
                             allowNewDatasources: false,
                             dataSources: [ '_Extension' ]
                           }
define root view entity ZZPRR_PURCHASE
  as select from zpurchase as Purchase
  association[0..1] to ZZPRE_PURCHASE as _Extension on $projection.Matnr = _Extension.Material
{
  key matnr as Matnr,
  werks as Werks,
  ekorg as Ekorg,
  menge as Menge,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  meins as Meins,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchg as Locallastchg,
  @Semantics.systemDateTime.lastChangedAt: true
  lastchged as Lastchged,
  @Semantics.user.lastChangedBy: true  
  changedby as Changedby,
  @Semantics.user.createdBy: true  
  createdby as Createdby,
  _Extension
}
