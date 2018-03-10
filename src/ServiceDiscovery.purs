

-- | <p>Amazon Route 53 auto naming lets you configure public or private namespaces that your microservice applications run in. When instances of the service become available, you can call the auto naming API to register the instance, and Route 53 automatically creates up to five DNS records and an optional health check. Clients that submit DNS queries for the service receive an answer that contains up to eight healthy records.</p>
module AWS.ServiceDiscovery where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "ServiceDiscovery" :: String


-- | <p>Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. You can associate more than one service with the same namespace.</p>
createPrivateDnsNamespace :: forall eff. CreatePrivateDnsNamespaceRequest -> Aff (exception :: EXCEPTION | eff) CreatePrivateDnsNamespaceResponse
createPrivateDnsNamespace = Request.request serviceName "createPrivateDnsNamespace" 


-- | <p>Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. You can associate more than one service with the same namespace.</p>
createPublicDnsNamespace :: forall eff. CreatePublicDnsNamespaceRequest -> Aff (exception :: EXCEPTION | eff) CreatePublicDnsNamespaceResponse
createPublicDnsNamespace = Request.request serviceName "createPublicDnsNamespace" 


-- | <p>Creates a service, which defines the configuration for the following entities:</p> <ul> <li> <p>Up to three records (A, AAAA, and SRV) or one CNAME record</p> </li> <li> <p>Optionally, a health check</p> </li> </ul> <p>After you create the service, you can submit a <a>RegisterInstance</a> request, and Amazon Route 53 uses the values in the configuration to create the specified entities. </p>
createService :: forall eff. CreateServiceRequest -> Aff (exception :: EXCEPTION | eff) CreateServiceResponse
createService = Request.request serviceName "createService" 


-- | <p>Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.</p>
deleteNamespace :: forall eff. DeleteNamespaceRequest -> Aff (exception :: EXCEPTION | eff) DeleteNamespaceResponse
deleteNamespace = Request.request serviceName "deleteNamespace" 


-- | <p>Deletes a specified service. If the service still contains one or more registered instances, the request fails.</p>
deleteService :: forall eff. DeleteServiceRequest -> Aff (exception :: EXCEPTION | eff) DeleteServiceResponse
deleteService = Request.request serviceName "deleteService" 


-- | <p>Deletes the records and the health check, if any, that Amazon Route 53 created for the specified instance.</p>
deregisterInstance :: forall eff. DeregisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) DeregisterInstanceResponse
deregisterInstance = Request.request serviceName "deregisterInstance" 


-- | <p>Gets information about a specified instance.</p>
getInstance :: forall eff. GetInstanceRequest -> Aff (exception :: EXCEPTION | eff) GetInstanceResponse
getInstance = Request.request serviceName "getInstance" 


-- | <p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of one or more instances that are associated with a specified service.</p> <note> <p>There is a brief delay between when you register an instance and when the health status for the instance is available. </p> </note>
getInstancesHealthStatus :: forall eff. GetInstancesHealthStatusRequest -> Aff (exception :: EXCEPTION | eff) GetInstancesHealthStatusResponse
getInstancesHealthStatus = Request.request serviceName "getInstancesHealthStatus" 


-- | <p>Gets information about a namespace.</p>
getNamespace :: forall eff. GetNamespaceRequest -> Aff (exception :: EXCEPTION | eff) GetNamespaceResponse
getNamespace = Request.request serviceName "getNamespace" 


-- | <p>Gets information about any operation that returns an operation ID in the response, such as a <code>CreateService</code> request.</p> <note> <p>To get a list of operations that match specified criteria, see <a>ListOperations</a>.</p> </note>
getOperation :: forall eff. GetOperationRequest -> Aff (exception :: EXCEPTION | eff) GetOperationResponse
getOperation = Request.request serviceName "getOperation" 


-- | <p>Gets the settings for a specified service.</p>
getService :: forall eff. GetServiceRequest -> Aff (exception :: EXCEPTION | eff) GetServiceResponse
getService = Request.request serviceName "getService" 


-- | <p>Lists summary information about the instances that you registered by using a specified service.</p>
listInstances :: forall eff. ListInstancesRequest -> Aff (exception :: EXCEPTION | eff) ListInstancesResponse
listInstances = Request.request serviceName "listInstances" 


-- | <p>Lists summary information about the namespaces that were created by the current AWS account.</p>
listNamespaces :: forall eff. ListNamespacesRequest -> Aff (exception :: EXCEPTION | eff) ListNamespacesResponse
listNamespaces = Request.request serviceName "listNamespaces" 


-- | <p>Lists operations that match the criteria that you specify.</p>
listOperations :: forall eff. ListOperationsRequest -> Aff (exception :: EXCEPTION | eff) ListOperationsResponse
listOperations = Request.request serviceName "listOperations" 


-- | <p>Lists summary information for all the services that are associated with one or more specified namespaces.</p>
listServices :: forall eff. ListServicesRequest -> Aff (exception :: EXCEPTION | eff) ListServicesResponse
listServices = Request.request serviceName "listServices" 


-- | <p>Creates or updates one or more records and optionally a health check based on the settings in a specified service. When you submit a <code>RegisterInstance</code> request, Amazon Route 53 does the following:</p> <ul> <li> <p>For each DNS record that you define in the service specified by <code>ServiceId</code>, creates or updates a record in the hosted zone that is associated with the corresponding namespace</p> </li> <li> <p>Creates or updates a health check based on the settings in the health check configuration, if any, for the service</p> </li> <li> <p>Associates the health check, if any, with each of the records</p> </li> </ul> <important> <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify the same service ID and instance ID.</p> </important> <p>For more information, see <a>CreateService</a>.</p> <p>When Route 53 receives a DNS query for the specified DNS name, it returns the applicable value:</p> <ul> <li> <p> <b>If the health check is healthy</b>: returns all the records</p> </li> <li> <p> <b>If the health check is unhealthy</b>: returns the IP address of the last healthy instance</p> </li> <li> <p> <b>If you didn't specify a health check configuration</b>: returns all the records</p> </li> </ul>
registerInstance :: forall eff. RegisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) RegisterInstanceResponse
registerInstance = Request.request serviceName "registerInstance" 


-- | <p>Submits a request to perform the following operations:</p> <ul> <li> <p>Add or delete <code>DnsRecords</code> configurations</p> </li> <li> <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p> </li> <li> <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p> </li> <li> <p/> </li> </ul> <p>You must specify all <code>DnsRecords</code> configurations (and, optionally, <code>HealthCheckConfig</code>) that you want to appear in the updated service. Any current configurations that don't appear in an <code>UpdateService</code> request are deleted.</p> <p>When you update the TTL setting for a service, Amazon Route 53 also updates the corresponding settings in all the records and health checks that were created by using the specified service.</p>
updateService :: forall eff. UpdateServiceRequest -> Aff (exception :: EXCEPTION | eff) UpdateServiceResponse
updateService = Request.request serviceName "updateService" 


newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where
  show = genericShow
instance decodeArn :: Decode Arn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArn :: Encode Arn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttrKey = AttrKey String
derive instance newtypeAttrKey :: Newtype AttrKey _
derive instance repGenericAttrKey :: Generic AttrKey _
instance showAttrKey :: Show AttrKey where
  show = genericShow
instance decodeAttrKey :: Decode AttrKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttrKey :: Encode AttrKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AttrValue = AttrValue String
derive instance newtypeAttrValue :: Newtype AttrValue _
derive instance repGenericAttrValue :: Generic AttrValue _
instance showAttrValue :: Show AttrValue where
  show = genericShow
instance decodeAttrValue :: Decode AttrValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttrValue :: Encode AttrValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Attributes = Attributes (StrMap.StrMap AttrValue)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where
  show = genericShow
instance decodeAttributes :: Decode Attributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttributes :: Encode Attributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Code = Code String
derive instance newtypeCode :: Newtype Code _
derive instance repGenericCode :: Generic Code _
instance showCode :: Show Code where
  show = genericShow
instance decodeCode :: Decode Code where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCode :: Encode Code where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreatePrivateDnsNamespaceRequest = CreatePrivateDnsNamespaceRequest 
  { "Name" :: (NamespaceName)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  , "Vpc" :: (ResourceId)
  }
derive instance newtypeCreatePrivateDnsNamespaceRequest :: Newtype CreatePrivateDnsNamespaceRequest _
derive instance repGenericCreatePrivateDnsNamespaceRequest :: Generic CreatePrivateDnsNamespaceRequest _
instance showCreatePrivateDnsNamespaceRequest :: Show CreatePrivateDnsNamespaceRequest where
  show = genericShow
instance decodeCreatePrivateDnsNamespaceRequest :: Decode CreatePrivateDnsNamespaceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePrivateDnsNamespaceRequest :: Encode CreatePrivateDnsNamespaceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePrivateDnsNamespaceRequest from required parameters
newCreatePrivateDnsNamespaceRequest :: NamespaceName -> ResourceId -> CreatePrivateDnsNamespaceRequest
newCreatePrivateDnsNamespaceRequest _Name _Vpc = CreatePrivateDnsNamespaceRequest { "Name": _Name, "Vpc": _Vpc, "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs CreatePrivateDnsNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePrivateDnsNamespaceRequest' :: NamespaceName -> ResourceId -> ( { "Name" :: (NamespaceName) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "Vpc" :: (ResourceId) } -> {"Name" :: (NamespaceName) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "Vpc" :: (ResourceId) } ) -> CreatePrivateDnsNamespaceRequest
newCreatePrivateDnsNamespaceRequest' _Name _Vpc customize = (CreatePrivateDnsNamespaceRequest <<< customize) { "Name": _Name, "Vpc": _Vpc, "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



newtype CreatePrivateDnsNamespaceResponse = CreatePrivateDnsNamespaceResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  }
derive instance newtypeCreatePrivateDnsNamespaceResponse :: Newtype CreatePrivateDnsNamespaceResponse _
derive instance repGenericCreatePrivateDnsNamespaceResponse :: Generic CreatePrivateDnsNamespaceResponse _
instance showCreatePrivateDnsNamespaceResponse :: Show CreatePrivateDnsNamespaceResponse where
  show = genericShow
instance decodeCreatePrivateDnsNamespaceResponse :: Decode CreatePrivateDnsNamespaceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePrivateDnsNamespaceResponse :: Encode CreatePrivateDnsNamespaceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePrivateDnsNamespaceResponse from required parameters
newCreatePrivateDnsNamespaceResponse :: CreatePrivateDnsNamespaceResponse
newCreatePrivateDnsNamespaceResponse  = CreatePrivateDnsNamespaceResponse { "OperationId": (NullOrUndefined Nothing) }

-- | Constructs CreatePrivateDnsNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePrivateDnsNamespaceResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } ) -> CreatePrivateDnsNamespaceResponse
newCreatePrivateDnsNamespaceResponse'  customize = (CreatePrivateDnsNamespaceResponse <<< customize) { "OperationId": (NullOrUndefined Nothing) }



newtype CreatePublicDnsNamespaceRequest = CreatePublicDnsNamespaceRequest 
  { "Name" :: (NamespaceName)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  }
derive instance newtypeCreatePublicDnsNamespaceRequest :: Newtype CreatePublicDnsNamespaceRequest _
derive instance repGenericCreatePublicDnsNamespaceRequest :: Generic CreatePublicDnsNamespaceRequest _
instance showCreatePublicDnsNamespaceRequest :: Show CreatePublicDnsNamespaceRequest where
  show = genericShow
instance decodeCreatePublicDnsNamespaceRequest :: Decode CreatePublicDnsNamespaceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePublicDnsNamespaceRequest :: Encode CreatePublicDnsNamespaceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePublicDnsNamespaceRequest from required parameters
newCreatePublicDnsNamespaceRequest :: NamespaceName -> CreatePublicDnsNamespaceRequest
newCreatePublicDnsNamespaceRequest _Name = CreatePublicDnsNamespaceRequest { "Name": _Name, "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs CreatePublicDnsNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePublicDnsNamespaceRequest' :: NamespaceName -> ( { "Name" :: (NamespaceName) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) } -> {"Name" :: (NamespaceName) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) } ) -> CreatePublicDnsNamespaceRequest
newCreatePublicDnsNamespaceRequest' _Name customize = (CreatePublicDnsNamespaceRequest <<< customize) { "Name": _Name, "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



newtype CreatePublicDnsNamespaceResponse = CreatePublicDnsNamespaceResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  }
derive instance newtypeCreatePublicDnsNamespaceResponse :: Newtype CreatePublicDnsNamespaceResponse _
derive instance repGenericCreatePublicDnsNamespaceResponse :: Generic CreatePublicDnsNamespaceResponse _
instance showCreatePublicDnsNamespaceResponse :: Show CreatePublicDnsNamespaceResponse where
  show = genericShow
instance decodeCreatePublicDnsNamespaceResponse :: Decode CreatePublicDnsNamespaceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePublicDnsNamespaceResponse :: Encode CreatePublicDnsNamespaceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePublicDnsNamespaceResponse from required parameters
newCreatePublicDnsNamespaceResponse :: CreatePublicDnsNamespaceResponse
newCreatePublicDnsNamespaceResponse  = CreatePublicDnsNamespaceResponse { "OperationId": (NullOrUndefined Nothing) }

-- | Constructs CreatePublicDnsNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePublicDnsNamespaceResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } ) -> CreatePublicDnsNamespaceResponse
newCreatePublicDnsNamespaceResponse'  customize = (CreatePublicDnsNamespaceResponse <<< customize) { "OperationId": (NullOrUndefined Nothing) }



newtype CreateServiceRequest = CreateServiceRequest 
  { "Name" :: (ServiceName)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  , "DnsConfig" :: (DnsConfig)
  , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig)
  }
derive instance newtypeCreateServiceRequest :: Newtype CreateServiceRequest _
derive instance repGenericCreateServiceRequest :: Generic CreateServiceRequest _
instance showCreateServiceRequest :: Show CreateServiceRequest where
  show = genericShow
instance decodeCreateServiceRequest :: Decode CreateServiceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateServiceRequest :: Encode CreateServiceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateServiceRequest from required parameters
newCreateServiceRequest :: DnsConfig -> ServiceName -> CreateServiceRequest
newCreateServiceRequest _DnsConfig _Name = CreateServiceRequest { "DnsConfig": _DnsConfig, "Name": _Name, "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HealthCheckConfig": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceRequest' :: DnsConfig -> ServiceName -> ( { "Name" :: (ServiceName) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "DnsConfig" :: (DnsConfig) , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig) } -> {"Name" :: (ServiceName) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "DnsConfig" :: (DnsConfig) , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig) } ) -> CreateServiceRequest
newCreateServiceRequest' _DnsConfig _Name customize = (CreateServiceRequest <<< customize) { "DnsConfig": _DnsConfig, "Name": _Name, "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HealthCheckConfig": (NullOrUndefined Nothing) }



newtype CreateServiceResponse = CreateServiceResponse 
  { "Service" :: NullOrUndefined.NullOrUndefined (Service)
  }
derive instance newtypeCreateServiceResponse :: Newtype CreateServiceResponse _
derive instance repGenericCreateServiceResponse :: Generic CreateServiceResponse _
instance showCreateServiceResponse :: Show CreateServiceResponse where
  show = genericShow
instance decodeCreateServiceResponse :: Decode CreateServiceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateServiceResponse :: Encode CreateServiceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateServiceResponse from required parameters
newCreateServiceResponse :: CreateServiceResponse
newCreateServiceResponse  = CreateServiceResponse { "Service": (NullOrUndefined Nothing) }

-- | Constructs CreateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceResponse' :: ( { "Service" :: NullOrUndefined.NullOrUndefined (Service) } -> {"Service" :: NullOrUndefined.NullOrUndefined (Service) } ) -> CreateServiceResponse
newCreateServiceResponse'  customize = (CreateServiceResponse <<< customize) { "Service": (NullOrUndefined Nothing) }



newtype DeleteNamespaceRequest = DeleteNamespaceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeDeleteNamespaceRequest :: Newtype DeleteNamespaceRequest _
derive instance repGenericDeleteNamespaceRequest :: Generic DeleteNamespaceRequest _
instance showDeleteNamespaceRequest :: Show DeleteNamespaceRequest where
  show = genericShow
instance decodeDeleteNamespaceRequest :: Decode DeleteNamespaceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteNamespaceRequest :: Encode DeleteNamespaceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteNamespaceRequest from required parameters
newDeleteNamespaceRequest :: ResourceId -> DeleteNamespaceRequest
newDeleteNamespaceRequest _Id = DeleteNamespaceRequest { "Id": _Id }

-- | Constructs DeleteNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteNamespaceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> DeleteNamespaceRequest
newDeleteNamespaceRequest' _Id customize = (DeleteNamespaceRequest <<< customize) { "Id": _Id }



newtype DeleteNamespaceResponse = DeleteNamespaceResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  }
derive instance newtypeDeleteNamespaceResponse :: Newtype DeleteNamespaceResponse _
derive instance repGenericDeleteNamespaceResponse :: Generic DeleteNamespaceResponse _
instance showDeleteNamespaceResponse :: Show DeleteNamespaceResponse where
  show = genericShow
instance decodeDeleteNamespaceResponse :: Decode DeleteNamespaceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteNamespaceResponse :: Encode DeleteNamespaceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteNamespaceResponse from required parameters
newDeleteNamespaceResponse :: DeleteNamespaceResponse
newDeleteNamespaceResponse  = DeleteNamespaceResponse { "OperationId": (NullOrUndefined Nothing) }

-- | Constructs DeleteNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteNamespaceResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } ) -> DeleteNamespaceResponse
newDeleteNamespaceResponse'  customize = (DeleteNamespaceResponse <<< customize) { "OperationId": (NullOrUndefined Nothing) }



newtype DeleteServiceRequest = DeleteServiceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeDeleteServiceRequest :: Newtype DeleteServiceRequest _
derive instance repGenericDeleteServiceRequest :: Generic DeleteServiceRequest _
instance showDeleteServiceRequest :: Show DeleteServiceRequest where
  show = genericShow
instance decodeDeleteServiceRequest :: Decode DeleteServiceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteServiceRequest :: Encode DeleteServiceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteServiceRequest from required parameters
newDeleteServiceRequest :: ResourceId -> DeleteServiceRequest
newDeleteServiceRequest _Id = DeleteServiceRequest { "Id": _Id }

-- | Constructs DeleteServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteServiceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> DeleteServiceRequest
newDeleteServiceRequest' _Id customize = (DeleteServiceRequest <<< customize) { "Id": _Id }



newtype DeleteServiceResponse = DeleteServiceResponse Types.NoArguments
derive instance newtypeDeleteServiceResponse :: Newtype DeleteServiceResponse _
derive instance repGenericDeleteServiceResponse :: Generic DeleteServiceResponse _
instance showDeleteServiceResponse :: Show DeleteServiceResponse where
  show = genericShow
instance decodeDeleteServiceResponse :: Decode DeleteServiceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteServiceResponse :: Encode DeleteServiceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeregisterInstanceRequest = DeregisterInstanceRequest 
  { "ServiceId" :: (ResourceId)
  , "InstanceId" :: (ResourceId)
  }
derive instance newtypeDeregisterInstanceRequest :: Newtype DeregisterInstanceRequest _
derive instance repGenericDeregisterInstanceRequest :: Generic DeregisterInstanceRequest _
instance showDeregisterInstanceRequest :: Show DeregisterInstanceRequest where
  show = genericShow
instance decodeDeregisterInstanceRequest :: Decode DeregisterInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterInstanceRequest :: Encode DeregisterInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeregisterInstanceRequest from required parameters
newDeregisterInstanceRequest :: ResourceId -> ResourceId -> DeregisterInstanceRequest
newDeregisterInstanceRequest _InstanceId _ServiceId = DeregisterInstanceRequest { "InstanceId": _InstanceId, "ServiceId": _ServiceId }

-- | Constructs DeregisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterInstanceRequest' :: ResourceId -> ResourceId -> ( { "ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } -> {"ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } ) -> DeregisterInstanceRequest
newDeregisterInstanceRequest' _InstanceId _ServiceId customize = (DeregisterInstanceRequest <<< customize) { "InstanceId": _InstanceId, "ServiceId": _ServiceId }



newtype DeregisterInstanceResponse = DeregisterInstanceResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  }
derive instance newtypeDeregisterInstanceResponse :: Newtype DeregisterInstanceResponse _
derive instance repGenericDeregisterInstanceResponse :: Generic DeregisterInstanceResponse _
instance showDeregisterInstanceResponse :: Show DeregisterInstanceResponse where
  show = genericShow
instance decodeDeregisterInstanceResponse :: Decode DeregisterInstanceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeregisterInstanceResponse :: Encode DeregisterInstanceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeregisterInstanceResponse from required parameters
newDeregisterInstanceResponse :: DeregisterInstanceResponse
newDeregisterInstanceResponse  = DeregisterInstanceResponse { "OperationId": (NullOrUndefined Nothing) }

-- | Constructs DeregisterInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterInstanceResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } ) -> DeregisterInstanceResponse
newDeregisterInstanceResponse'  customize = (DeregisterInstanceResponse <<< customize) { "OperationId": (NullOrUndefined Nothing) }



-- | <p>A complex type that contains information about the records that you want Amazon Route 53 to create when you register an instance.</p>
newtype DnsConfig = DnsConfig 
  { "NamespaceId" :: (ResourceId)
  , "RoutingPolicy" :: NullOrUndefined.NullOrUndefined (RoutingPolicy)
  , "DnsRecords" :: (DnsRecordList)
  }
derive instance newtypeDnsConfig :: Newtype DnsConfig _
derive instance repGenericDnsConfig :: Generic DnsConfig _
instance showDnsConfig :: Show DnsConfig where
  show = genericShow
instance decodeDnsConfig :: Decode DnsConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDnsConfig :: Encode DnsConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DnsConfig from required parameters
newDnsConfig :: DnsRecordList -> ResourceId -> DnsConfig
newDnsConfig _DnsRecords _NamespaceId = DnsConfig { "DnsRecords": _DnsRecords, "NamespaceId": _NamespaceId, "RoutingPolicy": (NullOrUndefined Nothing) }

-- | Constructs DnsConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsConfig' :: DnsRecordList -> ResourceId -> ( { "NamespaceId" :: (ResourceId) , "RoutingPolicy" :: NullOrUndefined.NullOrUndefined (RoutingPolicy) , "DnsRecords" :: (DnsRecordList) } -> {"NamespaceId" :: (ResourceId) , "RoutingPolicy" :: NullOrUndefined.NullOrUndefined (RoutingPolicy) , "DnsRecords" :: (DnsRecordList) } ) -> DnsConfig
newDnsConfig' _DnsRecords _NamespaceId customize = (DnsConfig <<< customize) { "DnsRecords": _DnsRecords, "NamespaceId": _NamespaceId, "RoutingPolicy": (NullOrUndefined Nothing) }



-- | <p>A complex type that contains information about changes to the records that Route 53 creates when you register an instance.</p>
newtype DnsConfigChange = DnsConfigChange 
  { "DnsRecords" :: (DnsRecordList)
  }
derive instance newtypeDnsConfigChange :: Newtype DnsConfigChange _
derive instance repGenericDnsConfigChange :: Generic DnsConfigChange _
instance showDnsConfigChange :: Show DnsConfigChange where
  show = genericShow
instance decodeDnsConfigChange :: Decode DnsConfigChange where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDnsConfigChange :: Encode DnsConfigChange where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DnsConfigChange from required parameters
newDnsConfigChange :: DnsRecordList -> DnsConfigChange
newDnsConfigChange _DnsRecords = DnsConfigChange { "DnsRecords": _DnsRecords }

-- | Constructs DnsConfigChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsConfigChange' :: DnsRecordList -> ( { "DnsRecords" :: (DnsRecordList) } -> {"DnsRecords" :: (DnsRecordList) } ) -> DnsConfigChange
newDnsConfigChange' _DnsRecords customize = (DnsConfigChange <<< customize) { "DnsRecords": _DnsRecords }



-- | <p>A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.</p>
newtype DnsProperties = DnsProperties 
  { "HostedZoneId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  }
derive instance newtypeDnsProperties :: Newtype DnsProperties _
derive instance repGenericDnsProperties :: Generic DnsProperties _
instance showDnsProperties :: Show DnsProperties where
  show = genericShow
instance decodeDnsProperties :: Decode DnsProperties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDnsProperties :: Encode DnsProperties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DnsProperties from required parameters
newDnsProperties :: DnsProperties
newDnsProperties  = DnsProperties { "HostedZoneId": (NullOrUndefined Nothing) }

-- | Constructs DnsProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsProperties' :: ( { "HostedZoneId" :: NullOrUndefined.NullOrUndefined (ResourceId) } -> {"HostedZoneId" :: NullOrUndefined.NullOrUndefined (ResourceId) } ) -> DnsProperties
newDnsProperties'  customize = (DnsProperties <<< customize) { "HostedZoneId": (NullOrUndefined Nothing) }



-- | <p>A complex type that contains information about the records that you want Route 53 to create when you register an instance.</p>
newtype DnsRecord = DnsRecord 
  { "Type" :: (RecordType)
  , "TTL" :: (RecordTTL)
  }
derive instance newtypeDnsRecord :: Newtype DnsRecord _
derive instance repGenericDnsRecord :: Generic DnsRecord _
instance showDnsRecord :: Show DnsRecord where
  show = genericShow
instance decodeDnsRecord :: Decode DnsRecord where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDnsRecord :: Encode DnsRecord where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DnsRecord from required parameters
newDnsRecord :: RecordTTL -> RecordType -> DnsRecord
newDnsRecord _TTL _Type = DnsRecord { "TTL": _TTL, "Type": _Type }

-- | Constructs DnsRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsRecord' :: RecordTTL -> RecordType -> ( { "Type" :: (RecordType) , "TTL" :: (RecordTTL) } -> {"Type" :: (RecordType) , "TTL" :: (RecordTTL) } ) -> DnsRecord
newDnsRecord' _TTL _Type customize = (DnsRecord <<< customize) { "TTL": _TTL, "Type": _Type }



newtype DnsRecordList = DnsRecordList (Array DnsRecord)
derive instance newtypeDnsRecordList :: Newtype DnsRecordList _
derive instance repGenericDnsRecordList :: Generic DnsRecordList _
instance showDnsRecordList :: Show DnsRecordList where
  show = genericShow
instance decodeDnsRecordList :: Decode DnsRecordList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDnsRecordList :: Encode DnsRecordList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The operation is already in progress.</p>
newtype DuplicateRequest = DuplicateRequest 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeDuplicateRequest :: Newtype DuplicateRequest _
derive instance repGenericDuplicateRequest :: Generic DuplicateRequest _
instance showDuplicateRequest :: Show DuplicateRequest where
  show = genericShow
instance decodeDuplicateRequest :: Decode DuplicateRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateRequest :: Encode DuplicateRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateRequest from required parameters
newDuplicateRequest :: DuplicateRequest
newDuplicateRequest  = DuplicateRequest { "Message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateRequest' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> DuplicateRequest
newDuplicateRequest'  customize = (DuplicateRequest <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FailureThreshold = FailureThreshold Int
derive instance newtypeFailureThreshold :: Newtype FailureThreshold _
derive instance repGenericFailureThreshold :: Generic FailureThreshold _
instance showFailureThreshold :: Show FailureThreshold where
  show = genericShow
instance decodeFailureThreshold :: Decode FailureThreshold where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFailureThreshold :: Encode FailureThreshold where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FilterCondition = FilterCondition String
derive instance newtypeFilterCondition :: Newtype FilterCondition _
derive instance repGenericFilterCondition :: Generic FilterCondition _
instance showFilterCondition :: Show FilterCondition where
  show = genericShow
instance decodeFilterCondition :: Decode FilterCondition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFilterCondition :: Encode FilterCondition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FilterValue = FilterValue String
derive instance newtypeFilterValue :: Newtype FilterValue _
derive instance repGenericFilterValue :: Generic FilterValue _
instance showFilterValue :: Show FilterValue where
  show = genericShow
instance decodeFilterValue :: Decode FilterValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFilterValue :: Encode FilterValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FilterValues = FilterValues (Array FilterValue)
derive instance newtypeFilterValues :: Newtype FilterValues _
derive instance repGenericFilterValues :: Generic FilterValues _
instance showFilterValues :: Show FilterValues where
  show = genericShow
instance decodeFilterValues :: Decode FilterValues where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFilterValues :: Encode FilterValues where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetInstanceRequest = GetInstanceRequest 
  { "ServiceId" :: (ResourceId)
  , "InstanceId" :: (ResourceId)
  }
derive instance newtypeGetInstanceRequest :: Newtype GetInstanceRequest _
derive instance repGenericGetInstanceRequest :: Generic GetInstanceRequest _
instance showGetInstanceRequest :: Show GetInstanceRequest where
  show = genericShow
instance decodeGetInstanceRequest :: Decode GetInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetInstanceRequest :: Encode GetInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetInstanceRequest from required parameters
newGetInstanceRequest :: ResourceId -> ResourceId -> GetInstanceRequest
newGetInstanceRequest _InstanceId _ServiceId = GetInstanceRequest { "InstanceId": _InstanceId, "ServiceId": _ServiceId }

-- | Constructs GetInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceRequest' :: ResourceId -> ResourceId -> ( { "ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } -> {"ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } ) -> GetInstanceRequest
newGetInstanceRequest' _InstanceId _ServiceId customize = (GetInstanceRequest <<< customize) { "InstanceId": _InstanceId, "ServiceId": _ServiceId }



newtype GetInstanceResponse = GetInstanceResponse 
  { "Instance" :: NullOrUndefined.NullOrUndefined (Instance)
  }
derive instance newtypeGetInstanceResponse :: Newtype GetInstanceResponse _
derive instance repGenericGetInstanceResponse :: Generic GetInstanceResponse _
instance showGetInstanceResponse :: Show GetInstanceResponse where
  show = genericShow
instance decodeGetInstanceResponse :: Decode GetInstanceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetInstanceResponse :: Encode GetInstanceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetInstanceResponse from required parameters
newGetInstanceResponse :: GetInstanceResponse
newGetInstanceResponse  = GetInstanceResponse { "Instance": (NullOrUndefined Nothing) }

-- | Constructs GetInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceResponse' :: ( { "Instance" :: NullOrUndefined.NullOrUndefined (Instance) } -> {"Instance" :: NullOrUndefined.NullOrUndefined (Instance) } ) -> GetInstanceResponse
newGetInstanceResponse'  customize = (GetInstanceResponse <<< customize) { "Instance": (NullOrUndefined Nothing) }



newtype GetInstancesHealthStatusRequest = GetInstancesHealthStatusRequest 
  { "ServiceId" :: (ResourceId)
  , "Instances" :: NullOrUndefined.NullOrUndefined (InstanceIdList)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeGetInstancesHealthStatusRequest :: Newtype GetInstancesHealthStatusRequest _
derive instance repGenericGetInstancesHealthStatusRequest :: Generic GetInstancesHealthStatusRequest _
instance showGetInstancesHealthStatusRequest :: Show GetInstancesHealthStatusRequest where
  show = genericShow
instance decodeGetInstancesHealthStatusRequest :: Decode GetInstancesHealthStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetInstancesHealthStatusRequest :: Encode GetInstancesHealthStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetInstancesHealthStatusRequest from required parameters
newGetInstancesHealthStatusRequest :: ResourceId -> GetInstancesHealthStatusRequest
newGetInstancesHealthStatusRequest _ServiceId = GetInstancesHealthStatusRequest { "ServiceId": _ServiceId, "Instances": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetInstancesHealthStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstancesHealthStatusRequest' :: ResourceId -> ( { "ServiceId" :: (ResourceId) , "Instances" :: NullOrUndefined.NullOrUndefined (InstanceIdList) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ServiceId" :: (ResourceId) , "Instances" :: NullOrUndefined.NullOrUndefined (InstanceIdList) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> GetInstancesHealthStatusRequest
newGetInstancesHealthStatusRequest' _ServiceId customize = (GetInstancesHealthStatusRequest <<< customize) { "ServiceId": _ServiceId, "Instances": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype GetInstancesHealthStatusResponse = GetInstancesHealthStatusResponse 
  { "Status" :: NullOrUndefined.NullOrUndefined (InstanceHealthStatusMap)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeGetInstancesHealthStatusResponse :: Newtype GetInstancesHealthStatusResponse _
derive instance repGenericGetInstancesHealthStatusResponse :: Generic GetInstancesHealthStatusResponse _
instance showGetInstancesHealthStatusResponse :: Show GetInstancesHealthStatusResponse where
  show = genericShow
instance decodeGetInstancesHealthStatusResponse :: Decode GetInstancesHealthStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetInstancesHealthStatusResponse :: Encode GetInstancesHealthStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetInstancesHealthStatusResponse from required parameters
newGetInstancesHealthStatusResponse :: GetInstancesHealthStatusResponse
newGetInstancesHealthStatusResponse  = GetInstancesHealthStatusResponse { "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs GetInstancesHealthStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstancesHealthStatusResponse' :: ( { "Status" :: NullOrUndefined.NullOrUndefined (InstanceHealthStatusMap) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Status" :: NullOrUndefined.NullOrUndefined (InstanceHealthStatusMap) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> GetInstancesHealthStatusResponse
newGetInstancesHealthStatusResponse'  customize = (GetInstancesHealthStatusResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype GetNamespaceRequest = GetNamespaceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetNamespaceRequest :: Newtype GetNamespaceRequest _
derive instance repGenericGetNamespaceRequest :: Generic GetNamespaceRequest _
instance showGetNamespaceRequest :: Show GetNamespaceRequest where
  show = genericShow
instance decodeGetNamespaceRequest :: Decode GetNamespaceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetNamespaceRequest :: Encode GetNamespaceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetNamespaceRequest from required parameters
newGetNamespaceRequest :: ResourceId -> GetNamespaceRequest
newGetNamespaceRequest _Id = GetNamespaceRequest { "Id": _Id }

-- | Constructs GetNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetNamespaceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetNamespaceRequest
newGetNamespaceRequest' _Id customize = (GetNamespaceRequest <<< customize) { "Id": _Id }



newtype GetNamespaceResponse = GetNamespaceResponse 
  { "Namespace" :: NullOrUndefined.NullOrUndefined (Namespace)
  }
derive instance newtypeGetNamespaceResponse :: Newtype GetNamespaceResponse _
derive instance repGenericGetNamespaceResponse :: Generic GetNamespaceResponse _
instance showGetNamespaceResponse :: Show GetNamespaceResponse where
  show = genericShow
instance decodeGetNamespaceResponse :: Decode GetNamespaceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetNamespaceResponse :: Encode GetNamespaceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetNamespaceResponse from required parameters
newGetNamespaceResponse :: GetNamespaceResponse
newGetNamespaceResponse  = GetNamespaceResponse { "Namespace": (NullOrUndefined Nothing) }

-- | Constructs GetNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetNamespaceResponse' :: ( { "Namespace" :: NullOrUndefined.NullOrUndefined (Namespace) } -> {"Namespace" :: NullOrUndefined.NullOrUndefined (Namespace) } ) -> GetNamespaceResponse
newGetNamespaceResponse'  customize = (GetNamespaceResponse <<< customize) { "Namespace": (NullOrUndefined Nothing) }



newtype GetOperationRequest = GetOperationRequest 
  { "OperationId" :: (ResourceId)
  }
derive instance newtypeGetOperationRequest :: Newtype GetOperationRequest _
derive instance repGenericGetOperationRequest :: Generic GetOperationRequest _
instance showGetOperationRequest :: Show GetOperationRequest where
  show = genericShow
instance decodeGetOperationRequest :: Decode GetOperationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetOperationRequest :: Encode GetOperationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetOperationRequest from required parameters
newGetOperationRequest :: ResourceId -> GetOperationRequest
newGetOperationRequest _OperationId = GetOperationRequest { "OperationId": _OperationId }

-- | Constructs GetOperationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationRequest' :: ResourceId -> ( { "OperationId" :: (ResourceId) } -> {"OperationId" :: (ResourceId) } ) -> GetOperationRequest
newGetOperationRequest' _OperationId customize = (GetOperationRequest <<< customize) { "OperationId": _OperationId }



newtype GetOperationResponse = GetOperationResponse 
  { "Operation" :: NullOrUndefined.NullOrUndefined (Operation)
  }
derive instance newtypeGetOperationResponse :: Newtype GetOperationResponse _
derive instance repGenericGetOperationResponse :: Generic GetOperationResponse _
instance showGetOperationResponse :: Show GetOperationResponse where
  show = genericShow
instance decodeGetOperationResponse :: Decode GetOperationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetOperationResponse :: Encode GetOperationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetOperationResponse from required parameters
newGetOperationResponse :: GetOperationResponse
newGetOperationResponse  = GetOperationResponse { "Operation": (NullOrUndefined Nothing) }

-- | Constructs GetOperationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationResponse' :: ( { "Operation" :: NullOrUndefined.NullOrUndefined (Operation) } -> {"Operation" :: NullOrUndefined.NullOrUndefined (Operation) } ) -> GetOperationResponse
newGetOperationResponse'  customize = (GetOperationResponse <<< customize) { "Operation": (NullOrUndefined Nothing) }



newtype GetServiceRequest = GetServiceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetServiceRequest :: Newtype GetServiceRequest _
derive instance repGenericGetServiceRequest :: Generic GetServiceRequest _
instance showGetServiceRequest :: Show GetServiceRequest where
  show = genericShow
instance decodeGetServiceRequest :: Decode GetServiceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetServiceRequest :: Encode GetServiceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetServiceRequest from required parameters
newGetServiceRequest :: ResourceId -> GetServiceRequest
newGetServiceRequest _Id = GetServiceRequest { "Id": _Id }

-- | Constructs GetServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetServiceRequest
newGetServiceRequest' _Id customize = (GetServiceRequest <<< customize) { "Id": _Id }



newtype GetServiceResponse = GetServiceResponse 
  { "Service" :: NullOrUndefined.NullOrUndefined (Service)
  }
derive instance newtypeGetServiceResponse :: Newtype GetServiceResponse _
derive instance repGenericGetServiceResponse :: Generic GetServiceResponse _
instance showGetServiceResponse :: Show GetServiceResponse where
  show = genericShow
instance decodeGetServiceResponse :: Decode GetServiceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetServiceResponse :: Encode GetServiceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetServiceResponse from required parameters
newGetServiceResponse :: GetServiceResponse
newGetServiceResponse  = GetServiceResponse { "Service": (NullOrUndefined Nothing) }

-- | Constructs GetServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceResponse' :: ( { "Service" :: NullOrUndefined.NullOrUndefined (Service) } -> {"Service" :: NullOrUndefined.NullOrUndefined (Service) } ) -> GetServiceResponse
newGetServiceResponse'  customize = (GetServiceResponse <<< customize) { "Service": (NullOrUndefined Nothing) }



-- | <p> <i>Public DNS namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, Amazon Route 53 associates the health check with all the records that you specify in <code>DnsConfig</code>.</p> <p> <b>A and AAAA records</b> </p> <p>If <code>DnsConfig</code> includes configurations for both A and AAAA records, Route 53 creates a health check that uses the IPv4 address to check the health of the resource. If the endpoint that is specified by the IPv4 address is unhealthy, Route 53 considers both the A and AAAA records to be unhealthy. </p> <p> <b>CNAME records</b> </p> <p>You can't specify settings for <code>HealthCheckConfig</code> when the <code>DNSConfig</code> includes <code>CNAME</code> for the value of <code>Type</code>. If you do, the <code>CreateService</code> request will fail with an <code>InvalidInput</code> error.</p> <p> <b>Request interval</b> </p> <p>The health check uses 30 seconds as the request interval. This is the number of seconds between the time that each Route 53 health checker gets a response from your endpoint and the time that it sends the next health check request. A health checker in each data center around the world sends your endpoint a health check request every 30 seconds. On average, your endpoint receives a health check request about every two seconds. Health checkers in different data centers don't coordinate with one another, so you'll sometimes see several requests per second followed by a few seconds with no health checks at all.</p> <p> <b>Health checking regions</b> </p> <p>Health checkers perform checks from all Route 53 health-checking regions. For a list of the current regions, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a>.</p> <p> <b>Alias records</b> </p> <p>When you register an instance, if you include the <code>AWS_ALIAS_DNS_NAME</code> attribute, Route 53 creates an alias record. Note the following:</p> <ul> <li> <p>Route 53 automatically sets <code>EvaluateTargetHealth</code> to true for alias records. When <code>EvaluateTargetHealth</code> is true, the alias record inherits the health of the referenced AWS resource. such as an ELB load balancer. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth">EvaluateTargetHealth</a>.</p> </li> <li> <p>If you include <code>HealthCheckConfig</code> and then use the service to register an instance that creates an alias record, Route 53 doesn't create the health check.</p> </li> </ul> <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing">Route 53 Pricing</a>.</p>
newtype HealthCheckConfig = HealthCheckConfig 
  { "Type" :: (HealthCheckType)
  , "ResourcePath" :: NullOrUndefined.NullOrUndefined (ResourcePath)
  , "FailureThreshold" :: NullOrUndefined.NullOrUndefined (FailureThreshold)
  }
derive instance newtypeHealthCheckConfig :: Newtype HealthCheckConfig _
derive instance repGenericHealthCheckConfig :: Generic HealthCheckConfig _
instance showHealthCheckConfig :: Show HealthCheckConfig where
  show = genericShow
instance decodeHealthCheckConfig :: Decode HealthCheckConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHealthCheckConfig :: Encode HealthCheckConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HealthCheckConfig from required parameters
newHealthCheckConfig :: HealthCheckType -> HealthCheckConfig
newHealthCheckConfig _Type = HealthCheckConfig { "Type": _Type, "FailureThreshold": (NullOrUndefined Nothing), "ResourcePath": (NullOrUndefined Nothing) }

-- | Constructs HealthCheckConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckConfig' :: HealthCheckType -> ( { "Type" :: (HealthCheckType) , "ResourcePath" :: NullOrUndefined.NullOrUndefined (ResourcePath) , "FailureThreshold" :: NullOrUndefined.NullOrUndefined (FailureThreshold) } -> {"Type" :: (HealthCheckType) , "ResourcePath" :: NullOrUndefined.NullOrUndefined (ResourcePath) , "FailureThreshold" :: NullOrUndefined.NullOrUndefined (FailureThreshold) } ) -> HealthCheckConfig
newHealthCheckConfig' _Type customize = (HealthCheckConfig <<< customize) { "Type": _Type, "FailureThreshold": (NullOrUndefined Nothing), "ResourcePath": (NullOrUndefined Nothing) }



newtype HealthCheckType = HealthCheckType String
derive instance newtypeHealthCheckType :: Newtype HealthCheckType _
derive instance repGenericHealthCheckType :: Generic HealthCheckType _
instance showHealthCheckType :: Show HealthCheckType where
  show = genericShow
instance decodeHealthCheckType :: Decode HealthCheckType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHealthCheckType :: Encode HealthCheckType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HealthStatus = HealthStatus String
derive instance newtypeHealthStatus :: Newtype HealthStatus _
derive instance repGenericHealthStatus :: Generic HealthStatus _
instance showHealthStatus :: Show HealthStatus where
  show = genericShow
instance decodeHealthStatus :: Decode HealthStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHealthStatus :: Encode HealthStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about an instance that Amazon Route 53 creates when you submit a <code>RegisterInstance</code> request.</p>
newtype Instance = Instance 
  { "Id" :: (ResourceId)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (Attributes)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where
  show = genericShow
instance decodeInstance :: Decode Instance where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstance :: Encode Instance where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Instance from required parameters
newInstance :: ResourceId -> Instance
newInstance _Id = Instance { "Id": _Id, "Attributes": (NullOrUndefined Nothing), "CreatorRequestId": (NullOrUndefined Nothing) }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ResourceId -> ( { "Id" :: (ResourceId) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Attributes" :: NullOrUndefined.NullOrUndefined (Attributes) } -> {"Id" :: (ResourceId) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Attributes" :: NullOrUndefined.NullOrUndefined (Attributes) } ) -> Instance
newInstance' _Id customize = (Instance <<< customize) { "Id": _Id, "Attributes": (NullOrUndefined Nothing), "CreatorRequestId": (NullOrUndefined Nothing) }



newtype InstanceHealthStatusMap = InstanceHealthStatusMap (StrMap.StrMap HealthStatus)
derive instance newtypeInstanceHealthStatusMap :: Newtype InstanceHealthStatusMap _
derive instance repGenericInstanceHealthStatusMap :: Generic InstanceHealthStatusMap _
instance showInstanceHealthStatusMap :: Show InstanceHealthStatusMap where
  show = genericShow
instance decodeInstanceHealthStatusMap :: Decode InstanceHealthStatusMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceHealthStatusMap :: Encode InstanceHealthStatusMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceIdList = InstanceIdList (Array ResourceId)
derive instance newtypeInstanceIdList :: Newtype InstanceIdList _
derive instance repGenericInstanceIdList :: Generic InstanceIdList _
instance showInstanceIdList :: Show InstanceIdList where
  show = genericShow
instance decodeInstanceIdList :: Decode InstanceIdList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceIdList :: Encode InstanceIdList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.</p>
newtype InstanceNotFound = InstanceNotFound 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInstanceNotFound :: Newtype InstanceNotFound _
derive instance repGenericInstanceNotFound :: Generic InstanceNotFound _
instance showInstanceNotFound :: Show InstanceNotFound where
  show = genericShow
instance decodeInstanceNotFound :: Decode InstanceNotFound where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceNotFound :: Encode InstanceNotFound where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceNotFound from required parameters
newInstanceNotFound :: InstanceNotFound
newInstanceNotFound  = InstanceNotFound { "Message": (NullOrUndefined Nothing) }

-- | Constructs InstanceNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceNotFound' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InstanceNotFound
newInstanceNotFound'  customize = (InstanceNotFound <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A complex type that contains information about the instances that you registered by using a specified service.</p>
newtype InstanceSummary = InstanceSummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Attributes" :: NullOrUndefined.NullOrUndefined (Attributes)
  }
derive instance newtypeInstanceSummary :: Newtype InstanceSummary _
derive instance repGenericInstanceSummary :: Generic InstanceSummary _
instance showInstanceSummary :: Show InstanceSummary where
  show = genericShow
instance decodeInstanceSummary :: Decode InstanceSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceSummary :: Encode InstanceSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceSummary from required parameters
newInstanceSummary :: InstanceSummary
newInstanceSummary  = InstanceSummary { "Attributes": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs InstanceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceSummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Attributes" :: NullOrUndefined.NullOrUndefined (Attributes) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Attributes" :: NullOrUndefined.NullOrUndefined (Attributes) } ) -> InstanceSummary
newInstanceSummary'  customize = (InstanceSummary <<< customize) { "Attributes": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



newtype InstanceSummaryList = InstanceSummaryList (Array InstanceSummary)
derive instance newtypeInstanceSummaryList :: Newtype InstanceSummaryList _
derive instance repGenericInstanceSummaryList :: Generic InstanceSummaryList _
instance showInstanceSummaryList :: Show InstanceSummaryList where
  show = genericShow
instance decodeInstanceSummaryList :: Decode InstanceSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceSummaryList :: Encode InstanceSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>One or more specified values aren't valid. For example, when you're creating a namespace, the value of <code>Name</code> might not be a valid DNS name.</p>
newtype InvalidInput = InvalidInput 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidInput :: Newtype InvalidInput _
derive instance repGenericInvalidInput :: Generic InvalidInput _
instance showInvalidInput :: Show InvalidInput where
  show = genericShow
instance decodeInvalidInput :: Decode InvalidInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInput :: Encode InvalidInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidInput from required parameters
newInvalidInput :: InvalidInput
newInvalidInput  = InvalidInput { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInput' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidInput
newInvalidInput'  customize = (InvalidInput <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ListInstancesRequest = ListInstancesRequest 
  { "ServiceId" :: (ResourceId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListInstancesRequest :: Newtype ListInstancesRequest _
derive instance repGenericListInstancesRequest :: Generic ListInstancesRequest _
instance showListInstancesRequest :: Show ListInstancesRequest where
  show = genericShow
instance decodeListInstancesRequest :: Decode ListInstancesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstancesRequest :: Encode ListInstancesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstancesRequest from required parameters
newListInstancesRequest :: ResourceId -> ListInstancesRequest
newListInstancesRequest _ServiceId = ListInstancesRequest { "ServiceId": _ServiceId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesRequest' :: ResourceId -> ( { "ServiceId" :: (ResourceId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"ServiceId" :: (ResourceId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListInstancesRequest
newListInstancesRequest' _ServiceId customize = (ListInstancesRequest <<< customize) { "ServiceId": _ServiceId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListInstancesResponse = ListInstancesResponse 
  { "Instances" :: NullOrUndefined.NullOrUndefined (InstanceSummaryList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListInstancesResponse :: Newtype ListInstancesResponse _
derive instance repGenericListInstancesResponse :: Generic ListInstancesResponse _
instance showListInstancesResponse :: Show ListInstancesResponse where
  show = genericShow
instance decodeListInstancesResponse :: Decode ListInstancesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstancesResponse :: Encode ListInstancesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstancesResponse from required parameters
newListInstancesResponse :: ListInstancesResponse
newListInstancesResponse  = ListInstancesResponse { "Instances": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesResponse' :: ( { "Instances" :: NullOrUndefined.NullOrUndefined (InstanceSummaryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Instances" :: NullOrUndefined.NullOrUndefined (InstanceSummaryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListInstancesResponse
newListInstancesResponse'  customize = (ListInstancesResponse <<< customize) { "Instances": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListNamespacesRequest = ListNamespacesRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "Filters" :: NullOrUndefined.NullOrUndefined (NamespaceFilters)
  }
derive instance newtypeListNamespacesRequest :: Newtype ListNamespacesRequest _
derive instance repGenericListNamespacesRequest :: Generic ListNamespacesRequest _
instance showListNamespacesRequest :: Show ListNamespacesRequest where
  show = genericShow
instance decodeListNamespacesRequest :: Decode ListNamespacesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListNamespacesRequest :: Encode ListNamespacesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListNamespacesRequest from required parameters
newListNamespacesRequest :: ListNamespacesRequest
newListNamespacesRequest  = ListNamespacesRequest { "Filters": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListNamespacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListNamespacesRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "Filters" :: NullOrUndefined.NullOrUndefined (NamespaceFilters) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "Filters" :: NullOrUndefined.NullOrUndefined (NamespaceFilters) } ) -> ListNamespacesRequest
newListNamespacesRequest'  customize = (ListNamespacesRequest <<< customize) { "Filters": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListNamespacesResponse = ListNamespacesResponse 
  { "Namespaces" :: NullOrUndefined.NullOrUndefined (NamespaceSummariesList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListNamespacesResponse :: Newtype ListNamespacesResponse _
derive instance repGenericListNamespacesResponse :: Generic ListNamespacesResponse _
instance showListNamespacesResponse :: Show ListNamespacesResponse where
  show = genericShow
instance decodeListNamespacesResponse :: Decode ListNamespacesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListNamespacesResponse :: Encode ListNamespacesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListNamespacesResponse from required parameters
newListNamespacesResponse :: ListNamespacesResponse
newListNamespacesResponse  = ListNamespacesResponse { "Namespaces": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListNamespacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListNamespacesResponse' :: ( { "Namespaces" :: NullOrUndefined.NullOrUndefined (NamespaceSummariesList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Namespaces" :: NullOrUndefined.NullOrUndefined (NamespaceSummariesList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListNamespacesResponse
newListNamespacesResponse'  customize = (ListNamespacesResponse <<< customize) { "Namespaces": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOperationsRequest = ListOperationsRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "Filters" :: NullOrUndefined.NullOrUndefined (OperationFilters)
  }
derive instance newtypeListOperationsRequest :: Newtype ListOperationsRequest _
derive instance repGenericListOperationsRequest :: Generic ListOperationsRequest _
instance showListOperationsRequest :: Show ListOperationsRequest where
  show = genericShow
instance decodeListOperationsRequest :: Decode ListOperationsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOperationsRequest :: Encode ListOperationsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOperationsRequest from required parameters
newListOperationsRequest :: ListOperationsRequest
newListOperationsRequest  = ListOperationsRequest { "Filters": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListOperationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "Filters" :: NullOrUndefined.NullOrUndefined (OperationFilters) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "Filters" :: NullOrUndefined.NullOrUndefined (OperationFilters) } ) -> ListOperationsRequest
newListOperationsRequest'  customize = (ListOperationsRequest <<< customize) { "Filters": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOperationsResponse = ListOperationsResponse 
  { "Operations" :: NullOrUndefined.NullOrUndefined (OperationSummaryList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListOperationsResponse :: Newtype ListOperationsResponse _
derive instance repGenericListOperationsResponse :: Generic ListOperationsResponse _
instance showListOperationsResponse :: Show ListOperationsResponse where
  show = genericShow
instance decodeListOperationsResponse :: Decode ListOperationsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOperationsResponse :: Encode ListOperationsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOperationsResponse from required parameters
newListOperationsResponse :: ListOperationsResponse
newListOperationsResponse  = ListOperationsResponse { "NextToken": (NullOrUndefined Nothing), "Operations": (NullOrUndefined Nothing) }

-- | Constructs ListOperationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsResponse' :: ( { "Operations" :: NullOrUndefined.NullOrUndefined (OperationSummaryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Operations" :: NullOrUndefined.NullOrUndefined (OperationSummaryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListOperationsResponse
newListOperationsResponse'  customize = (ListOperationsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Operations": (NullOrUndefined Nothing) }



newtype ListServicesRequest = ListServicesRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "Filters" :: NullOrUndefined.NullOrUndefined (ServiceFilters)
  }
derive instance newtypeListServicesRequest :: Newtype ListServicesRequest _
derive instance repGenericListServicesRequest :: Generic ListServicesRequest _
instance showListServicesRequest :: Show ListServicesRequest where
  show = genericShow
instance decodeListServicesRequest :: Decode ListServicesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListServicesRequest :: Encode ListServicesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListServicesRequest from required parameters
newListServicesRequest :: ListServicesRequest
newListServicesRequest  = ListServicesRequest { "Filters": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "Filters" :: NullOrUndefined.NullOrUndefined (ServiceFilters) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "Filters" :: NullOrUndefined.NullOrUndefined (ServiceFilters) } ) -> ListServicesRequest
newListServicesRequest'  customize = (ListServicesRequest <<< customize) { "Filters": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListServicesResponse = ListServicesResponse 
  { "Services" :: NullOrUndefined.NullOrUndefined (ServiceSummariesList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListServicesResponse :: Newtype ListServicesResponse _
derive instance repGenericListServicesResponse :: Generic ListServicesResponse _
instance showListServicesResponse :: Show ListServicesResponse where
  show = genericShow
instance decodeListServicesResponse :: Decode ListServicesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListServicesResponse :: Encode ListServicesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListServicesResponse from required parameters
newListServicesResponse :: ListServicesResponse
newListServicesResponse  = ListServicesResponse { "NextToken": (NullOrUndefined Nothing), "Services": (NullOrUndefined Nothing) }

-- | Constructs ListServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesResponse' :: ( { "Services" :: NullOrUndefined.NullOrUndefined (ServiceSummariesList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Services" :: NullOrUndefined.NullOrUndefined (ServiceSummariesList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListServicesResponse
newListServicesResponse'  customize = (ListServicesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Services": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where
  show = genericShow
instance decodeMessage :: Decode Message where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMessage :: Encode Message where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about a specified namespace.</p>
newtype Namespace = Namespace 
  { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (Arn)
  , "Name" :: NullOrUndefined.NullOrUndefined (NamespaceName)
  , "Type" :: NullOrUndefined.NullOrUndefined (NamespaceType)
  , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  , "ServiceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount)
  , "Properties" :: NullOrUndefined.NullOrUndefined (NamespaceProperties)
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  }
derive instance newtypeNamespace :: Newtype Namespace _
derive instance repGenericNamespace :: Generic Namespace _
instance showNamespace :: Show Namespace where
  show = genericShow
instance decodeNamespace :: Decode Namespace where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespace :: Encode Namespace where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Namespace from required parameters
newNamespace :: Namespace
newNamespace  = Namespace { "Arn": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing), "ServiceCount": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Namespace's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespace' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (NamespaceName) , "Type" :: NullOrUndefined.NullOrUndefined (NamespaceType) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "ServiceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount) , "Properties" :: NullOrUndefined.NullOrUndefined (NamespaceProperties) , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (NamespaceName) , "Type" :: NullOrUndefined.NullOrUndefined (NamespaceType) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "ServiceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount) , "Properties" :: NullOrUndefined.NullOrUndefined (NamespaceProperties) , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) } ) -> Namespace
newNamespace'  customize = (Namespace <<< customize) { "Arn": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing), "ServiceCount": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | <p>The namespace that you're trying to create already exists.</p>
newtype NamespaceAlreadyExists = NamespaceAlreadyExists 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "NamespaceId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  }
derive instance newtypeNamespaceAlreadyExists :: Newtype NamespaceAlreadyExists _
derive instance repGenericNamespaceAlreadyExists :: Generic NamespaceAlreadyExists _
instance showNamespaceAlreadyExists :: Show NamespaceAlreadyExists where
  show = genericShow
instance decodeNamespaceAlreadyExists :: Decode NamespaceAlreadyExists where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceAlreadyExists :: Encode NamespaceAlreadyExists where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NamespaceAlreadyExists from required parameters
newNamespaceAlreadyExists :: NamespaceAlreadyExists
newNamespaceAlreadyExists  = NamespaceAlreadyExists { "CreatorRequestId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "NamespaceId": (NullOrUndefined Nothing) }

-- | Constructs NamespaceAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceAlreadyExists' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "NamespaceId" :: NullOrUndefined.NullOrUndefined (ResourceId) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "NamespaceId" :: NullOrUndefined.NullOrUndefined (ResourceId) } ) -> NamespaceAlreadyExists
newNamespaceAlreadyExists'  customize = (NamespaceAlreadyExists <<< customize) { "CreatorRequestId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "NamespaceId": (NullOrUndefined Nothing) }



-- | <p>A complex type that identifies the namespaces that you want to list. You can choose to list public or private namespaces.</p>
newtype NamespaceFilter = NamespaceFilter 
  { "Name" :: (NamespaceFilterName)
  , "Values" :: (FilterValues)
  , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition)
  }
derive instance newtypeNamespaceFilter :: Newtype NamespaceFilter _
derive instance repGenericNamespaceFilter :: Generic NamespaceFilter _
instance showNamespaceFilter :: Show NamespaceFilter where
  show = genericShow
instance decodeNamespaceFilter :: Decode NamespaceFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceFilter :: Encode NamespaceFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NamespaceFilter from required parameters
newNamespaceFilter :: NamespaceFilterName -> FilterValues -> NamespaceFilter
newNamespaceFilter _Name _Values = NamespaceFilter { "Name": _Name, "Values": _Values, "Condition": (NullOrUndefined Nothing) }

-- | Constructs NamespaceFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceFilter' :: NamespaceFilterName -> FilterValues -> ( { "Name" :: (NamespaceFilterName) , "Values" :: (FilterValues) , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition) } -> {"Name" :: (NamespaceFilterName) , "Values" :: (FilterValues) , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition) } ) -> NamespaceFilter
newNamespaceFilter' _Name _Values customize = (NamespaceFilter <<< customize) { "Name": _Name, "Values": _Values, "Condition": (NullOrUndefined Nothing) }



newtype NamespaceFilterName = NamespaceFilterName String
derive instance newtypeNamespaceFilterName :: Newtype NamespaceFilterName _
derive instance repGenericNamespaceFilterName :: Generic NamespaceFilterName _
instance showNamespaceFilterName :: Show NamespaceFilterName where
  show = genericShow
instance decodeNamespaceFilterName :: Decode NamespaceFilterName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceFilterName :: Encode NamespaceFilterName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NamespaceFilters = NamespaceFilters (Array NamespaceFilter)
derive instance newtypeNamespaceFilters :: Newtype NamespaceFilters _
derive instance repGenericNamespaceFilters :: Generic NamespaceFilters _
instance showNamespaceFilters :: Show NamespaceFilters where
  show = genericShow
instance decodeNamespaceFilters :: Decode NamespaceFilters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceFilters :: Encode NamespaceFilters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NamespaceName = NamespaceName String
derive instance newtypeNamespaceName :: Newtype NamespaceName _
derive instance repGenericNamespaceName :: Generic NamespaceName _
instance showNamespaceName :: Show NamespaceName where
  show = genericShow
instance decodeNamespaceName :: Decode NamespaceName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceName :: Encode NamespaceName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>No namespace exists with the specified ID.</p>
newtype NamespaceNotFound = NamespaceNotFound 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeNamespaceNotFound :: Newtype NamespaceNotFound _
derive instance repGenericNamespaceNotFound :: Generic NamespaceNotFound _
instance showNamespaceNotFound :: Show NamespaceNotFound where
  show = genericShow
instance decodeNamespaceNotFound :: Decode NamespaceNotFound where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceNotFound :: Encode NamespaceNotFound where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NamespaceNotFound from required parameters
newNamespaceNotFound :: NamespaceNotFound
newNamespaceNotFound  = NamespaceNotFound { "Message": (NullOrUndefined Nothing) }

-- | Constructs NamespaceNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceNotFound' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> NamespaceNotFound
newNamespaceNotFound'  customize = (NamespaceNotFound <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A complex type that contains information that is specific to the namespace type.</p>
newtype NamespaceProperties = NamespaceProperties 
  { "DnsProperties" :: NullOrUndefined.NullOrUndefined (DnsProperties)
  }
derive instance newtypeNamespaceProperties :: Newtype NamespaceProperties _
derive instance repGenericNamespaceProperties :: Generic NamespaceProperties _
instance showNamespaceProperties :: Show NamespaceProperties where
  show = genericShow
instance decodeNamespaceProperties :: Decode NamespaceProperties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceProperties :: Encode NamespaceProperties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NamespaceProperties from required parameters
newNamespaceProperties :: NamespaceProperties
newNamespaceProperties  = NamespaceProperties { "DnsProperties": (NullOrUndefined Nothing) }

-- | Constructs NamespaceProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceProperties' :: ( { "DnsProperties" :: NullOrUndefined.NullOrUndefined (DnsProperties) } -> {"DnsProperties" :: NullOrUndefined.NullOrUndefined (DnsProperties) } ) -> NamespaceProperties
newNamespaceProperties'  customize = (NamespaceProperties <<< customize) { "DnsProperties": (NullOrUndefined Nothing) }



newtype NamespaceSummariesList = NamespaceSummariesList (Array NamespaceSummary)
derive instance newtypeNamespaceSummariesList :: Newtype NamespaceSummariesList _
derive instance repGenericNamespaceSummariesList :: Generic NamespaceSummariesList _
instance showNamespaceSummariesList :: Show NamespaceSummariesList where
  show = genericShow
instance decodeNamespaceSummariesList :: Decode NamespaceSummariesList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceSummariesList :: Encode NamespaceSummariesList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about a namespace.</p>
newtype NamespaceSummary = NamespaceSummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (Arn)
  , "Name" :: NullOrUndefined.NullOrUndefined (NamespaceName)
  , "Type" :: NullOrUndefined.NullOrUndefined (NamespaceType)
  }
derive instance newtypeNamespaceSummary :: Newtype NamespaceSummary _
derive instance repGenericNamespaceSummary :: Generic NamespaceSummary _
instance showNamespaceSummary :: Show NamespaceSummary where
  show = genericShow
instance decodeNamespaceSummary :: Decode NamespaceSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceSummary :: Encode NamespaceSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NamespaceSummary from required parameters
newNamespaceSummary :: NamespaceSummary
newNamespaceSummary  = NamespaceSummary { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs NamespaceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceSummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (NamespaceName) , "Type" :: NullOrUndefined.NullOrUndefined (NamespaceType) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (NamespaceName) , "Type" :: NullOrUndefined.NullOrUndefined (NamespaceType) } ) -> NamespaceSummary
newNamespaceSummary'  customize = (NamespaceSummary <<< customize) { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype NamespaceType = NamespaceType String
derive instance newtypeNamespaceType :: Newtype NamespaceType _
derive instance repGenericNamespaceType :: Generic NamespaceType _
instance showNamespaceType :: Show NamespaceType where
  show = genericShow
instance decodeNamespaceType :: Decode NamespaceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNamespaceType :: Encode NamespaceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about a specified operation.</p>
newtype Operation = Operation 
  { "Id" :: NullOrUndefined.NullOrUndefined (OperationId)
  , "Type" :: NullOrUndefined.NullOrUndefined (OperationType)
  , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus)
  , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (Message)
  , "ErrorCode" :: NullOrUndefined.NullOrUndefined (Code)
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "UpdateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Targets" :: NullOrUndefined.NullOrUndefined (OperationTargetsMap)
  }
derive instance newtypeOperation :: Newtype Operation _
derive instance repGenericOperation :: Generic Operation _
instance showOperation :: Show Operation where
  show = genericShow
instance decodeOperation :: Decode Operation where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperation :: Encode Operation where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Operation from required parameters
newOperation :: Operation
newOperation  = Operation { "CreateDate": (NullOrUndefined Nothing), "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Targets": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "UpdateDate": (NullOrUndefined Nothing) }

-- | Constructs Operation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperation' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (OperationId) , "Type" :: NullOrUndefined.NullOrUndefined (OperationType) , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (Message) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (Code) , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "UpdateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Targets" :: NullOrUndefined.NullOrUndefined (OperationTargetsMap) } -> {"Id" :: NullOrUndefined.NullOrUndefined (OperationId) , "Type" :: NullOrUndefined.NullOrUndefined (OperationType) , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus) , "ErrorMessage" :: NullOrUndefined.NullOrUndefined (Message) , "ErrorCode" :: NullOrUndefined.NullOrUndefined (Code) , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "UpdateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Targets" :: NullOrUndefined.NullOrUndefined (OperationTargetsMap) } ) -> Operation
newOperation'  customize = (Operation <<< customize) { "CreateDate": (NullOrUndefined Nothing), "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Targets": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "UpdateDate": (NullOrUndefined Nothing) }



-- | <p>A complex type that lets you select the operations that you want to list.</p>
newtype OperationFilter = OperationFilter 
  { "Name" :: (OperationFilterName)
  , "Values" :: (FilterValues)
  , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition)
  }
derive instance newtypeOperationFilter :: Newtype OperationFilter _
derive instance repGenericOperationFilter :: Generic OperationFilter _
instance showOperationFilter :: Show OperationFilter where
  show = genericShow
instance decodeOperationFilter :: Decode OperationFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationFilter :: Encode OperationFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OperationFilter from required parameters
newOperationFilter :: OperationFilterName -> FilterValues -> OperationFilter
newOperationFilter _Name _Values = OperationFilter { "Name": _Name, "Values": _Values, "Condition": (NullOrUndefined Nothing) }

-- | Constructs OperationFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationFilter' :: OperationFilterName -> FilterValues -> ( { "Name" :: (OperationFilterName) , "Values" :: (FilterValues) , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition) } -> {"Name" :: (OperationFilterName) , "Values" :: (FilterValues) , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition) } ) -> OperationFilter
newOperationFilter' _Name _Values customize = (OperationFilter <<< customize) { "Name": _Name, "Values": _Values, "Condition": (NullOrUndefined Nothing) }



newtype OperationFilterName = OperationFilterName String
derive instance newtypeOperationFilterName :: Newtype OperationFilterName _
derive instance repGenericOperationFilterName :: Generic OperationFilterName _
instance showOperationFilterName :: Show OperationFilterName where
  show = genericShow
instance decodeOperationFilterName :: Decode OperationFilterName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationFilterName :: Encode OperationFilterName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationFilters = OperationFilters (Array OperationFilter)
derive instance newtypeOperationFilters :: Newtype OperationFilters _
derive instance repGenericOperationFilters :: Generic OperationFilters _
instance showOperationFilters :: Show OperationFilters where
  show = genericShow
instance decodeOperationFilters :: Decode OperationFilters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationFilters :: Encode OperationFilters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationId = OperationId String
derive instance newtypeOperationId :: Newtype OperationId _
derive instance repGenericOperationId :: Generic OperationId _
instance showOperationId :: Show OperationId where
  show = genericShow
instance decodeOperationId :: Decode OperationId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationId :: Encode OperationId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>No operation exists with the specified ID.</p>
newtype OperationNotFound = OperationNotFound 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeOperationNotFound :: Newtype OperationNotFound _
derive instance repGenericOperationNotFound :: Generic OperationNotFound _
instance showOperationNotFound :: Show OperationNotFound where
  show = genericShow
instance decodeOperationNotFound :: Decode OperationNotFound where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationNotFound :: Encode OperationNotFound where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OperationNotFound from required parameters
newOperationNotFound :: OperationNotFound
newOperationNotFound  = OperationNotFound { "Message": (NullOrUndefined Nothing) }

-- | Constructs OperationNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationNotFound' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> OperationNotFound
newOperationNotFound'  customize = (OperationNotFound <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype OperationStatus = OperationStatus String
derive instance newtypeOperationStatus :: Newtype OperationStatus _
derive instance repGenericOperationStatus :: Generic OperationStatus _
instance showOperationStatus :: Show OperationStatus where
  show = genericShow
instance decodeOperationStatus :: Decode OperationStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationStatus :: Encode OperationStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about an operation that matches the criteria that you specified in a <a>ListOperations</a> request.</p>
newtype OperationSummary = OperationSummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (OperationId)
  , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus)
  }
derive instance newtypeOperationSummary :: Newtype OperationSummary _
derive instance repGenericOperationSummary :: Generic OperationSummary _
instance showOperationSummary :: Show OperationSummary where
  show = genericShow
instance decodeOperationSummary :: Decode OperationSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationSummary :: Encode OperationSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OperationSummary from required parameters
newOperationSummary :: OperationSummary
newOperationSummary  = OperationSummary { "Id": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs OperationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationSummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (OperationId) , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus) } -> {"Id" :: NullOrUndefined.NullOrUndefined (OperationId) , "Status" :: NullOrUndefined.NullOrUndefined (OperationStatus) } ) -> OperationSummary
newOperationSummary'  customize = (OperationSummary <<< customize) { "Id": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype OperationSummaryList = OperationSummaryList (Array OperationSummary)
derive instance newtypeOperationSummaryList :: Newtype OperationSummaryList _
derive instance repGenericOperationSummaryList :: Generic OperationSummaryList _
instance showOperationSummaryList :: Show OperationSummaryList where
  show = genericShow
instance decodeOperationSummaryList :: Decode OperationSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationSummaryList :: Encode OperationSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationTargetType = OperationTargetType String
derive instance newtypeOperationTargetType :: Newtype OperationTargetType _
derive instance repGenericOperationTargetType :: Generic OperationTargetType _
instance showOperationTargetType :: Show OperationTargetType where
  show = genericShow
instance decodeOperationTargetType :: Decode OperationTargetType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationTargetType :: Encode OperationTargetType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationTargetsMap = OperationTargetsMap (StrMap.StrMap ResourceId)
derive instance newtypeOperationTargetsMap :: Newtype OperationTargetsMap _
derive instance repGenericOperationTargetsMap :: Generic OperationTargetsMap _
instance showOperationTargetsMap :: Show OperationTargetsMap where
  show = genericShow
instance decodeOperationTargetsMap :: Decode OperationTargetsMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationTargetsMap :: Encode OperationTargetsMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OperationType = OperationType String
derive instance newtypeOperationType :: Newtype OperationType _
derive instance repGenericOperationType :: Generic OperationType _
instance showOperationType :: Show OperationType where
  show = genericShow
instance decodeOperationType :: Decode OperationType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOperationType :: Encode OperationType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RecordTTL = RecordTTL Number
derive instance newtypeRecordTTL :: Newtype RecordTTL _
derive instance repGenericRecordTTL :: Generic RecordTTL _
instance showRecordTTL :: Show RecordTTL where
  show = genericShow
instance decodeRecordTTL :: Decode RecordTTL where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRecordTTL :: Encode RecordTTL where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RecordType = RecordType String
derive instance newtypeRecordType :: Newtype RecordType _
derive instance repGenericRecordType :: Generic RecordType _
instance showRecordType :: Show RecordType where
  show = genericShow
instance decodeRecordType :: Decode RecordType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRecordType :: Encode RecordType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RegisterInstanceRequest = RegisterInstanceRequest 
  { "ServiceId" :: (ResourceId)
  , "InstanceId" :: (ResourceId)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Attributes" :: (Attributes)
  }
derive instance newtypeRegisterInstanceRequest :: Newtype RegisterInstanceRequest _
derive instance repGenericRegisterInstanceRequest :: Generic RegisterInstanceRequest _
instance showRegisterInstanceRequest :: Show RegisterInstanceRequest where
  show = genericShow
instance decodeRegisterInstanceRequest :: Decode RegisterInstanceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterInstanceRequest :: Encode RegisterInstanceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterInstanceRequest from required parameters
newRegisterInstanceRequest :: Attributes -> ResourceId -> ResourceId -> RegisterInstanceRequest
newRegisterInstanceRequest _Attributes _InstanceId _ServiceId = RegisterInstanceRequest { "Attributes": _Attributes, "InstanceId": _InstanceId, "ServiceId": _ServiceId, "CreatorRequestId": (NullOrUndefined Nothing) }

-- | Constructs RegisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceRequest' :: Attributes -> ResourceId -> ResourceId -> ( { "ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Attributes" :: (Attributes) } -> {"ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Attributes" :: (Attributes) } ) -> RegisterInstanceRequest
newRegisterInstanceRequest' _Attributes _InstanceId _ServiceId customize = (RegisterInstanceRequest <<< customize) { "Attributes": _Attributes, "InstanceId": _InstanceId, "ServiceId": _ServiceId, "CreatorRequestId": (NullOrUndefined Nothing) }



newtype RegisterInstanceResponse = RegisterInstanceResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  }
derive instance newtypeRegisterInstanceResponse :: Newtype RegisterInstanceResponse _
derive instance repGenericRegisterInstanceResponse :: Generic RegisterInstanceResponse _
instance showRegisterInstanceResponse :: Show RegisterInstanceResponse where
  show = genericShow
instance decodeRegisterInstanceResponse :: Decode RegisterInstanceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRegisterInstanceResponse :: Encode RegisterInstanceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RegisterInstanceResponse from required parameters
newRegisterInstanceResponse :: RegisterInstanceResponse
newRegisterInstanceResponse  = RegisterInstanceResponse { "OperationId": (NullOrUndefined Nothing) }

-- | Constructs RegisterInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } ) -> RegisterInstanceResponse
newRegisterInstanceResponse'  customize = (RegisterInstanceResponse <<< customize) { "OperationId": (NullOrUndefined Nothing) }



newtype ResourceCount = ResourceCount Int
derive instance newtypeResourceCount :: Newtype ResourceCount _
derive instance repGenericResourceCount :: Generic ResourceCount _
instance showResourceCount :: Show ResourceCount where
  show = genericShow
instance decodeResourceCount :: Decode ResourceCount where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceCount :: Encode ResourceCount where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceDescription = ResourceDescription String
derive instance newtypeResourceDescription :: Newtype ResourceDescription _
derive instance repGenericResourceDescription :: Generic ResourceDescription _
instance showResourceDescription :: Show ResourceDescription where
  show = genericShow
instance decodeResourceDescription :: Decode ResourceDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceDescription :: Encode ResourceDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where
  show = genericShow
instance decodeResourceId :: Decode ResourceId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceId :: Encode ResourceId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.</p>
newtype ResourceInUse = ResourceInUse 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceInUse :: Newtype ResourceInUse _
derive instance repGenericResourceInUse :: Generic ResourceInUse _
instance showResourceInUse :: Show ResourceInUse where
  show = genericShow
instance decodeResourceInUse :: Decode ResourceInUse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceInUse :: Encode ResourceInUse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceInUse from required parameters
newResourceInUse :: ResourceInUse
newResourceInUse  = ResourceInUse { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceInUse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceInUse' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceInUse
newResourceInUse'  customize = (ResourceInUse <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The resource can't be created because you've reached the limit on the number of resources.</p>
newtype ResourceLimitExceeded = ResourceLimitExceeded 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceLimitExceeded :: Newtype ResourceLimitExceeded _
derive instance repGenericResourceLimitExceeded :: Generic ResourceLimitExceeded _
instance showResourceLimitExceeded :: Show ResourceLimitExceeded where
  show = genericShow
instance decodeResourceLimitExceeded :: Decode ResourceLimitExceeded where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceLimitExceeded :: Encode ResourceLimitExceeded where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceLimitExceeded from required parameters
newResourceLimitExceeded :: ResourceLimitExceeded
newResourceLimitExceeded  = ResourceLimitExceeded { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceLimitExceeded' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceLimitExceeded
newResourceLimitExceeded'  customize = (ResourceLimitExceeded <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ResourcePath = ResourcePath String
derive instance newtypeResourcePath :: Newtype ResourcePath _
derive instance repGenericResourcePath :: Generic ResourcePath _
instance showResourcePath :: Show ResourcePath where
  show = genericShow
instance decodeResourcePath :: Decode ResourcePath where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourcePath :: Encode ResourcePath where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RoutingPolicy = RoutingPolicy String
derive instance newtypeRoutingPolicy :: Newtype RoutingPolicy _
derive instance repGenericRoutingPolicy :: Generic RoutingPolicy _
instance showRoutingPolicy :: Show RoutingPolicy where
  show = genericShow
instance decodeRoutingPolicy :: Decode RoutingPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoutingPolicy :: Encode RoutingPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about the specified service.</p>
newtype Service = Service 
  { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (Arn)
  , "Name" :: NullOrUndefined.NullOrUndefined (ServiceName)
  , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  , "InstanceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount)
  , "DnsConfig" :: NullOrUndefined.NullOrUndefined (DnsConfig)
  , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig)
  , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where
  show = genericShow
instance decodeService :: Decode Service where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeService :: Encode Service where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "Arn": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "DnsConfig": (NullOrUndefined Nothing), "HealthCheckConfig": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (ServiceName) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount) , "DnsConfig" :: NullOrUndefined.NullOrUndefined (DnsConfig) , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig) , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (ServiceName) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount) , "DnsConfig" :: NullOrUndefined.NullOrUndefined (DnsConfig) , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig) , "CreateDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) } ) -> Service
newService'  customize = (Service <<< customize) { "Arn": (NullOrUndefined Nothing), "CreateDate": (NullOrUndefined Nothing), "CreatorRequestId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "DnsConfig": (NullOrUndefined Nothing), "HealthCheckConfig": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



-- | <p>The service can't be created because a service with the same name already exists.</p>
newtype ServiceAlreadyExists = ServiceAlreadyExists 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "ServiceId" :: NullOrUndefined.NullOrUndefined (ResourceId)
  }
derive instance newtypeServiceAlreadyExists :: Newtype ServiceAlreadyExists _
derive instance repGenericServiceAlreadyExists :: Generic ServiceAlreadyExists _
instance showServiceAlreadyExists :: Show ServiceAlreadyExists where
  show = genericShow
instance decodeServiceAlreadyExists :: Decode ServiceAlreadyExists where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceAlreadyExists :: Encode ServiceAlreadyExists where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceAlreadyExists from required parameters
newServiceAlreadyExists :: ServiceAlreadyExists
newServiceAlreadyExists  = ServiceAlreadyExists { "CreatorRequestId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "ServiceId": (NullOrUndefined Nothing) }

-- | Constructs ServiceAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceAlreadyExists' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "ServiceId" :: NullOrUndefined.NullOrUndefined (ResourceId) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) , "CreatorRequestId" :: NullOrUndefined.NullOrUndefined (ResourceId) , "ServiceId" :: NullOrUndefined.NullOrUndefined (ResourceId) } ) -> ServiceAlreadyExists
newServiceAlreadyExists'  customize = (ServiceAlreadyExists <<< customize) { "CreatorRequestId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "ServiceId": (NullOrUndefined Nothing) }



-- | <p>A complex type that contains changes to an existing service.</p>
newtype ServiceChange = ServiceChange 
  { "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  , "DnsConfig" :: (DnsConfigChange)
  , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig)
  }
derive instance newtypeServiceChange :: Newtype ServiceChange _
derive instance repGenericServiceChange :: Generic ServiceChange _
instance showServiceChange :: Show ServiceChange where
  show = genericShow
instance decodeServiceChange :: Decode ServiceChange where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceChange :: Encode ServiceChange where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceChange from required parameters
newServiceChange :: DnsConfigChange -> ServiceChange
newServiceChange _DnsConfig = ServiceChange { "DnsConfig": _DnsConfig, "Description": (NullOrUndefined Nothing), "HealthCheckConfig": (NullOrUndefined Nothing) }

-- | Constructs ServiceChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceChange' :: DnsConfigChange -> ( { "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "DnsConfig" :: (DnsConfigChange) , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig) } -> {"Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "DnsConfig" :: (DnsConfigChange) , "HealthCheckConfig" :: NullOrUndefined.NullOrUndefined (HealthCheckConfig) } ) -> ServiceChange
newServiceChange' _DnsConfig customize = (ServiceChange <<< customize) { "DnsConfig": _DnsConfig, "Description": (NullOrUndefined Nothing), "HealthCheckConfig": (NullOrUndefined Nothing) }



-- | <p>A complex type that lets you specify the namespaces that you want to list services for.</p>
newtype ServiceFilter = ServiceFilter 
  { "Name" :: (ServiceFilterName)
  , "Values" :: (FilterValues)
  , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition)
  }
derive instance newtypeServiceFilter :: Newtype ServiceFilter _
derive instance repGenericServiceFilter :: Generic ServiceFilter _
instance showServiceFilter :: Show ServiceFilter where
  show = genericShow
instance decodeServiceFilter :: Decode ServiceFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceFilter :: Encode ServiceFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceFilter from required parameters
newServiceFilter :: ServiceFilterName -> FilterValues -> ServiceFilter
newServiceFilter _Name _Values = ServiceFilter { "Name": _Name, "Values": _Values, "Condition": (NullOrUndefined Nothing) }

-- | Constructs ServiceFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceFilter' :: ServiceFilterName -> FilterValues -> ( { "Name" :: (ServiceFilterName) , "Values" :: (FilterValues) , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition) } -> {"Name" :: (ServiceFilterName) , "Values" :: (FilterValues) , "Condition" :: NullOrUndefined.NullOrUndefined (FilterCondition) } ) -> ServiceFilter
newServiceFilter' _Name _Values customize = (ServiceFilter <<< customize) { "Name": _Name, "Values": _Values, "Condition": (NullOrUndefined Nothing) }



newtype ServiceFilterName = ServiceFilterName String
derive instance newtypeServiceFilterName :: Newtype ServiceFilterName _
derive instance repGenericServiceFilterName :: Generic ServiceFilterName _
instance showServiceFilterName :: Show ServiceFilterName where
  show = genericShow
instance decodeServiceFilterName :: Decode ServiceFilterName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceFilterName :: Encode ServiceFilterName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceFilters = ServiceFilters (Array ServiceFilter)
derive instance newtypeServiceFilters :: Newtype ServiceFilters _
derive instance repGenericServiceFilters :: Generic ServiceFilters _
instance showServiceFilters :: Show ServiceFilters where
  show = genericShow
instance decodeServiceFilters :: Decode ServiceFilters where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceFilters :: Encode ServiceFilters where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ServiceName = ServiceName String
derive instance newtypeServiceName :: Newtype ServiceName _
derive instance repGenericServiceName :: Generic ServiceName _
instance showServiceName :: Show ServiceName where
  show = genericShow
instance decodeServiceName :: Decode ServiceName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceName :: Encode ServiceName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>No service exists with the specified ID.</p>
newtype ServiceNotFound = ServiceNotFound 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeServiceNotFound :: Newtype ServiceNotFound _
derive instance repGenericServiceNotFound :: Generic ServiceNotFound _
instance showServiceNotFound :: Show ServiceNotFound where
  show = genericShow
instance decodeServiceNotFound :: Decode ServiceNotFound where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceNotFound :: Encode ServiceNotFound where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceNotFound from required parameters
newServiceNotFound :: ServiceNotFound
newServiceNotFound  = ServiceNotFound { "Message": (NullOrUndefined Nothing) }

-- | Constructs ServiceNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceNotFound' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ServiceNotFound
newServiceNotFound'  customize = (ServiceNotFound <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ServiceSummariesList = ServiceSummariesList (Array ServiceSummary)
derive instance newtypeServiceSummariesList :: Newtype ServiceSummariesList _
derive instance repGenericServiceSummariesList :: Generic ServiceSummariesList _
instance showServiceSummariesList :: Show ServiceSummariesList where
  show = genericShow
instance decodeServiceSummariesList :: Decode ServiceSummariesList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceSummariesList :: Encode ServiceSummariesList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A complex type that contains information about a specified service.</p>
newtype ServiceSummary = ServiceSummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (Arn)
  , "Name" :: NullOrUndefined.NullOrUndefined (ServiceName)
  , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription)
  , "InstanceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount)
  }
derive instance newtypeServiceSummary :: Newtype ServiceSummary _
derive instance repGenericServiceSummary :: Generic ServiceSummary _
instance showServiceSummary :: Show ServiceSummary where
  show = genericShow
instance decodeServiceSummary :: Decode ServiceSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceSummary :: Encode ServiceSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceSummary from required parameters
newServiceSummary :: ServiceSummary
newServiceSummary  = ServiceSummary { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs ServiceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceSummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (ServiceName) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ResourceId) , "Arn" :: NullOrUndefined.NullOrUndefined (Arn) , "Name" :: NullOrUndefined.NullOrUndefined (ServiceName) , "Description" :: NullOrUndefined.NullOrUndefined (ResourceDescription) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (ResourceCount) } ) -> ServiceSummary
newServiceSummary'  customize = (ServiceSummary <<< customize) { "Arn": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype UpdateServiceRequest = UpdateServiceRequest 
  { "Id" :: (ResourceId)
  , "Service" :: (ServiceChange)
  }
derive instance newtypeUpdateServiceRequest :: Newtype UpdateServiceRequest _
derive instance repGenericUpdateServiceRequest :: Generic UpdateServiceRequest _
instance showUpdateServiceRequest :: Show UpdateServiceRequest where
  show = genericShow
instance decodeUpdateServiceRequest :: Decode UpdateServiceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateServiceRequest :: Encode UpdateServiceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateServiceRequest from required parameters
newUpdateServiceRequest :: ResourceId -> ServiceChange -> UpdateServiceRequest
newUpdateServiceRequest _Id _Service = UpdateServiceRequest { "Id": _Id, "Service": _Service }

-- | Constructs UpdateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceRequest' :: ResourceId -> ServiceChange -> ( { "Id" :: (ResourceId) , "Service" :: (ServiceChange) } -> {"Id" :: (ResourceId) , "Service" :: (ServiceChange) } ) -> UpdateServiceRequest
newUpdateServiceRequest' _Id _Service customize = (UpdateServiceRequest <<< customize) { "Id": _Id, "Service": _Service }



newtype UpdateServiceResponse = UpdateServiceResponse 
  { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId)
  }
derive instance newtypeUpdateServiceResponse :: Newtype UpdateServiceResponse _
derive instance repGenericUpdateServiceResponse :: Generic UpdateServiceResponse _
instance showUpdateServiceResponse :: Show UpdateServiceResponse where
  show = genericShow
instance decodeUpdateServiceResponse :: Decode UpdateServiceResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateServiceResponse :: Encode UpdateServiceResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateServiceResponse from required parameters
newUpdateServiceResponse :: UpdateServiceResponse
newUpdateServiceResponse  = UpdateServiceResponse { "OperationId": (NullOrUndefined Nothing) }

-- | Constructs UpdateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceResponse' :: ( { "OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } -> {"OperationId" :: NullOrUndefined.NullOrUndefined (OperationId) } ) -> UpdateServiceResponse
newUpdateServiceResponse'  customize = (UpdateServiceResponse <<< customize) { "OperationId": (NullOrUndefined Nothing) }

