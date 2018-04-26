
module AWS.ServiceDiscovery.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



newtype AttrKey = AttrKey String
derive instance newtypeAttrKey :: Newtype AttrKey _
derive instance repGenericAttrKey :: Generic AttrKey _
instance showAttrKey :: Show AttrKey where show = genericShow
instance decodeAttrKey :: Decode AttrKey where decode = genericDecode options
instance encodeAttrKey :: Encode AttrKey where encode = genericEncode options



newtype AttrValue = AttrValue String
derive instance newtypeAttrValue :: Newtype AttrValue _
derive instance repGenericAttrValue :: Generic AttrValue _
instance showAttrValue :: Show AttrValue where show = genericShow
instance decodeAttrValue :: Decode AttrValue where decode = genericDecode options
instance encodeAttrValue :: Encode AttrValue where encode = genericEncode options



newtype Attributes = Attributes (StrMap.StrMap AttrValue)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeAttributes :: Decode Attributes where decode = genericDecode options
instance encodeAttributes :: Encode Attributes where encode = genericEncode options



newtype Code = Code String
derive instance newtypeCode :: Newtype Code _
derive instance repGenericCode :: Generic Code _
instance showCode :: Show Code where show = genericShow
instance decodeCode :: Decode Code where decode = genericDecode options
instance encodeCode :: Encode Code where encode = genericEncode options



newtype CreatePrivateDnsNamespaceRequest = CreatePrivateDnsNamespaceRequest 
  { "Name" :: (NamespaceName)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "Description" :: Maybe (ResourceDescription)
  , "Vpc" :: (ResourceId)
  }
derive instance newtypeCreatePrivateDnsNamespaceRequest :: Newtype CreatePrivateDnsNamespaceRequest _
derive instance repGenericCreatePrivateDnsNamespaceRequest :: Generic CreatePrivateDnsNamespaceRequest _
instance showCreatePrivateDnsNamespaceRequest :: Show CreatePrivateDnsNamespaceRequest where show = genericShow
instance decodeCreatePrivateDnsNamespaceRequest :: Decode CreatePrivateDnsNamespaceRequest where decode = genericDecode options
instance encodeCreatePrivateDnsNamespaceRequest :: Encode CreatePrivateDnsNamespaceRequest where encode = genericEncode options

-- | Constructs CreatePrivateDnsNamespaceRequest from required parameters
newCreatePrivateDnsNamespaceRequest :: NamespaceName -> ResourceId -> CreatePrivateDnsNamespaceRequest
newCreatePrivateDnsNamespaceRequest _Name _Vpc = CreatePrivateDnsNamespaceRequest { "Name": _Name, "Vpc": _Vpc, "CreatorRequestId": Nothing, "Description": Nothing }

-- | Constructs CreatePrivateDnsNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePrivateDnsNamespaceRequest' :: NamespaceName -> ResourceId -> ( { "Name" :: (NamespaceName) , "CreatorRequestId" :: Maybe (ResourceId) , "Description" :: Maybe (ResourceDescription) , "Vpc" :: (ResourceId) } -> {"Name" :: (NamespaceName) , "CreatorRequestId" :: Maybe (ResourceId) , "Description" :: Maybe (ResourceDescription) , "Vpc" :: (ResourceId) } ) -> CreatePrivateDnsNamespaceRequest
newCreatePrivateDnsNamespaceRequest' _Name _Vpc customize = (CreatePrivateDnsNamespaceRequest <<< customize) { "Name": _Name, "Vpc": _Vpc, "CreatorRequestId": Nothing, "Description": Nothing }



newtype CreatePrivateDnsNamespaceResponse = CreatePrivateDnsNamespaceResponse 
  { "OperationId" :: Maybe (OperationId)
  }
derive instance newtypeCreatePrivateDnsNamespaceResponse :: Newtype CreatePrivateDnsNamespaceResponse _
derive instance repGenericCreatePrivateDnsNamespaceResponse :: Generic CreatePrivateDnsNamespaceResponse _
instance showCreatePrivateDnsNamespaceResponse :: Show CreatePrivateDnsNamespaceResponse where show = genericShow
instance decodeCreatePrivateDnsNamespaceResponse :: Decode CreatePrivateDnsNamespaceResponse where decode = genericDecode options
instance encodeCreatePrivateDnsNamespaceResponse :: Encode CreatePrivateDnsNamespaceResponse where encode = genericEncode options

-- | Constructs CreatePrivateDnsNamespaceResponse from required parameters
newCreatePrivateDnsNamespaceResponse :: CreatePrivateDnsNamespaceResponse
newCreatePrivateDnsNamespaceResponse  = CreatePrivateDnsNamespaceResponse { "OperationId": Nothing }

-- | Constructs CreatePrivateDnsNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePrivateDnsNamespaceResponse' :: ( { "OperationId" :: Maybe (OperationId) } -> {"OperationId" :: Maybe (OperationId) } ) -> CreatePrivateDnsNamespaceResponse
newCreatePrivateDnsNamespaceResponse'  customize = (CreatePrivateDnsNamespaceResponse <<< customize) { "OperationId": Nothing }



newtype CreatePublicDnsNamespaceRequest = CreatePublicDnsNamespaceRequest 
  { "Name" :: (NamespaceName)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "Description" :: Maybe (ResourceDescription)
  }
derive instance newtypeCreatePublicDnsNamespaceRequest :: Newtype CreatePublicDnsNamespaceRequest _
derive instance repGenericCreatePublicDnsNamespaceRequest :: Generic CreatePublicDnsNamespaceRequest _
instance showCreatePublicDnsNamespaceRequest :: Show CreatePublicDnsNamespaceRequest where show = genericShow
instance decodeCreatePublicDnsNamespaceRequest :: Decode CreatePublicDnsNamespaceRequest where decode = genericDecode options
instance encodeCreatePublicDnsNamespaceRequest :: Encode CreatePublicDnsNamespaceRequest where encode = genericEncode options

-- | Constructs CreatePublicDnsNamespaceRequest from required parameters
newCreatePublicDnsNamespaceRequest :: NamespaceName -> CreatePublicDnsNamespaceRequest
newCreatePublicDnsNamespaceRequest _Name = CreatePublicDnsNamespaceRequest { "Name": _Name, "CreatorRequestId": Nothing, "Description": Nothing }

-- | Constructs CreatePublicDnsNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePublicDnsNamespaceRequest' :: NamespaceName -> ( { "Name" :: (NamespaceName) , "CreatorRequestId" :: Maybe (ResourceId) , "Description" :: Maybe (ResourceDescription) } -> {"Name" :: (NamespaceName) , "CreatorRequestId" :: Maybe (ResourceId) , "Description" :: Maybe (ResourceDescription) } ) -> CreatePublicDnsNamespaceRequest
newCreatePublicDnsNamespaceRequest' _Name customize = (CreatePublicDnsNamespaceRequest <<< customize) { "Name": _Name, "CreatorRequestId": Nothing, "Description": Nothing }



newtype CreatePublicDnsNamespaceResponse = CreatePublicDnsNamespaceResponse 
  { "OperationId" :: Maybe (OperationId)
  }
derive instance newtypeCreatePublicDnsNamespaceResponse :: Newtype CreatePublicDnsNamespaceResponse _
derive instance repGenericCreatePublicDnsNamespaceResponse :: Generic CreatePublicDnsNamespaceResponse _
instance showCreatePublicDnsNamespaceResponse :: Show CreatePublicDnsNamespaceResponse where show = genericShow
instance decodeCreatePublicDnsNamespaceResponse :: Decode CreatePublicDnsNamespaceResponse where decode = genericDecode options
instance encodeCreatePublicDnsNamespaceResponse :: Encode CreatePublicDnsNamespaceResponse where encode = genericEncode options

-- | Constructs CreatePublicDnsNamespaceResponse from required parameters
newCreatePublicDnsNamespaceResponse :: CreatePublicDnsNamespaceResponse
newCreatePublicDnsNamespaceResponse  = CreatePublicDnsNamespaceResponse { "OperationId": Nothing }

-- | Constructs CreatePublicDnsNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePublicDnsNamespaceResponse' :: ( { "OperationId" :: Maybe (OperationId) } -> {"OperationId" :: Maybe (OperationId) } ) -> CreatePublicDnsNamespaceResponse
newCreatePublicDnsNamespaceResponse'  customize = (CreatePublicDnsNamespaceResponse <<< customize) { "OperationId": Nothing }



newtype CreateServiceRequest = CreateServiceRequest 
  { "Name" :: (ServiceName)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "Description" :: Maybe (ResourceDescription)
  , "DnsConfig" :: (DnsConfig)
  , "HealthCheckConfig" :: Maybe (HealthCheckConfig)
  }
derive instance newtypeCreateServiceRequest :: Newtype CreateServiceRequest _
derive instance repGenericCreateServiceRequest :: Generic CreateServiceRequest _
instance showCreateServiceRequest :: Show CreateServiceRequest where show = genericShow
instance decodeCreateServiceRequest :: Decode CreateServiceRequest where decode = genericDecode options
instance encodeCreateServiceRequest :: Encode CreateServiceRequest where encode = genericEncode options

-- | Constructs CreateServiceRequest from required parameters
newCreateServiceRequest :: DnsConfig -> ServiceName -> CreateServiceRequest
newCreateServiceRequest _DnsConfig _Name = CreateServiceRequest { "DnsConfig": _DnsConfig, "Name": _Name, "CreatorRequestId": Nothing, "Description": Nothing, "HealthCheckConfig": Nothing }

-- | Constructs CreateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceRequest' :: DnsConfig -> ServiceName -> ( { "Name" :: (ServiceName) , "CreatorRequestId" :: Maybe (ResourceId) , "Description" :: Maybe (ResourceDescription) , "DnsConfig" :: (DnsConfig) , "HealthCheckConfig" :: Maybe (HealthCheckConfig) } -> {"Name" :: (ServiceName) , "CreatorRequestId" :: Maybe (ResourceId) , "Description" :: Maybe (ResourceDescription) , "DnsConfig" :: (DnsConfig) , "HealthCheckConfig" :: Maybe (HealthCheckConfig) } ) -> CreateServiceRequest
newCreateServiceRequest' _DnsConfig _Name customize = (CreateServiceRequest <<< customize) { "DnsConfig": _DnsConfig, "Name": _Name, "CreatorRequestId": Nothing, "Description": Nothing, "HealthCheckConfig": Nothing }



newtype CreateServiceResponse = CreateServiceResponse 
  { "Service" :: Maybe (Service)
  }
derive instance newtypeCreateServiceResponse :: Newtype CreateServiceResponse _
derive instance repGenericCreateServiceResponse :: Generic CreateServiceResponse _
instance showCreateServiceResponse :: Show CreateServiceResponse where show = genericShow
instance decodeCreateServiceResponse :: Decode CreateServiceResponse where decode = genericDecode options
instance encodeCreateServiceResponse :: Encode CreateServiceResponse where encode = genericEncode options

-- | Constructs CreateServiceResponse from required parameters
newCreateServiceResponse :: CreateServiceResponse
newCreateServiceResponse  = CreateServiceResponse { "Service": Nothing }

-- | Constructs CreateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateServiceResponse' :: ( { "Service" :: Maybe (Service) } -> {"Service" :: Maybe (Service) } ) -> CreateServiceResponse
newCreateServiceResponse'  customize = (CreateServiceResponse <<< customize) { "Service": Nothing }



newtype DeleteNamespaceRequest = DeleteNamespaceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeDeleteNamespaceRequest :: Newtype DeleteNamespaceRequest _
derive instance repGenericDeleteNamespaceRequest :: Generic DeleteNamespaceRequest _
instance showDeleteNamespaceRequest :: Show DeleteNamespaceRequest where show = genericShow
instance decodeDeleteNamespaceRequest :: Decode DeleteNamespaceRequest where decode = genericDecode options
instance encodeDeleteNamespaceRequest :: Encode DeleteNamespaceRequest where encode = genericEncode options

-- | Constructs DeleteNamespaceRequest from required parameters
newDeleteNamespaceRequest :: ResourceId -> DeleteNamespaceRequest
newDeleteNamespaceRequest _Id = DeleteNamespaceRequest { "Id": _Id }

-- | Constructs DeleteNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteNamespaceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> DeleteNamespaceRequest
newDeleteNamespaceRequest' _Id customize = (DeleteNamespaceRequest <<< customize) { "Id": _Id }



newtype DeleteNamespaceResponse = DeleteNamespaceResponse 
  { "OperationId" :: Maybe (OperationId)
  }
derive instance newtypeDeleteNamespaceResponse :: Newtype DeleteNamespaceResponse _
derive instance repGenericDeleteNamespaceResponse :: Generic DeleteNamespaceResponse _
instance showDeleteNamespaceResponse :: Show DeleteNamespaceResponse where show = genericShow
instance decodeDeleteNamespaceResponse :: Decode DeleteNamespaceResponse where decode = genericDecode options
instance encodeDeleteNamespaceResponse :: Encode DeleteNamespaceResponse where encode = genericEncode options

-- | Constructs DeleteNamespaceResponse from required parameters
newDeleteNamespaceResponse :: DeleteNamespaceResponse
newDeleteNamespaceResponse  = DeleteNamespaceResponse { "OperationId": Nothing }

-- | Constructs DeleteNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteNamespaceResponse' :: ( { "OperationId" :: Maybe (OperationId) } -> {"OperationId" :: Maybe (OperationId) } ) -> DeleteNamespaceResponse
newDeleteNamespaceResponse'  customize = (DeleteNamespaceResponse <<< customize) { "OperationId": Nothing }



newtype DeleteServiceRequest = DeleteServiceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeDeleteServiceRequest :: Newtype DeleteServiceRequest _
derive instance repGenericDeleteServiceRequest :: Generic DeleteServiceRequest _
instance showDeleteServiceRequest :: Show DeleteServiceRequest where show = genericShow
instance decodeDeleteServiceRequest :: Decode DeleteServiceRequest where decode = genericDecode options
instance encodeDeleteServiceRequest :: Encode DeleteServiceRequest where encode = genericEncode options

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
instance showDeleteServiceResponse :: Show DeleteServiceResponse where show = genericShow
instance decodeDeleteServiceResponse :: Decode DeleteServiceResponse where decode = genericDecode options
instance encodeDeleteServiceResponse :: Encode DeleteServiceResponse where encode = genericEncode options



newtype DeregisterInstanceRequest = DeregisterInstanceRequest 
  { "ServiceId" :: (ResourceId)
  , "InstanceId" :: (ResourceId)
  }
derive instance newtypeDeregisterInstanceRequest :: Newtype DeregisterInstanceRequest _
derive instance repGenericDeregisterInstanceRequest :: Generic DeregisterInstanceRequest _
instance showDeregisterInstanceRequest :: Show DeregisterInstanceRequest where show = genericShow
instance decodeDeregisterInstanceRequest :: Decode DeregisterInstanceRequest where decode = genericDecode options
instance encodeDeregisterInstanceRequest :: Encode DeregisterInstanceRequest where encode = genericEncode options

-- | Constructs DeregisterInstanceRequest from required parameters
newDeregisterInstanceRequest :: ResourceId -> ResourceId -> DeregisterInstanceRequest
newDeregisterInstanceRequest _InstanceId _ServiceId = DeregisterInstanceRequest { "InstanceId": _InstanceId, "ServiceId": _ServiceId }

-- | Constructs DeregisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterInstanceRequest' :: ResourceId -> ResourceId -> ( { "ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } -> {"ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } ) -> DeregisterInstanceRequest
newDeregisterInstanceRequest' _InstanceId _ServiceId customize = (DeregisterInstanceRequest <<< customize) { "InstanceId": _InstanceId, "ServiceId": _ServiceId }



newtype DeregisterInstanceResponse = DeregisterInstanceResponse 
  { "OperationId" :: Maybe (OperationId)
  }
derive instance newtypeDeregisterInstanceResponse :: Newtype DeregisterInstanceResponse _
derive instance repGenericDeregisterInstanceResponse :: Generic DeregisterInstanceResponse _
instance showDeregisterInstanceResponse :: Show DeregisterInstanceResponse where show = genericShow
instance decodeDeregisterInstanceResponse :: Decode DeregisterInstanceResponse where decode = genericDecode options
instance encodeDeregisterInstanceResponse :: Encode DeregisterInstanceResponse where encode = genericEncode options

-- | Constructs DeregisterInstanceResponse from required parameters
newDeregisterInstanceResponse :: DeregisterInstanceResponse
newDeregisterInstanceResponse  = DeregisterInstanceResponse { "OperationId": Nothing }

-- | Constructs DeregisterInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeregisterInstanceResponse' :: ( { "OperationId" :: Maybe (OperationId) } -> {"OperationId" :: Maybe (OperationId) } ) -> DeregisterInstanceResponse
newDeregisterInstanceResponse'  customize = (DeregisterInstanceResponse <<< customize) { "OperationId": Nothing }



-- | <p>A complex type that contains information about the records that you want Amazon Route 53 to create when you register an instance.</p>
newtype DnsConfig = DnsConfig 
  { "NamespaceId" :: (ResourceId)
  , "RoutingPolicy" :: Maybe (RoutingPolicy)
  , "DnsRecords" :: (DnsRecordList)
  }
derive instance newtypeDnsConfig :: Newtype DnsConfig _
derive instance repGenericDnsConfig :: Generic DnsConfig _
instance showDnsConfig :: Show DnsConfig where show = genericShow
instance decodeDnsConfig :: Decode DnsConfig where decode = genericDecode options
instance encodeDnsConfig :: Encode DnsConfig where encode = genericEncode options

-- | Constructs DnsConfig from required parameters
newDnsConfig :: DnsRecordList -> ResourceId -> DnsConfig
newDnsConfig _DnsRecords _NamespaceId = DnsConfig { "DnsRecords": _DnsRecords, "NamespaceId": _NamespaceId, "RoutingPolicy": Nothing }

-- | Constructs DnsConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsConfig' :: DnsRecordList -> ResourceId -> ( { "NamespaceId" :: (ResourceId) , "RoutingPolicy" :: Maybe (RoutingPolicy) , "DnsRecords" :: (DnsRecordList) } -> {"NamespaceId" :: (ResourceId) , "RoutingPolicy" :: Maybe (RoutingPolicy) , "DnsRecords" :: (DnsRecordList) } ) -> DnsConfig
newDnsConfig' _DnsRecords _NamespaceId customize = (DnsConfig <<< customize) { "DnsRecords": _DnsRecords, "NamespaceId": _NamespaceId, "RoutingPolicy": Nothing }



-- | <p>A complex type that contains information about changes to the records that Route 53 creates when you register an instance.</p>
newtype DnsConfigChange = DnsConfigChange 
  { "DnsRecords" :: (DnsRecordList)
  }
derive instance newtypeDnsConfigChange :: Newtype DnsConfigChange _
derive instance repGenericDnsConfigChange :: Generic DnsConfigChange _
instance showDnsConfigChange :: Show DnsConfigChange where show = genericShow
instance decodeDnsConfigChange :: Decode DnsConfigChange where decode = genericDecode options
instance encodeDnsConfigChange :: Encode DnsConfigChange where encode = genericEncode options

-- | Constructs DnsConfigChange from required parameters
newDnsConfigChange :: DnsRecordList -> DnsConfigChange
newDnsConfigChange _DnsRecords = DnsConfigChange { "DnsRecords": _DnsRecords }

-- | Constructs DnsConfigChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsConfigChange' :: DnsRecordList -> ( { "DnsRecords" :: (DnsRecordList) } -> {"DnsRecords" :: (DnsRecordList) } ) -> DnsConfigChange
newDnsConfigChange' _DnsRecords customize = (DnsConfigChange <<< customize) { "DnsRecords": _DnsRecords }



-- | <p>A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.</p>
newtype DnsProperties = DnsProperties 
  { "HostedZoneId" :: Maybe (ResourceId)
  }
derive instance newtypeDnsProperties :: Newtype DnsProperties _
derive instance repGenericDnsProperties :: Generic DnsProperties _
instance showDnsProperties :: Show DnsProperties where show = genericShow
instance decodeDnsProperties :: Decode DnsProperties where decode = genericDecode options
instance encodeDnsProperties :: Encode DnsProperties where encode = genericEncode options

-- | Constructs DnsProperties from required parameters
newDnsProperties :: DnsProperties
newDnsProperties  = DnsProperties { "HostedZoneId": Nothing }

-- | Constructs DnsProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsProperties' :: ( { "HostedZoneId" :: Maybe (ResourceId) } -> {"HostedZoneId" :: Maybe (ResourceId) } ) -> DnsProperties
newDnsProperties'  customize = (DnsProperties <<< customize) { "HostedZoneId": Nothing }



-- | <p>A complex type that contains information about the records that you want Route 53 to create when you register an instance.</p>
newtype DnsRecord = DnsRecord 
  { "Type" :: (RecordType)
  , "TTL" :: (RecordTTL)
  }
derive instance newtypeDnsRecord :: Newtype DnsRecord _
derive instance repGenericDnsRecord :: Generic DnsRecord _
instance showDnsRecord :: Show DnsRecord where show = genericShow
instance decodeDnsRecord :: Decode DnsRecord where decode = genericDecode options
instance encodeDnsRecord :: Encode DnsRecord where encode = genericEncode options

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
instance showDnsRecordList :: Show DnsRecordList where show = genericShow
instance decodeDnsRecordList :: Decode DnsRecordList where decode = genericDecode options
instance encodeDnsRecordList :: Encode DnsRecordList where encode = genericEncode options



-- | <p>The operation is already in progress.</p>
newtype DuplicateRequest = DuplicateRequest 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDuplicateRequest :: Newtype DuplicateRequest _
derive instance repGenericDuplicateRequest :: Generic DuplicateRequest _
instance showDuplicateRequest :: Show DuplicateRequest where show = genericShow
instance decodeDuplicateRequest :: Decode DuplicateRequest where decode = genericDecode options
instance encodeDuplicateRequest :: Encode DuplicateRequest where encode = genericEncode options

-- | Constructs DuplicateRequest from required parameters
newDuplicateRequest :: DuplicateRequest
newDuplicateRequest  = DuplicateRequest { "Message": Nothing }

-- | Constructs DuplicateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateRequest' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> DuplicateRequest
newDuplicateRequest'  customize = (DuplicateRequest <<< customize) { "Message": Nothing }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype FailureThreshold = FailureThreshold Int
derive instance newtypeFailureThreshold :: Newtype FailureThreshold _
derive instance repGenericFailureThreshold :: Generic FailureThreshold _
instance showFailureThreshold :: Show FailureThreshold where show = genericShow
instance decodeFailureThreshold :: Decode FailureThreshold where decode = genericDecode options
instance encodeFailureThreshold :: Encode FailureThreshold where encode = genericEncode options



newtype FilterCondition = FilterCondition String
derive instance newtypeFilterCondition :: Newtype FilterCondition _
derive instance repGenericFilterCondition :: Generic FilterCondition _
instance showFilterCondition :: Show FilterCondition where show = genericShow
instance decodeFilterCondition :: Decode FilterCondition where decode = genericDecode options
instance encodeFilterCondition :: Encode FilterCondition where encode = genericEncode options



newtype FilterValue = FilterValue String
derive instance newtypeFilterValue :: Newtype FilterValue _
derive instance repGenericFilterValue :: Generic FilterValue _
instance showFilterValue :: Show FilterValue where show = genericShow
instance decodeFilterValue :: Decode FilterValue where decode = genericDecode options
instance encodeFilterValue :: Encode FilterValue where encode = genericEncode options



newtype FilterValues = FilterValues (Array FilterValue)
derive instance newtypeFilterValues :: Newtype FilterValues _
derive instance repGenericFilterValues :: Generic FilterValues _
instance showFilterValues :: Show FilterValues where show = genericShow
instance decodeFilterValues :: Decode FilterValues where decode = genericDecode options
instance encodeFilterValues :: Encode FilterValues where encode = genericEncode options



newtype GetInstanceRequest = GetInstanceRequest 
  { "ServiceId" :: (ResourceId)
  , "InstanceId" :: (ResourceId)
  }
derive instance newtypeGetInstanceRequest :: Newtype GetInstanceRequest _
derive instance repGenericGetInstanceRequest :: Generic GetInstanceRequest _
instance showGetInstanceRequest :: Show GetInstanceRequest where show = genericShow
instance decodeGetInstanceRequest :: Decode GetInstanceRequest where decode = genericDecode options
instance encodeGetInstanceRequest :: Encode GetInstanceRequest where encode = genericEncode options

-- | Constructs GetInstanceRequest from required parameters
newGetInstanceRequest :: ResourceId -> ResourceId -> GetInstanceRequest
newGetInstanceRequest _InstanceId _ServiceId = GetInstanceRequest { "InstanceId": _InstanceId, "ServiceId": _ServiceId }

-- | Constructs GetInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceRequest' :: ResourceId -> ResourceId -> ( { "ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } -> {"ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) } ) -> GetInstanceRequest
newGetInstanceRequest' _InstanceId _ServiceId customize = (GetInstanceRequest <<< customize) { "InstanceId": _InstanceId, "ServiceId": _ServiceId }



newtype GetInstanceResponse = GetInstanceResponse 
  { "Instance" :: Maybe (Instance)
  }
derive instance newtypeGetInstanceResponse :: Newtype GetInstanceResponse _
derive instance repGenericGetInstanceResponse :: Generic GetInstanceResponse _
instance showGetInstanceResponse :: Show GetInstanceResponse where show = genericShow
instance decodeGetInstanceResponse :: Decode GetInstanceResponse where decode = genericDecode options
instance encodeGetInstanceResponse :: Encode GetInstanceResponse where encode = genericEncode options

-- | Constructs GetInstanceResponse from required parameters
newGetInstanceResponse :: GetInstanceResponse
newGetInstanceResponse  = GetInstanceResponse { "Instance": Nothing }

-- | Constructs GetInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceResponse' :: ( { "Instance" :: Maybe (Instance) } -> {"Instance" :: Maybe (Instance) } ) -> GetInstanceResponse
newGetInstanceResponse'  customize = (GetInstanceResponse <<< customize) { "Instance": Nothing }



newtype GetInstancesHealthStatusRequest = GetInstancesHealthStatusRequest 
  { "ServiceId" :: (ResourceId)
  , "Instances" :: Maybe (InstanceIdList)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetInstancesHealthStatusRequest :: Newtype GetInstancesHealthStatusRequest _
derive instance repGenericGetInstancesHealthStatusRequest :: Generic GetInstancesHealthStatusRequest _
instance showGetInstancesHealthStatusRequest :: Show GetInstancesHealthStatusRequest where show = genericShow
instance decodeGetInstancesHealthStatusRequest :: Decode GetInstancesHealthStatusRequest where decode = genericDecode options
instance encodeGetInstancesHealthStatusRequest :: Encode GetInstancesHealthStatusRequest where encode = genericEncode options

-- | Constructs GetInstancesHealthStatusRequest from required parameters
newGetInstancesHealthStatusRequest :: ResourceId -> GetInstancesHealthStatusRequest
newGetInstancesHealthStatusRequest _ServiceId = GetInstancesHealthStatusRequest { "ServiceId": _ServiceId, "Instances": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs GetInstancesHealthStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstancesHealthStatusRequest' :: ResourceId -> ( { "ServiceId" :: (ResourceId) , "Instances" :: Maybe (InstanceIdList) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"ServiceId" :: (ResourceId) , "Instances" :: Maybe (InstanceIdList) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> GetInstancesHealthStatusRequest
newGetInstancesHealthStatusRequest' _ServiceId customize = (GetInstancesHealthStatusRequest <<< customize) { "ServiceId": _ServiceId, "Instances": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype GetInstancesHealthStatusResponse = GetInstancesHealthStatusResponse 
  { "Status" :: Maybe (InstanceHealthStatusMap)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetInstancesHealthStatusResponse :: Newtype GetInstancesHealthStatusResponse _
derive instance repGenericGetInstancesHealthStatusResponse :: Generic GetInstancesHealthStatusResponse _
instance showGetInstancesHealthStatusResponse :: Show GetInstancesHealthStatusResponse where show = genericShow
instance decodeGetInstancesHealthStatusResponse :: Decode GetInstancesHealthStatusResponse where decode = genericDecode options
instance encodeGetInstancesHealthStatusResponse :: Encode GetInstancesHealthStatusResponse where encode = genericEncode options

-- | Constructs GetInstancesHealthStatusResponse from required parameters
newGetInstancesHealthStatusResponse :: GetInstancesHealthStatusResponse
newGetInstancesHealthStatusResponse  = GetInstancesHealthStatusResponse { "NextToken": Nothing, "Status": Nothing }

-- | Constructs GetInstancesHealthStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstancesHealthStatusResponse' :: ( { "Status" :: Maybe (InstanceHealthStatusMap) , "NextToken" :: Maybe (NextToken) } -> {"Status" :: Maybe (InstanceHealthStatusMap) , "NextToken" :: Maybe (NextToken) } ) -> GetInstancesHealthStatusResponse
newGetInstancesHealthStatusResponse'  customize = (GetInstancesHealthStatusResponse <<< customize) { "NextToken": Nothing, "Status": Nothing }



newtype GetNamespaceRequest = GetNamespaceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetNamespaceRequest :: Newtype GetNamespaceRequest _
derive instance repGenericGetNamespaceRequest :: Generic GetNamespaceRequest _
instance showGetNamespaceRequest :: Show GetNamespaceRequest where show = genericShow
instance decodeGetNamespaceRequest :: Decode GetNamespaceRequest where decode = genericDecode options
instance encodeGetNamespaceRequest :: Encode GetNamespaceRequest where encode = genericEncode options

-- | Constructs GetNamespaceRequest from required parameters
newGetNamespaceRequest :: ResourceId -> GetNamespaceRequest
newGetNamespaceRequest _Id = GetNamespaceRequest { "Id": _Id }

-- | Constructs GetNamespaceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetNamespaceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetNamespaceRequest
newGetNamespaceRequest' _Id customize = (GetNamespaceRequest <<< customize) { "Id": _Id }



newtype GetNamespaceResponse = GetNamespaceResponse 
  { "Namespace" :: Maybe (Namespace)
  }
derive instance newtypeGetNamespaceResponse :: Newtype GetNamespaceResponse _
derive instance repGenericGetNamespaceResponse :: Generic GetNamespaceResponse _
instance showGetNamespaceResponse :: Show GetNamespaceResponse where show = genericShow
instance decodeGetNamespaceResponse :: Decode GetNamespaceResponse where decode = genericDecode options
instance encodeGetNamespaceResponse :: Encode GetNamespaceResponse where encode = genericEncode options

-- | Constructs GetNamespaceResponse from required parameters
newGetNamespaceResponse :: GetNamespaceResponse
newGetNamespaceResponse  = GetNamespaceResponse { "Namespace": Nothing }

-- | Constructs GetNamespaceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetNamespaceResponse' :: ( { "Namespace" :: Maybe (Namespace) } -> {"Namespace" :: Maybe (Namespace) } ) -> GetNamespaceResponse
newGetNamespaceResponse'  customize = (GetNamespaceResponse <<< customize) { "Namespace": Nothing }



newtype GetOperationRequest = GetOperationRequest 
  { "OperationId" :: (ResourceId)
  }
derive instance newtypeGetOperationRequest :: Newtype GetOperationRequest _
derive instance repGenericGetOperationRequest :: Generic GetOperationRequest _
instance showGetOperationRequest :: Show GetOperationRequest where show = genericShow
instance decodeGetOperationRequest :: Decode GetOperationRequest where decode = genericDecode options
instance encodeGetOperationRequest :: Encode GetOperationRequest where encode = genericEncode options

-- | Constructs GetOperationRequest from required parameters
newGetOperationRequest :: ResourceId -> GetOperationRequest
newGetOperationRequest _OperationId = GetOperationRequest { "OperationId": _OperationId }

-- | Constructs GetOperationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationRequest' :: ResourceId -> ( { "OperationId" :: (ResourceId) } -> {"OperationId" :: (ResourceId) } ) -> GetOperationRequest
newGetOperationRequest' _OperationId customize = (GetOperationRequest <<< customize) { "OperationId": _OperationId }



newtype GetOperationResponse = GetOperationResponse 
  { "Operation" :: Maybe (Operation)
  }
derive instance newtypeGetOperationResponse :: Newtype GetOperationResponse _
derive instance repGenericGetOperationResponse :: Generic GetOperationResponse _
instance showGetOperationResponse :: Show GetOperationResponse where show = genericShow
instance decodeGetOperationResponse :: Decode GetOperationResponse where decode = genericDecode options
instance encodeGetOperationResponse :: Encode GetOperationResponse where encode = genericEncode options

-- | Constructs GetOperationResponse from required parameters
newGetOperationResponse :: GetOperationResponse
newGetOperationResponse  = GetOperationResponse { "Operation": Nothing }

-- | Constructs GetOperationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetOperationResponse' :: ( { "Operation" :: Maybe (Operation) } -> {"Operation" :: Maybe (Operation) } ) -> GetOperationResponse
newGetOperationResponse'  customize = (GetOperationResponse <<< customize) { "Operation": Nothing }



newtype GetServiceRequest = GetServiceRequest 
  { "Id" :: (ResourceId)
  }
derive instance newtypeGetServiceRequest :: Newtype GetServiceRequest _
derive instance repGenericGetServiceRequest :: Generic GetServiceRequest _
instance showGetServiceRequest :: Show GetServiceRequest where show = genericShow
instance decodeGetServiceRequest :: Decode GetServiceRequest where decode = genericDecode options
instance encodeGetServiceRequest :: Encode GetServiceRequest where encode = genericEncode options

-- | Constructs GetServiceRequest from required parameters
newGetServiceRequest :: ResourceId -> GetServiceRequest
newGetServiceRequest _Id = GetServiceRequest { "Id": _Id }

-- | Constructs GetServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceRequest' :: ResourceId -> ( { "Id" :: (ResourceId) } -> {"Id" :: (ResourceId) } ) -> GetServiceRequest
newGetServiceRequest' _Id customize = (GetServiceRequest <<< customize) { "Id": _Id }



newtype GetServiceResponse = GetServiceResponse 
  { "Service" :: Maybe (Service)
  }
derive instance newtypeGetServiceResponse :: Newtype GetServiceResponse _
derive instance repGenericGetServiceResponse :: Generic GetServiceResponse _
instance showGetServiceResponse :: Show GetServiceResponse where show = genericShow
instance decodeGetServiceResponse :: Decode GetServiceResponse where decode = genericDecode options
instance encodeGetServiceResponse :: Encode GetServiceResponse where encode = genericEncode options

-- | Constructs GetServiceResponse from required parameters
newGetServiceResponse :: GetServiceResponse
newGetServiceResponse  = GetServiceResponse { "Service": Nothing }

-- | Constructs GetServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceResponse' :: ( { "Service" :: Maybe (Service) } -> {"Service" :: Maybe (Service) } ) -> GetServiceResponse
newGetServiceResponse'  customize = (GetServiceResponse <<< customize) { "Service": Nothing }



-- | <p> <i>Public DNS namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, Amazon Route 53 associates the health check with all the records that you specify in <code>DnsConfig</code>.</p> <p> <b>A and AAAA records</b> </p> <p>If <code>DnsConfig</code> includes configurations for both A and AAAA records, Route 53 creates a health check that uses the IPv4 address to check the health of the resource. If the endpoint that is specified by the IPv4 address is unhealthy, Route 53 considers both the A and AAAA records to be unhealthy. </p> <p> <b>CNAME records</b> </p> <p>You can't specify settings for <code>HealthCheckConfig</code> when the <code>DNSConfig</code> includes <code>CNAME</code> for the value of <code>Type</code>. If you do, the <code>CreateService</code> request will fail with an <code>InvalidInput</code> error.</p> <p> <b>Request interval</b> </p> <p>The health check uses 30 seconds as the request interval. This is the number of seconds between the time that each Route 53 health checker gets a response from your endpoint and the time that it sends the next health check request. A health checker in each data center around the world sends your endpoint a health check request every 30 seconds. On average, your endpoint receives a health check request about every two seconds. Health checkers in different data centers don't coordinate with one another, so you'll sometimes see several requests per second followed by a few seconds with no health checks at all.</p> <p> <b>Health checking regions</b> </p> <p>Health checkers perform checks from all Route 53 health-checking regions. For a list of the current regions, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a>.</p> <p> <b>Alias records</b> </p> <p>When you register an instance, if you include the <code>AWS_ALIAS_DNS_NAME</code> attribute, Route 53 creates an alias record. Note the following:</p> <ul> <li> <p>Route 53 automatically sets <code>EvaluateTargetHealth</code> to true for alias records. When <code>EvaluateTargetHealth</code> is true, the alias record inherits the health of the referenced AWS resource. such as an ELB load balancer. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth">EvaluateTargetHealth</a>.</p> </li> <li> <p>If you include <code>HealthCheckConfig</code> and then use the service to register an instance that creates an alias record, Route 53 doesn't create the health check.</p> </li> </ul> <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing">Route 53 Pricing</a>.</p>
newtype HealthCheckConfig = HealthCheckConfig 
  { "Type" :: (HealthCheckType)
  , "ResourcePath" :: Maybe (ResourcePath)
  , "FailureThreshold" :: Maybe (FailureThreshold)
  }
derive instance newtypeHealthCheckConfig :: Newtype HealthCheckConfig _
derive instance repGenericHealthCheckConfig :: Generic HealthCheckConfig _
instance showHealthCheckConfig :: Show HealthCheckConfig where show = genericShow
instance decodeHealthCheckConfig :: Decode HealthCheckConfig where decode = genericDecode options
instance encodeHealthCheckConfig :: Encode HealthCheckConfig where encode = genericEncode options

-- | Constructs HealthCheckConfig from required parameters
newHealthCheckConfig :: HealthCheckType -> HealthCheckConfig
newHealthCheckConfig _Type = HealthCheckConfig { "Type": _Type, "FailureThreshold": Nothing, "ResourcePath": Nothing }

-- | Constructs HealthCheckConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHealthCheckConfig' :: HealthCheckType -> ( { "Type" :: (HealthCheckType) , "ResourcePath" :: Maybe (ResourcePath) , "FailureThreshold" :: Maybe (FailureThreshold) } -> {"Type" :: (HealthCheckType) , "ResourcePath" :: Maybe (ResourcePath) , "FailureThreshold" :: Maybe (FailureThreshold) } ) -> HealthCheckConfig
newHealthCheckConfig' _Type customize = (HealthCheckConfig <<< customize) { "Type": _Type, "FailureThreshold": Nothing, "ResourcePath": Nothing }



newtype HealthCheckType = HealthCheckType String
derive instance newtypeHealthCheckType :: Newtype HealthCheckType _
derive instance repGenericHealthCheckType :: Generic HealthCheckType _
instance showHealthCheckType :: Show HealthCheckType where show = genericShow
instance decodeHealthCheckType :: Decode HealthCheckType where decode = genericDecode options
instance encodeHealthCheckType :: Encode HealthCheckType where encode = genericEncode options



newtype HealthStatus = HealthStatus String
derive instance newtypeHealthStatus :: Newtype HealthStatus _
derive instance repGenericHealthStatus :: Generic HealthStatus _
instance showHealthStatus :: Show HealthStatus where show = genericShow
instance decodeHealthStatus :: Decode HealthStatus where decode = genericDecode options
instance encodeHealthStatus :: Encode HealthStatus where encode = genericEncode options



-- | <p>A complex type that contains information about an instance that Amazon Route 53 creates when you submit a <code>RegisterInstance</code> request.</p>
newtype Instance = Instance 
  { "Id" :: (ResourceId)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "Attributes" :: Maybe (Attributes)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where show = genericShow
instance decodeInstance :: Decode Instance where decode = genericDecode options
instance encodeInstance :: Encode Instance where encode = genericEncode options

-- | Constructs Instance from required parameters
newInstance :: ResourceId -> Instance
newInstance _Id = Instance { "Id": _Id, "Attributes": Nothing, "CreatorRequestId": Nothing }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ResourceId -> ( { "Id" :: (ResourceId) , "CreatorRequestId" :: Maybe (ResourceId) , "Attributes" :: Maybe (Attributes) } -> {"Id" :: (ResourceId) , "CreatorRequestId" :: Maybe (ResourceId) , "Attributes" :: Maybe (Attributes) } ) -> Instance
newInstance' _Id customize = (Instance <<< customize) { "Id": _Id, "Attributes": Nothing, "CreatorRequestId": Nothing }



newtype InstanceHealthStatusMap = InstanceHealthStatusMap (StrMap.StrMap HealthStatus)
derive instance newtypeInstanceHealthStatusMap :: Newtype InstanceHealthStatusMap _
derive instance repGenericInstanceHealthStatusMap :: Generic InstanceHealthStatusMap _
instance showInstanceHealthStatusMap :: Show InstanceHealthStatusMap where show = genericShow
instance decodeInstanceHealthStatusMap :: Decode InstanceHealthStatusMap where decode = genericDecode options
instance encodeInstanceHealthStatusMap :: Encode InstanceHealthStatusMap where encode = genericEncode options



newtype InstanceIdList = InstanceIdList (Array ResourceId)
derive instance newtypeInstanceIdList :: Newtype InstanceIdList _
derive instance repGenericInstanceIdList :: Generic InstanceIdList _
instance showInstanceIdList :: Show InstanceIdList where show = genericShow
instance decodeInstanceIdList :: Decode InstanceIdList where decode = genericDecode options
instance encodeInstanceIdList :: Encode InstanceIdList where encode = genericEncode options



-- | <p>No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.</p>
newtype InstanceNotFound = InstanceNotFound 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInstanceNotFound :: Newtype InstanceNotFound _
derive instance repGenericInstanceNotFound :: Generic InstanceNotFound _
instance showInstanceNotFound :: Show InstanceNotFound where show = genericShow
instance decodeInstanceNotFound :: Decode InstanceNotFound where decode = genericDecode options
instance encodeInstanceNotFound :: Encode InstanceNotFound where encode = genericEncode options

-- | Constructs InstanceNotFound from required parameters
newInstanceNotFound :: InstanceNotFound
newInstanceNotFound  = InstanceNotFound { "Message": Nothing }

-- | Constructs InstanceNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceNotFound' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InstanceNotFound
newInstanceNotFound'  customize = (InstanceNotFound <<< customize) { "Message": Nothing }



-- | <p>A complex type that contains information about the instances that you registered by using a specified service.</p>
newtype InstanceSummary = InstanceSummary 
  { "Id" :: Maybe (ResourceId)
  , "Attributes" :: Maybe (Attributes)
  }
derive instance newtypeInstanceSummary :: Newtype InstanceSummary _
derive instance repGenericInstanceSummary :: Generic InstanceSummary _
instance showInstanceSummary :: Show InstanceSummary where show = genericShow
instance decodeInstanceSummary :: Decode InstanceSummary where decode = genericDecode options
instance encodeInstanceSummary :: Encode InstanceSummary where encode = genericEncode options

-- | Constructs InstanceSummary from required parameters
newInstanceSummary :: InstanceSummary
newInstanceSummary  = InstanceSummary { "Attributes": Nothing, "Id": Nothing }

-- | Constructs InstanceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceSummary' :: ( { "Id" :: Maybe (ResourceId) , "Attributes" :: Maybe (Attributes) } -> {"Id" :: Maybe (ResourceId) , "Attributes" :: Maybe (Attributes) } ) -> InstanceSummary
newInstanceSummary'  customize = (InstanceSummary <<< customize) { "Attributes": Nothing, "Id": Nothing }



newtype InstanceSummaryList = InstanceSummaryList (Array InstanceSummary)
derive instance newtypeInstanceSummaryList :: Newtype InstanceSummaryList _
derive instance repGenericInstanceSummaryList :: Generic InstanceSummaryList _
instance showInstanceSummaryList :: Show InstanceSummaryList where show = genericShow
instance decodeInstanceSummaryList :: Decode InstanceSummaryList where decode = genericDecode options
instance encodeInstanceSummaryList :: Encode InstanceSummaryList where encode = genericEncode options



-- | <p>One or more specified values aren't valid. For example, when you're creating a namespace, the value of <code>Name</code> might not be a valid DNS name.</p>
newtype InvalidInput = InvalidInput 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidInput :: Newtype InvalidInput _
derive instance repGenericInvalidInput :: Generic InvalidInput _
instance showInvalidInput :: Show InvalidInput where show = genericShow
instance decodeInvalidInput :: Decode InvalidInput where decode = genericDecode options
instance encodeInvalidInput :: Encode InvalidInput where encode = genericEncode options

-- | Constructs InvalidInput from required parameters
newInvalidInput :: InvalidInput
newInvalidInput  = InvalidInput { "Message": Nothing }

-- | Constructs InvalidInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInput' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InvalidInput
newInvalidInput'  customize = (InvalidInput <<< customize) { "Message": Nothing }



newtype ListInstancesRequest = ListInstancesRequest 
  { "ServiceId" :: (ResourceId)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListInstancesRequest :: Newtype ListInstancesRequest _
derive instance repGenericListInstancesRequest :: Generic ListInstancesRequest _
instance showListInstancesRequest :: Show ListInstancesRequest where show = genericShow
instance decodeListInstancesRequest :: Decode ListInstancesRequest where decode = genericDecode options
instance encodeListInstancesRequest :: Encode ListInstancesRequest where encode = genericEncode options

-- | Constructs ListInstancesRequest from required parameters
newListInstancesRequest :: ResourceId -> ListInstancesRequest
newListInstancesRequest _ServiceId = ListInstancesRequest { "ServiceId": _ServiceId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListInstancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesRequest' :: ResourceId -> ( { "ServiceId" :: (ResourceId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ServiceId" :: (ResourceId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListInstancesRequest
newListInstancesRequest' _ServiceId customize = (ListInstancesRequest <<< customize) { "ServiceId": _ServiceId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListInstancesResponse = ListInstancesResponse 
  { "Instances" :: Maybe (InstanceSummaryList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListInstancesResponse :: Newtype ListInstancesResponse _
derive instance repGenericListInstancesResponse :: Generic ListInstancesResponse _
instance showListInstancesResponse :: Show ListInstancesResponse where show = genericShow
instance decodeListInstancesResponse :: Decode ListInstancesResponse where decode = genericDecode options
instance encodeListInstancesResponse :: Encode ListInstancesResponse where encode = genericEncode options

-- | Constructs ListInstancesResponse from required parameters
newListInstancesResponse :: ListInstancesResponse
newListInstancesResponse  = ListInstancesResponse { "Instances": Nothing, "NextToken": Nothing }

-- | Constructs ListInstancesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesResponse' :: ( { "Instances" :: Maybe (InstanceSummaryList) , "NextToken" :: Maybe (NextToken) } -> {"Instances" :: Maybe (InstanceSummaryList) , "NextToken" :: Maybe (NextToken) } ) -> ListInstancesResponse
newListInstancesResponse'  customize = (ListInstancesResponse <<< customize) { "Instances": Nothing, "NextToken": Nothing }



newtype ListNamespacesRequest = ListNamespacesRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  , "Filters" :: Maybe (NamespaceFilters)
  }
derive instance newtypeListNamespacesRequest :: Newtype ListNamespacesRequest _
derive instance repGenericListNamespacesRequest :: Generic ListNamespacesRequest _
instance showListNamespacesRequest :: Show ListNamespacesRequest where show = genericShow
instance decodeListNamespacesRequest :: Decode ListNamespacesRequest where decode = genericDecode options
instance encodeListNamespacesRequest :: Encode ListNamespacesRequest where encode = genericEncode options

-- | Constructs ListNamespacesRequest from required parameters
newListNamespacesRequest :: ListNamespacesRequest
newListNamespacesRequest  = ListNamespacesRequest { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListNamespacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListNamespacesRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) , "Filters" :: Maybe (NamespaceFilters) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) , "Filters" :: Maybe (NamespaceFilters) } ) -> ListNamespacesRequest
newListNamespacesRequest'  customize = (ListNamespacesRequest <<< customize) { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListNamespacesResponse = ListNamespacesResponse 
  { "Namespaces" :: Maybe (NamespaceSummariesList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListNamespacesResponse :: Newtype ListNamespacesResponse _
derive instance repGenericListNamespacesResponse :: Generic ListNamespacesResponse _
instance showListNamespacesResponse :: Show ListNamespacesResponse where show = genericShow
instance decodeListNamespacesResponse :: Decode ListNamespacesResponse where decode = genericDecode options
instance encodeListNamespacesResponse :: Encode ListNamespacesResponse where encode = genericEncode options

-- | Constructs ListNamespacesResponse from required parameters
newListNamespacesResponse :: ListNamespacesResponse
newListNamespacesResponse  = ListNamespacesResponse { "Namespaces": Nothing, "NextToken": Nothing }

-- | Constructs ListNamespacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListNamespacesResponse' :: ( { "Namespaces" :: Maybe (NamespaceSummariesList) , "NextToken" :: Maybe (NextToken) } -> {"Namespaces" :: Maybe (NamespaceSummariesList) , "NextToken" :: Maybe (NextToken) } ) -> ListNamespacesResponse
newListNamespacesResponse'  customize = (ListNamespacesResponse <<< customize) { "Namespaces": Nothing, "NextToken": Nothing }



newtype ListOperationsRequest = ListOperationsRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  , "Filters" :: Maybe (OperationFilters)
  }
derive instance newtypeListOperationsRequest :: Newtype ListOperationsRequest _
derive instance repGenericListOperationsRequest :: Generic ListOperationsRequest _
instance showListOperationsRequest :: Show ListOperationsRequest where show = genericShow
instance decodeListOperationsRequest :: Decode ListOperationsRequest where decode = genericDecode options
instance encodeListOperationsRequest :: Encode ListOperationsRequest where encode = genericEncode options

-- | Constructs ListOperationsRequest from required parameters
newListOperationsRequest :: ListOperationsRequest
newListOperationsRequest  = ListOperationsRequest { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListOperationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) , "Filters" :: Maybe (OperationFilters) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) , "Filters" :: Maybe (OperationFilters) } ) -> ListOperationsRequest
newListOperationsRequest'  customize = (ListOperationsRequest <<< customize) { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListOperationsResponse = ListOperationsResponse 
  { "Operations" :: Maybe (OperationSummaryList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListOperationsResponse :: Newtype ListOperationsResponse _
derive instance repGenericListOperationsResponse :: Generic ListOperationsResponse _
instance showListOperationsResponse :: Show ListOperationsResponse where show = genericShow
instance decodeListOperationsResponse :: Decode ListOperationsResponse where decode = genericDecode options
instance encodeListOperationsResponse :: Encode ListOperationsResponse where encode = genericEncode options

-- | Constructs ListOperationsResponse from required parameters
newListOperationsResponse :: ListOperationsResponse
newListOperationsResponse  = ListOperationsResponse { "NextToken": Nothing, "Operations": Nothing }

-- | Constructs ListOperationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOperationsResponse' :: ( { "Operations" :: Maybe (OperationSummaryList) , "NextToken" :: Maybe (NextToken) } -> {"Operations" :: Maybe (OperationSummaryList) , "NextToken" :: Maybe (NextToken) } ) -> ListOperationsResponse
newListOperationsResponse'  customize = (ListOperationsResponse <<< customize) { "NextToken": Nothing, "Operations": Nothing }



newtype ListServicesRequest = ListServicesRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  , "Filters" :: Maybe (ServiceFilters)
  }
derive instance newtypeListServicesRequest :: Newtype ListServicesRequest _
derive instance repGenericListServicesRequest :: Generic ListServicesRequest _
instance showListServicesRequest :: Show ListServicesRequest where show = genericShow
instance decodeListServicesRequest :: Decode ListServicesRequest where decode = genericDecode options
instance encodeListServicesRequest :: Encode ListServicesRequest where encode = genericEncode options

-- | Constructs ListServicesRequest from required parameters
newListServicesRequest :: ListServicesRequest
newListServicesRequest  = ListServicesRequest { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListServicesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) , "Filters" :: Maybe (ServiceFilters) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) , "Filters" :: Maybe (ServiceFilters) } ) -> ListServicesRequest
newListServicesRequest'  customize = (ListServicesRequest <<< customize) { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListServicesResponse = ListServicesResponse 
  { "Services" :: Maybe (ServiceSummariesList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListServicesResponse :: Newtype ListServicesResponse _
derive instance repGenericListServicesResponse :: Generic ListServicesResponse _
instance showListServicesResponse :: Show ListServicesResponse where show = genericShow
instance decodeListServicesResponse :: Decode ListServicesResponse where decode = genericDecode options
instance encodeListServicesResponse :: Encode ListServicesResponse where encode = genericEncode options

-- | Constructs ListServicesResponse from required parameters
newListServicesResponse :: ListServicesResponse
newListServicesResponse  = ListServicesResponse { "NextToken": Nothing, "Services": Nothing }

-- | Constructs ListServicesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServicesResponse' :: ( { "Services" :: Maybe (ServiceSummariesList) , "NextToken" :: Maybe (NextToken) } -> {"Services" :: Maybe (ServiceSummariesList) , "NextToken" :: Maybe (NextToken) } ) -> ListServicesResponse
newListServicesResponse'  customize = (ListServicesResponse <<< customize) { "NextToken": Nothing, "Services": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



-- | <p>A complex type that contains information about a specified namespace.</p>
newtype Namespace = Namespace 
  { "Id" :: Maybe (ResourceId)
  , "Arn" :: Maybe (Arn)
  , "Name" :: Maybe (NamespaceName)
  , "Type" :: Maybe (NamespaceType)
  , "Description" :: Maybe (ResourceDescription)
  , "ServiceCount" :: Maybe (ResourceCount)
  , "Properties" :: Maybe (NamespaceProperties)
  , "CreateDate" :: Maybe (Types.Timestamp)
  , "CreatorRequestId" :: Maybe (ResourceId)
  }
derive instance newtypeNamespace :: Newtype Namespace _
derive instance repGenericNamespace :: Generic Namespace _
instance showNamespace :: Show Namespace where show = genericShow
instance decodeNamespace :: Decode Namespace where decode = genericDecode options
instance encodeNamespace :: Encode Namespace where encode = genericEncode options

-- | Constructs Namespace from required parameters
newNamespace :: Namespace
newNamespace  = Namespace { "Arn": Nothing, "CreateDate": Nothing, "CreatorRequestId": Nothing, "Description": Nothing, "Id": Nothing, "Name": Nothing, "Properties": Nothing, "ServiceCount": Nothing, "Type": Nothing }

-- | Constructs Namespace's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespace' :: ( { "Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (NamespaceName) , "Type" :: Maybe (NamespaceType) , "Description" :: Maybe (ResourceDescription) , "ServiceCount" :: Maybe (ResourceCount) , "Properties" :: Maybe (NamespaceProperties) , "CreateDate" :: Maybe (Types.Timestamp) , "CreatorRequestId" :: Maybe (ResourceId) } -> {"Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (NamespaceName) , "Type" :: Maybe (NamespaceType) , "Description" :: Maybe (ResourceDescription) , "ServiceCount" :: Maybe (ResourceCount) , "Properties" :: Maybe (NamespaceProperties) , "CreateDate" :: Maybe (Types.Timestamp) , "CreatorRequestId" :: Maybe (ResourceId) } ) -> Namespace
newNamespace'  customize = (Namespace <<< customize) { "Arn": Nothing, "CreateDate": Nothing, "CreatorRequestId": Nothing, "Description": Nothing, "Id": Nothing, "Name": Nothing, "Properties": Nothing, "ServiceCount": Nothing, "Type": Nothing }



-- | <p>The namespace that you're trying to create already exists.</p>
newtype NamespaceAlreadyExists = NamespaceAlreadyExists 
  { "Message" :: Maybe (ErrorMessage)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "NamespaceId" :: Maybe (ResourceId)
  }
derive instance newtypeNamespaceAlreadyExists :: Newtype NamespaceAlreadyExists _
derive instance repGenericNamespaceAlreadyExists :: Generic NamespaceAlreadyExists _
instance showNamespaceAlreadyExists :: Show NamespaceAlreadyExists where show = genericShow
instance decodeNamespaceAlreadyExists :: Decode NamespaceAlreadyExists where decode = genericDecode options
instance encodeNamespaceAlreadyExists :: Encode NamespaceAlreadyExists where encode = genericEncode options

-- | Constructs NamespaceAlreadyExists from required parameters
newNamespaceAlreadyExists :: NamespaceAlreadyExists
newNamespaceAlreadyExists  = NamespaceAlreadyExists { "CreatorRequestId": Nothing, "Message": Nothing, "NamespaceId": Nothing }

-- | Constructs NamespaceAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceAlreadyExists' :: ( { "Message" :: Maybe (ErrorMessage) , "CreatorRequestId" :: Maybe (ResourceId) , "NamespaceId" :: Maybe (ResourceId) } -> {"Message" :: Maybe (ErrorMessage) , "CreatorRequestId" :: Maybe (ResourceId) , "NamespaceId" :: Maybe (ResourceId) } ) -> NamespaceAlreadyExists
newNamespaceAlreadyExists'  customize = (NamespaceAlreadyExists <<< customize) { "CreatorRequestId": Nothing, "Message": Nothing, "NamespaceId": Nothing }



-- | <p>A complex type that identifies the namespaces that you want to list. You can choose to list public or private namespaces.</p>
newtype NamespaceFilter = NamespaceFilter 
  { "Name" :: (NamespaceFilterName)
  , "Values" :: (FilterValues)
  , "Condition" :: Maybe (FilterCondition)
  }
derive instance newtypeNamespaceFilter :: Newtype NamespaceFilter _
derive instance repGenericNamespaceFilter :: Generic NamespaceFilter _
instance showNamespaceFilter :: Show NamespaceFilter where show = genericShow
instance decodeNamespaceFilter :: Decode NamespaceFilter where decode = genericDecode options
instance encodeNamespaceFilter :: Encode NamespaceFilter where encode = genericEncode options

-- | Constructs NamespaceFilter from required parameters
newNamespaceFilter :: NamespaceFilterName -> FilterValues -> NamespaceFilter
newNamespaceFilter _Name _Values = NamespaceFilter { "Name": _Name, "Values": _Values, "Condition": Nothing }

-- | Constructs NamespaceFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceFilter' :: NamespaceFilterName -> FilterValues -> ( { "Name" :: (NamespaceFilterName) , "Values" :: (FilterValues) , "Condition" :: Maybe (FilterCondition) } -> {"Name" :: (NamespaceFilterName) , "Values" :: (FilterValues) , "Condition" :: Maybe (FilterCondition) } ) -> NamespaceFilter
newNamespaceFilter' _Name _Values customize = (NamespaceFilter <<< customize) { "Name": _Name, "Values": _Values, "Condition": Nothing }



newtype NamespaceFilterName = NamespaceFilterName String
derive instance newtypeNamespaceFilterName :: Newtype NamespaceFilterName _
derive instance repGenericNamespaceFilterName :: Generic NamespaceFilterName _
instance showNamespaceFilterName :: Show NamespaceFilterName where show = genericShow
instance decodeNamespaceFilterName :: Decode NamespaceFilterName where decode = genericDecode options
instance encodeNamespaceFilterName :: Encode NamespaceFilterName where encode = genericEncode options



newtype NamespaceFilters = NamespaceFilters (Array NamespaceFilter)
derive instance newtypeNamespaceFilters :: Newtype NamespaceFilters _
derive instance repGenericNamespaceFilters :: Generic NamespaceFilters _
instance showNamespaceFilters :: Show NamespaceFilters where show = genericShow
instance decodeNamespaceFilters :: Decode NamespaceFilters where decode = genericDecode options
instance encodeNamespaceFilters :: Encode NamespaceFilters where encode = genericEncode options



newtype NamespaceName = NamespaceName String
derive instance newtypeNamespaceName :: Newtype NamespaceName _
derive instance repGenericNamespaceName :: Generic NamespaceName _
instance showNamespaceName :: Show NamespaceName where show = genericShow
instance decodeNamespaceName :: Decode NamespaceName where decode = genericDecode options
instance encodeNamespaceName :: Encode NamespaceName where encode = genericEncode options



-- | <p>No namespace exists with the specified ID.</p>
newtype NamespaceNotFound = NamespaceNotFound 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNamespaceNotFound :: Newtype NamespaceNotFound _
derive instance repGenericNamespaceNotFound :: Generic NamespaceNotFound _
instance showNamespaceNotFound :: Show NamespaceNotFound where show = genericShow
instance decodeNamespaceNotFound :: Decode NamespaceNotFound where decode = genericDecode options
instance encodeNamespaceNotFound :: Encode NamespaceNotFound where encode = genericEncode options

-- | Constructs NamespaceNotFound from required parameters
newNamespaceNotFound :: NamespaceNotFound
newNamespaceNotFound  = NamespaceNotFound { "Message": Nothing }

-- | Constructs NamespaceNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceNotFound' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> NamespaceNotFound
newNamespaceNotFound'  customize = (NamespaceNotFound <<< customize) { "Message": Nothing }



-- | <p>A complex type that contains information that is specific to the namespace type.</p>
newtype NamespaceProperties = NamespaceProperties 
  { "DnsProperties" :: Maybe (DnsProperties)
  }
derive instance newtypeNamespaceProperties :: Newtype NamespaceProperties _
derive instance repGenericNamespaceProperties :: Generic NamespaceProperties _
instance showNamespaceProperties :: Show NamespaceProperties where show = genericShow
instance decodeNamespaceProperties :: Decode NamespaceProperties where decode = genericDecode options
instance encodeNamespaceProperties :: Encode NamespaceProperties where encode = genericEncode options

-- | Constructs NamespaceProperties from required parameters
newNamespaceProperties :: NamespaceProperties
newNamespaceProperties  = NamespaceProperties { "DnsProperties": Nothing }

-- | Constructs NamespaceProperties's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceProperties' :: ( { "DnsProperties" :: Maybe (DnsProperties) } -> {"DnsProperties" :: Maybe (DnsProperties) } ) -> NamespaceProperties
newNamespaceProperties'  customize = (NamespaceProperties <<< customize) { "DnsProperties": Nothing }



newtype NamespaceSummariesList = NamespaceSummariesList (Array NamespaceSummary)
derive instance newtypeNamespaceSummariesList :: Newtype NamespaceSummariesList _
derive instance repGenericNamespaceSummariesList :: Generic NamespaceSummariesList _
instance showNamespaceSummariesList :: Show NamespaceSummariesList where show = genericShow
instance decodeNamespaceSummariesList :: Decode NamespaceSummariesList where decode = genericDecode options
instance encodeNamespaceSummariesList :: Encode NamespaceSummariesList where encode = genericEncode options



-- | <p>A complex type that contains information about a namespace.</p>
newtype NamespaceSummary = NamespaceSummary 
  { "Id" :: Maybe (ResourceId)
  , "Arn" :: Maybe (Arn)
  , "Name" :: Maybe (NamespaceName)
  , "Type" :: Maybe (NamespaceType)
  }
derive instance newtypeNamespaceSummary :: Newtype NamespaceSummary _
derive instance repGenericNamespaceSummary :: Generic NamespaceSummary _
instance showNamespaceSummary :: Show NamespaceSummary where show = genericShow
instance decodeNamespaceSummary :: Decode NamespaceSummary where decode = genericDecode options
instance encodeNamespaceSummary :: Encode NamespaceSummary where encode = genericEncode options

-- | Constructs NamespaceSummary from required parameters
newNamespaceSummary :: NamespaceSummary
newNamespaceSummary  = NamespaceSummary { "Arn": Nothing, "Id": Nothing, "Name": Nothing, "Type": Nothing }

-- | Constructs NamespaceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNamespaceSummary' :: ( { "Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (NamespaceName) , "Type" :: Maybe (NamespaceType) } -> {"Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (NamespaceName) , "Type" :: Maybe (NamespaceType) } ) -> NamespaceSummary
newNamespaceSummary'  customize = (NamespaceSummary <<< customize) { "Arn": Nothing, "Id": Nothing, "Name": Nothing, "Type": Nothing }



newtype NamespaceType = NamespaceType String
derive instance newtypeNamespaceType :: Newtype NamespaceType _
derive instance repGenericNamespaceType :: Generic NamespaceType _
instance showNamespaceType :: Show NamespaceType where show = genericShow
instance decodeNamespaceType :: Decode NamespaceType where decode = genericDecode options
instance encodeNamespaceType :: Encode NamespaceType where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>A complex type that contains information about a specified operation.</p>
newtype Operation = Operation 
  { "Id" :: Maybe (OperationId)
  , "Type" :: Maybe (OperationType)
  , "Status" :: Maybe (OperationStatus)
  , "ErrorMessage" :: Maybe (Message)
  , "ErrorCode" :: Maybe (Code)
  , "CreateDate" :: Maybe (Types.Timestamp)
  , "UpdateDate" :: Maybe (Types.Timestamp)
  , "Targets" :: Maybe (OperationTargetsMap)
  }
derive instance newtypeOperation :: Newtype Operation _
derive instance repGenericOperation :: Generic Operation _
instance showOperation :: Show Operation where show = genericShow
instance decodeOperation :: Decode Operation where decode = genericDecode options
instance encodeOperation :: Encode Operation where encode = genericEncode options

-- | Constructs Operation from required parameters
newOperation :: Operation
newOperation  = Operation { "CreateDate": Nothing, "ErrorCode": Nothing, "ErrorMessage": Nothing, "Id": Nothing, "Status": Nothing, "Targets": Nothing, "Type": Nothing, "UpdateDate": Nothing }

-- | Constructs Operation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperation' :: ( { "Id" :: Maybe (OperationId) , "Type" :: Maybe (OperationType) , "Status" :: Maybe (OperationStatus) , "ErrorMessage" :: Maybe (Message) , "ErrorCode" :: Maybe (Code) , "CreateDate" :: Maybe (Types.Timestamp) , "UpdateDate" :: Maybe (Types.Timestamp) , "Targets" :: Maybe (OperationTargetsMap) } -> {"Id" :: Maybe (OperationId) , "Type" :: Maybe (OperationType) , "Status" :: Maybe (OperationStatus) , "ErrorMessage" :: Maybe (Message) , "ErrorCode" :: Maybe (Code) , "CreateDate" :: Maybe (Types.Timestamp) , "UpdateDate" :: Maybe (Types.Timestamp) , "Targets" :: Maybe (OperationTargetsMap) } ) -> Operation
newOperation'  customize = (Operation <<< customize) { "CreateDate": Nothing, "ErrorCode": Nothing, "ErrorMessage": Nothing, "Id": Nothing, "Status": Nothing, "Targets": Nothing, "Type": Nothing, "UpdateDate": Nothing }



-- | <p>A complex type that lets you select the operations that you want to list.</p>
newtype OperationFilter = OperationFilter 
  { "Name" :: (OperationFilterName)
  , "Values" :: (FilterValues)
  , "Condition" :: Maybe (FilterCondition)
  }
derive instance newtypeOperationFilter :: Newtype OperationFilter _
derive instance repGenericOperationFilter :: Generic OperationFilter _
instance showOperationFilter :: Show OperationFilter where show = genericShow
instance decodeOperationFilter :: Decode OperationFilter where decode = genericDecode options
instance encodeOperationFilter :: Encode OperationFilter where encode = genericEncode options

-- | Constructs OperationFilter from required parameters
newOperationFilter :: OperationFilterName -> FilterValues -> OperationFilter
newOperationFilter _Name _Values = OperationFilter { "Name": _Name, "Values": _Values, "Condition": Nothing }

-- | Constructs OperationFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationFilter' :: OperationFilterName -> FilterValues -> ( { "Name" :: (OperationFilterName) , "Values" :: (FilterValues) , "Condition" :: Maybe (FilterCondition) } -> {"Name" :: (OperationFilterName) , "Values" :: (FilterValues) , "Condition" :: Maybe (FilterCondition) } ) -> OperationFilter
newOperationFilter' _Name _Values customize = (OperationFilter <<< customize) { "Name": _Name, "Values": _Values, "Condition": Nothing }



newtype OperationFilterName = OperationFilterName String
derive instance newtypeOperationFilterName :: Newtype OperationFilterName _
derive instance repGenericOperationFilterName :: Generic OperationFilterName _
instance showOperationFilterName :: Show OperationFilterName where show = genericShow
instance decodeOperationFilterName :: Decode OperationFilterName where decode = genericDecode options
instance encodeOperationFilterName :: Encode OperationFilterName where encode = genericEncode options



newtype OperationFilters = OperationFilters (Array OperationFilter)
derive instance newtypeOperationFilters :: Newtype OperationFilters _
derive instance repGenericOperationFilters :: Generic OperationFilters _
instance showOperationFilters :: Show OperationFilters where show = genericShow
instance decodeOperationFilters :: Decode OperationFilters where decode = genericDecode options
instance encodeOperationFilters :: Encode OperationFilters where encode = genericEncode options



newtype OperationId = OperationId String
derive instance newtypeOperationId :: Newtype OperationId _
derive instance repGenericOperationId :: Generic OperationId _
instance showOperationId :: Show OperationId where show = genericShow
instance decodeOperationId :: Decode OperationId where decode = genericDecode options
instance encodeOperationId :: Encode OperationId where encode = genericEncode options



-- | <p>No operation exists with the specified ID.</p>
newtype OperationNotFound = OperationNotFound 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeOperationNotFound :: Newtype OperationNotFound _
derive instance repGenericOperationNotFound :: Generic OperationNotFound _
instance showOperationNotFound :: Show OperationNotFound where show = genericShow
instance decodeOperationNotFound :: Decode OperationNotFound where decode = genericDecode options
instance encodeOperationNotFound :: Encode OperationNotFound where encode = genericEncode options

-- | Constructs OperationNotFound from required parameters
newOperationNotFound :: OperationNotFound
newOperationNotFound  = OperationNotFound { "Message": Nothing }

-- | Constructs OperationNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationNotFound' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> OperationNotFound
newOperationNotFound'  customize = (OperationNotFound <<< customize) { "Message": Nothing }



newtype OperationStatus = OperationStatus String
derive instance newtypeOperationStatus :: Newtype OperationStatus _
derive instance repGenericOperationStatus :: Generic OperationStatus _
instance showOperationStatus :: Show OperationStatus where show = genericShow
instance decodeOperationStatus :: Decode OperationStatus where decode = genericDecode options
instance encodeOperationStatus :: Encode OperationStatus where encode = genericEncode options



-- | <p>A complex type that contains information about an operation that matches the criteria that you specified in a <a>ListOperations</a> request.</p>
newtype OperationSummary = OperationSummary 
  { "Id" :: Maybe (OperationId)
  , "Status" :: Maybe (OperationStatus)
  }
derive instance newtypeOperationSummary :: Newtype OperationSummary _
derive instance repGenericOperationSummary :: Generic OperationSummary _
instance showOperationSummary :: Show OperationSummary where show = genericShow
instance decodeOperationSummary :: Decode OperationSummary where decode = genericDecode options
instance encodeOperationSummary :: Encode OperationSummary where encode = genericEncode options

-- | Constructs OperationSummary from required parameters
newOperationSummary :: OperationSummary
newOperationSummary  = OperationSummary { "Id": Nothing, "Status": Nothing }

-- | Constructs OperationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationSummary' :: ( { "Id" :: Maybe (OperationId) , "Status" :: Maybe (OperationStatus) } -> {"Id" :: Maybe (OperationId) , "Status" :: Maybe (OperationStatus) } ) -> OperationSummary
newOperationSummary'  customize = (OperationSummary <<< customize) { "Id": Nothing, "Status": Nothing }



newtype OperationSummaryList = OperationSummaryList (Array OperationSummary)
derive instance newtypeOperationSummaryList :: Newtype OperationSummaryList _
derive instance repGenericOperationSummaryList :: Generic OperationSummaryList _
instance showOperationSummaryList :: Show OperationSummaryList where show = genericShow
instance decodeOperationSummaryList :: Decode OperationSummaryList where decode = genericDecode options
instance encodeOperationSummaryList :: Encode OperationSummaryList where encode = genericEncode options



newtype OperationTargetType = OperationTargetType String
derive instance newtypeOperationTargetType :: Newtype OperationTargetType _
derive instance repGenericOperationTargetType :: Generic OperationTargetType _
instance showOperationTargetType :: Show OperationTargetType where show = genericShow
instance decodeOperationTargetType :: Decode OperationTargetType where decode = genericDecode options
instance encodeOperationTargetType :: Encode OperationTargetType where encode = genericEncode options



newtype OperationTargetsMap = OperationTargetsMap (StrMap.StrMap ResourceId)
derive instance newtypeOperationTargetsMap :: Newtype OperationTargetsMap _
derive instance repGenericOperationTargetsMap :: Generic OperationTargetsMap _
instance showOperationTargetsMap :: Show OperationTargetsMap where show = genericShow
instance decodeOperationTargetsMap :: Decode OperationTargetsMap where decode = genericDecode options
instance encodeOperationTargetsMap :: Encode OperationTargetsMap where encode = genericEncode options



newtype OperationType = OperationType String
derive instance newtypeOperationType :: Newtype OperationType _
derive instance repGenericOperationType :: Generic OperationType _
instance showOperationType :: Show OperationType where show = genericShow
instance decodeOperationType :: Decode OperationType where decode = genericDecode options
instance encodeOperationType :: Encode OperationType where encode = genericEncode options



newtype RecordTTL = RecordTTL Number
derive instance newtypeRecordTTL :: Newtype RecordTTL _
derive instance repGenericRecordTTL :: Generic RecordTTL _
instance showRecordTTL :: Show RecordTTL where show = genericShow
instance decodeRecordTTL :: Decode RecordTTL where decode = genericDecode options
instance encodeRecordTTL :: Encode RecordTTL where encode = genericEncode options



newtype RecordType = RecordType String
derive instance newtypeRecordType :: Newtype RecordType _
derive instance repGenericRecordType :: Generic RecordType _
instance showRecordType :: Show RecordType where show = genericShow
instance decodeRecordType :: Decode RecordType where decode = genericDecode options
instance encodeRecordType :: Encode RecordType where encode = genericEncode options



newtype RegisterInstanceRequest = RegisterInstanceRequest 
  { "ServiceId" :: (ResourceId)
  , "InstanceId" :: (ResourceId)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "Attributes" :: (Attributes)
  }
derive instance newtypeRegisterInstanceRequest :: Newtype RegisterInstanceRequest _
derive instance repGenericRegisterInstanceRequest :: Generic RegisterInstanceRequest _
instance showRegisterInstanceRequest :: Show RegisterInstanceRequest where show = genericShow
instance decodeRegisterInstanceRequest :: Decode RegisterInstanceRequest where decode = genericDecode options
instance encodeRegisterInstanceRequest :: Encode RegisterInstanceRequest where encode = genericEncode options

-- | Constructs RegisterInstanceRequest from required parameters
newRegisterInstanceRequest :: Attributes -> ResourceId -> ResourceId -> RegisterInstanceRequest
newRegisterInstanceRequest _Attributes _InstanceId _ServiceId = RegisterInstanceRequest { "Attributes": _Attributes, "InstanceId": _InstanceId, "ServiceId": _ServiceId, "CreatorRequestId": Nothing }

-- | Constructs RegisterInstanceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceRequest' :: Attributes -> ResourceId -> ResourceId -> ( { "ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) , "CreatorRequestId" :: Maybe (ResourceId) , "Attributes" :: (Attributes) } -> {"ServiceId" :: (ResourceId) , "InstanceId" :: (ResourceId) , "CreatorRequestId" :: Maybe (ResourceId) , "Attributes" :: (Attributes) } ) -> RegisterInstanceRequest
newRegisterInstanceRequest' _Attributes _InstanceId _ServiceId customize = (RegisterInstanceRequest <<< customize) { "Attributes": _Attributes, "InstanceId": _InstanceId, "ServiceId": _ServiceId, "CreatorRequestId": Nothing }



newtype RegisterInstanceResponse = RegisterInstanceResponse 
  { "OperationId" :: Maybe (OperationId)
  }
derive instance newtypeRegisterInstanceResponse :: Newtype RegisterInstanceResponse _
derive instance repGenericRegisterInstanceResponse :: Generic RegisterInstanceResponse _
instance showRegisterInstanceResponse :: Show RegisterInstanceResponse where show = genericShow
instance decodeRegisterInstanceResponse :: Decode RegisterInstanceResponse where decode = genericDecode options
instance encodeRegisterInstanceResponse :: Encode RegisterInstanceResponse where encode = genericEncode options

-- | Constructs RegisterInstanceResponse from required parameters
newRegisterInstanceResponse :: RegisterInstanceResponse
newRegisterInstanceResponse  = RegisterInstanceResponse { "OperationId": Nothing }

-- | Constructs RegisterInstanceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterInstanceResponse' :: ( { "OperationId" :: Maybe (OperationId) } -> {"OperationId" :: Maybe (OperationId) } ) -> RegisterInstanceResponse
newRegisterInstanceResponse'  customize = (RegisterInstanceResponse <<< customize) { "OperationId": Nothing }



newtype ResourceCount = ResourceCount Int
derive instance newtypeResourceCount :: Newtype ResourceCount _
derive instance repGenericResourceCount :: Generic ResourceCount _
instance showResourceCount :: Show ResourceCount where show = genericShow
instance decodeResourceCount :: Decode ResourceCount where decode = genericDecode options
instance encodeResourceCount :: Encode ResourceCount where encode = genericEncode options



newtype ResourceDescription = ResourceDescription String
derive instance newtypeResourceDescription :: Newtype ResourceDescription _
derive instance repGenericResourceDescription :: Generic ResourceDescription _
instance showResourceDescription :: Show ResourceDescription where show = genericShow
instance decodeResourceDescription :: Decode ResourceDescription where decode = genericDecode options
instance encodeResourceDescription :: Encode ResourceDescription where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



-- | <p>The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.</p>
newtype ResourceInUse = ResourceInUse 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeResourceInUse :: Newtype ResourceInUse _
derive instance repGenericResourceInUse :: Generic ResourceInUse _
instance showResourceInUse :: Show ResourceInUse where show = genericShow
instance decodeResourceInUse :: Decode ResourceInUse where decode = genericDecode options
instance encodeResourceInUse :: Encode ResourceInUse where encode = genericEncode options

-- | Constructs ResourceInUse from required parameters
newResourceInUse :: ResourceInUse
newResourceInUse  = ResourceInUse { "Message": Nothing }

-- | Constructs ResourceInUse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceInUse' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ResourceInUse
newResourceInUse'  customize = (ResourceInUse <<< customize) { "Message": Nothing }



-- | <p>The resource can't be created because you've reached the limit on the number of resources.</p>
newtype ResourceLimitExceeded = ResourceLimitExceeded 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeResourceLimitExceeded :: Newtype ResourceLimitExceeded _
derive instance repGenericResourceLimitExceeded :: Generic ResourceLimitExceeded _
instance showResourceLimitExceeded :: Show ResourceLimitExceeded where show = genericShow
instance decodeResourceLimitExceeded :: Decode ResourceLimitExceeded where decode = genericDecode options
instance encodeResourceLimitExceeded :: Encode ResourceLimitExceeded where encode = genericEncode options

-- | Constructs ResourceLimitExceeded from required parameters
newResourceLimitExceeded :: ResourceLimitExceeded
newResourceLimitExceeded  = ResourceLimitExceeded { "Message": Nothing }

-- | Constructs ResourceLimitExceeded's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceLimitExceeded' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ResourceLimitExceeded
newResourceLimitExceeded'  customize = (ResourceLimitExceeded <<< customize) { "Message": Nothing }



newtype ResourcePath = ResourcePath String
derive instance newtypeResourcePath :: Newtype ResourcePath _
derive instance repGenericResourcePath :: Generic ResourcePath _
instance showResourcePath :: Show ResourcePath where show = genericShow
instance decodeResourcePath :: Decode ResourcePath where decode = genericDecode options
instance encodeResourcePath :: Encode ResourcePath where encode = genericEncode options



newtype RoutingPolicy = RoutingPolicy String
derive instance newtypeRoutingPolicy :: Newtype RoutingPolicy _
derive instance repGenericRoutingPolicy :: Generic RoutingPolicy _
instance showRoutingPolicy :: Show RoutingPolicy where show = genericShow
instance decodeRoutingPolicy :: Decode RoutingPolicy where decode = genericDecode options
instance encodeRoutingPolicy :: Encode RoutingPolicy where encode = genericEncode options



-- | <p>A complex type that contains information about the specified service.</p>
newtype Service = Service 
  { "Id" :: Maybe (ResourceId)
  , "Arn" :: Maybe (Arn)
  , "Name" :: Maybe (ServiceName)
  , "Description" :: Maybe (ResourceDescription)
  , "InstanceCount" :: Maybe (ResourceCount)
  , "DnsConfig" :: Maybe (DnsConfig)
  , "HealthCheckConfig" :: Maybe (HealthCheckConfig)
  , "CreateDate" :: Maybe (Types.Timestamp)
  , "CreatorRequestId" :: Maybe (ResourceId)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "Arn": Nothing, "CreateDate": Nothing, "CreatorRequestId": Nothing, "Description": Nothing, "DnsConfig": Nothing, "HealthCheckConfig": Nothing, "Id": Nothing, "InstanceCount": Nothing, "Name": Nothing }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (ServiceName) , "Description" :: Maybe (ResourceDescription) , "InstanceCount" :: Maybe (ResourceCount) , "DnsConfig" :: Maybe (DnsConfig) , "HealthCheckConfig" :: Maybe (HealthCheckConfig) , "CreateDate" :: Maybe (Types.Timestamp) , "CreatorRequestId" :: Maybe (ResourceId) } -> {"Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (ServiceName) , "Description" :: Maybe (ResourceDescription) , "InstanceCount" :: Maybe (ResourceCount) , "DnsConfig" :: Maybe (DnsConfig) , "HealthCheckConfig" :: Maybe (HealthCheckConfig) , "CreateDate" :: Maybe (Types.Timestamp) , "CreatorRequestId" :: Maybe (ResourceId) } ) -> Service
newService'  customize = (Service <<< customize) { "Arn": Nothing, "CreateDate": Nothing, "CreatorRequestId": Nothing, "Description": Nothing, "DnsConfig": Nothing, "HealthCheckConfig": Nothing, "Id": Nothing, "InstanceCount": Nothing, "Name": Nothing }



-- | <p>The service can't be created because a service with the same name already exists.</p>
newtype ServiceAlreadyExists = ServiceAlreadyExists 
  { "Message" :: Maybe (ErrorMessage)
  , "CreatorRequestId" :: Maybe (ResourceId)
  , "ServiceId" :: Maybe (ResourceId)
  }
derive instance newtypeServiceAlreadyExists :: Newtype ServiceAlreadyExists _
derive instance repGenericServiceAlreadyExists :: Generic ServiceAlreadyExists _
instance showServiceAlreadyExists :: Show ServiceAlreadyExists where show = genericShow
instance decodeServiceAlreadyExists :: Decode ServiceAlreadyExists where decode = genericDecode options
instance encodeServiceAlreadyExists :: Encode ServiceAlreadyExists where encode = genericEncode options

-- | Constructs ServiceAlreadyExists from required parameters
newServiceAlreadyExists :: ServiceAlreadyExists
newServiceAlreadyExists  = ServiceAlreadyExists { "CreatorRequestId": Nothing, "Message": Nothing, "ServiceId": Nothing }

-- | Constructs ServiceAlreadyExists's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceAlreadyExists' :: ( { "Message" :: Maybe (ErrorMessage) , "CreatorRequestId" :: Maybe (ResourceId) , "ServiceId" :: Maybe (ResourceId) } -> {"Message" :: Maybe (ErrorMessage) , "CreatorRequestId" :: Maybe (ResourceId) , "ServiceId" :: Maybe (ResourceId) } ) -> ServiceAlreadyExists
newServiceAlreadyExists'  customize = (ServiceAlreadyExists <<< customize) { "CreatorRequestId": Nothing, "Message": Nothing, "ServiceId": Nothing }



-- | <p>A complex type that contains changes to an existing service.</p>
newtype ServiceChange = ServiceChange 
  { "Description" :: Maybe (ResourceDescription)
  , "DnsConfig" :: (DnsConfigChange)
  , "HealthCheckConfig" :: Maybe (HealthCheckConfig)
  }
derive instance newtypeServiceChange :: Newtype ServiceChange _
derive instance repGenericServiceChange :: Generic ServiceChange _
instance showServiceChange :: Show ServiceChange where show = genericShow
instance decodeServiceChange :: Decode ServiceChange where decode = genericDecode options
instance encodeServiceChange :: Encode ServiceChange where encode = genericEncode options

-- | Constructs ServiceChange from required parameters
newServiceChange :: DnsConfigChange -> ServiceChange
newServiceChange _DnsConfig = ServiceChange { "DnsConfig": _DnsConfig, "Description": Nothing, "HealthCheckConfig": Nothing }

-- | Constructs ServiceChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceChange' :: DnsConfigChange -> ( { "Description" :: Maybe (ResourceDescription) , "DnsConfig" :: (DnsConfigChange) , "HealthCheckConfig" :: Maybe (HealthCheckConfig) } -> {"Description" :: Maybe (ResourceDescription) , "DnsConfig" :: (DnsConfigChange) , "HealthCheckConfig" :: Maybe (HealthCheckConfig) } ) -> ServiceChange
newServiceChange' _DnsConfig customize = (ServiceChange <<< customize) { "DnsConfig": _DnsConfig, "Description": Nothing, "HealthCheckConfig": Nothing }



-- | <p>A complex type that lets you specify the namespaces that you want to list services for.</p>
newtype ServiceFilter = ServiceFilter 
  { "Name" :: (ServiceFilterName)
  , "Values" :: (FilterValues)
  , "Condition" :: Maybe (FilterCondition)
  }
derive instance newtypeServiceFilter :: Newtype ServiceFilter _
derive instance repGenericServiceFilter :: Generic ServiceFilter _
instance showServiceFilter :: Show ServiceFilter where show = genericShow
instance decodeServiceFilter :: Decode ServiceFilter where decode = genericDecode options
instance encodeServiceFilter :: Encode ServiceFilter where encode = genericEncode options

-- | Constructs ServiceFilter from required parameters
newServiceFilter :: ServiceFilterName -> FilterValues -> ServiceFilter
newServiceFilter _Name _Values = ServiceFilter { "Name": _Name, "Values": _Values, "Condition": Nothing }

-- | Constructs ServiceFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceFilter' :: ServiceFilterName -> FilterValues -> ( { "Name" :: (ServiceFilterName) , "Values" :: (FilterValues) , "Condition" :: Maybe (FilterCondition) } -> {"Name" :: (ServiceFilterName) , "Values" :: (FilterValues) , "Condition" :: Maybe (FilterCondition) } ) -> ServiceFilter
newServiceFilter' _Name _Values customize = (ServiceFilter <<< customize) { "Name": _Name, "Values": _Values, "Condition": Nothing }



newtype ServiceFilterName = ServiceFilterName String
derive instance newtypeServiceFilterName :: Newtype ServiceFilterName _
derive instance repGenericServiceFilterName :: Generic ServiceFilterName _
instance showServiceFilterName :: Show ServiceFilterName where show = genericShow
instance decodeServiceFilterName :: Decode ServiceFilterName where decode = genericDecode options
instance encodeServiceFilterName :: Encode ServiceFilterName where encode = genericEncode options



newtype ServiceFilters = ServiceFilters (Array ServiceFilter)
derive instance newtypeServiceFilters :: Newtype ServiceFilters _
derive instance repGenericServiceFilters :: Generic ServiceFilters _
instance showServiceFilters :: Show ServiceFilters where show = genericShow
instance decodeServiceFilters :: Decode ServiceFilters where decode = genericDecode options
instance encodeServiceFilters :: Encode ServiceFilters where encode = genericEncode options



newtype ServiceName = ServiceName String
derive instance newtypeServiceName :: Newtype ServiceName _
derive instance repGenericServiceName :: Generic ServiceName _
instance showServiceName :: Show ServiceName where show = genericShow
instance decodeServiceName :: Decode ServiceName where decode = genericDecode options
instance encodeServiceName :: Encode ServiceName where encode = genericEncode options



-- | <p>No service exists with the specified ID.</p>
newtype ServiceNotFound = ServiceNotFound 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeServiceNotFound :: Newtype ServiceNotFound _
derive instance repGenericServiceNotFound :: Generic ServiceNotFound _
instance showServiceNotFound :: Show ServiceNotFound where show = genericShow
instance decodeServiceNotFound :: Decode ServiceNotFound where decode = genericDecode options
instance encodeServiceNotFound :: Encode ServiceNotFound where encode = genericEncode options

-- | Constructs ServiceNotFound from required parameters
newServiceNotFound :: ServiceNotFound
newServiceNotFound  = ServiceNotFound { "Message": Nothing }

-- | Constructs ServiceNotFound's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceNotFound' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ServiceNotFound
newServiceNotFound'  customize = (ServiceNotFound <<< customize) { "Message": Nothing }



newtype ServiceSummariesList = ServiceSummariesList (Array ServiceSummary)
derive instance newtypeServiceSummariesList :: Newtype ServiceSummariesList _
derive instance repGenericServiceSummariesList :: Generic ServiceSummariesList _
instance showServiceSummariesList :: Show ServiceSummariesList where show = genericShow
instance decodeServiceSummariesList :: Decode ServiceSummariesList where decode = genericDecode options
instance encodeServiceSummariesList :: Encode ServiceSummariesList where encode = genericEncode options



-- | <p>A complex type that contains information about a specified service.</p>
newtype ServiceSummary = ServiceSummary 
  { "Id" :: Maybe (ResourceId)
  , "Arn" :: Maybe (Arn)
  , "Name" :: Maybe (ServiceName)
  , "Description" :: Maybe (ResourceDescription)
  , "InstanceCount" :: Maybe (ResourceCount)
  }
derive instance newtypeServiceSummary :: Newtype ServiceSummary _
derive instance repGenericServiceSummary :: Generic ServiceSummary _
instance showServiceSummary :: Show ServiceSummary where show = genericShow
instance decodeServiceSummary :: Decode ServiceSummary where decode = genericDecode options
instance encodeServiceSummary :: Encode ServiceSummary where encode = genericEncode options

-- | Constructs ServiceSummary from required parameters
newServiceSummary :: ServiceSummary
newServiceSummary  = ServiceSummary { "Arn": Nothing, "Description": Nothing, "Id": Nothing, "InstanceCount": Nothing, "Name": Nothing }

-- | Constructs ServiceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceSummary' :: ( { "Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (ServiceName) , "Description" :: Maybe (ResourceDescription) , "InstanceCount" :: Maybe (ResourceCount) } -> {"Id" :: Maybe (ResourceId) , "Arn" :: Maybe (Arn) , "Name" :: Maybe (ServiceName) , "Description" :: Maybe (ResourceDescription) , "InstanceCount" :: Maybe (ResourceCount) } ) -> ServiceSummary
newServiceSummary'  customize = (ServiceSummary <<< customize) { "Arn": Nothing, "Description": Nothing, "Id": Nothing, "InstanceCount": Nothing, "Name": Nothing }



newtype UpdateServiceRequest = UpdateServiceRequest 
  { "Id" :: (ResourceId)
  , "Service" :: (ServiceChange)
  }
derive instance newtypeUpdateServiceRequest :: Newtype UpdateServiceRequest _
derive instance repGenericUpdateServiceRequest :: Generic UpdateServiceRequest _
instance showUpdateServiceRequest :: Show UpdateServiceRequest where show = genericShow
instance decodeUpdateServiceRequest :: Decode UpdateServiceRequest where decode = genericDecode options
instance encodeUpdateServiceRequest :: Encode UpdateServiceRequest where encode = genericEncode options

-- | Constructs UpdateServiceRequest from required parameters
newUpdateServiceRequest :: ResourceId -> ServiceChange -> UpdateServiceRequest
newUpdateServiceRequest _Id _Service = UpdateServiceRequest { "Id": _Id, "Service": _Service }

-- | Constructs UpdateServiceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceRequest' :: ResourceId -> ServiceChange -> ( { "Id" :: (ResourceId) , "Service" :: (ServiceChange) } -> {"Id" :: (ResourceId) , "Service" :: (ServiceChange) } ) -> UpdateServiceRequest
newUpdateServiceRequest' _Id _Service customize = (UpdateServiceRequest <<< customize) { "Id": _Id, "Service": _Service }



newtype UpdateServiceResponse = UpdateServiceResponse 
  { "OperationId" :: Maybe (OperationId)
  }
derive instance newtypeUpdateServiceResponse :: Newtype UpdateServiceResponse _
derive instance repGenericUpdateServiceResponse :: Generic UpdateServiceResponse _
instance showUpdateServiceResponse :: Show UpdateServiceResponse where show = genericShow
instance decodeUpdateServiceResponse :: Decode UpdateServiceResponse where decode = genericDecode options
instance encodeUpdateServiceResponse :: Encode UpdateServiceResponse where encode = genericEncode options

-- | Constructs UpdateServiceResponse from required parameters
newUpdateServiceResponse :: UpdateServiceResponse
newUpdateServiceResponse  = UpdateServiceResponse { "OperationId": Nothing }

-- | Constructs UpdateServiceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateServiceResponse' :: ( { "OperationId" :: Maybe (OperationId) } -> {"OperationId" :: Maybe (OperationId) } ) -> UpdateServiceResponse
newUpdateServiceResponse'  customize = (UpdateServiceResponse <<< customize) { "OperationId": Nothing }

