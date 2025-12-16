//@AbapCatalog.viewEnhancementCategory: #PROJECTION_LIST
@AccessControl.authorizationCheck: #NOT_REQUIRED 
@EndUserText.label: 'Purchasing extesion'
@Metadata.ignorePropagatedAnnotations: true
@AbapCatalog.extensibility:{ extensible: true,
                             allowNewDatasources: false,
                             dataSources: [ 'Purchase' ]
                            }
define view entity ZZPRE_PURCHASE as select from zpurchase as Purchase
{
    key matnr as Material
    
}
 