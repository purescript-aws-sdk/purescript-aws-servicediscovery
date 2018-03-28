## Module AWS.ServiceDiscovery.Types

#### `options`

``` purescript
options :: Options
```

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `AttrKey`

``` purescript
newtype AttrKey
  = AttrKey String
```

##### Instances
``` purescript
Newtype AttrKey _
Generic AttrKey _
Show AttrKey
Decode AttrKey
Encode AttrKey
```

#### `AttrValue`

``` purescript
newtype AttrValue
  = AttrValue String
```

##### Instances
``` purescript
Newtype AttrValue _
Generic AttrValue _
Show AttrValue
Decode AttrValue
Encode AttrValue
```

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (StrMap AttrValue)
```

##### Instances
``` purescript
Newtype Attributes _
Generic Attributes _
Show Attributes
Decode Attributes
Encode Attributes
```

#### `Code`

``` purescript
newtype Code
  = Code String
```

##### Instances
``` purescript
Newtype Code _
Generic Code _
Show Code
Decode Code
Encode Code
```

#### `CreatePrivateDnsNamespaceRequest`

``` purescript
newtype CreatePrivateDnsNamespaceRequest
  = CreatePrivateDnsNamespaceRequest { "Name" :: NamespaceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription), "Vpc" :: ResourceId }
```

##### Instances
``` purescript
Newtype CreatePrivateDnsNamespaceRequest _
Generic CreatePrivateDnsNamespaceRequest _
Show CreatePrivateDnsNamespaceRequest
Decode CreatePrivateDnsNamespaceRequest
Encode CreatePrivateDnsNamespaceRequest
```

#### `newCreatePrivateDnsNamespaceRequest`

``` purescript
newCreatePrivateDnsNamespaceRequest :: NamespaceName -> ResourceId -> CreatePrivateDnsNamespaceRequest
```

Constructs CreatePrivateDnsNamespaceRequest from required parameters

#### `newCreatePrivateDnsNamespaceRequest'`

``` purescript
newCreatePrivateDnsNamespaceRequest' :: NamespaceName -> ResourceId -> ({ "Name" :: NamespaceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription), "Vpc" :: ResourceId } -> { "Name" :: NamespaceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription), "Vpc" :: ResourceId }) -> CreatePrivateDnsNamespaceRequest
```

Constructs CreatePrivateDnsNamespaceRequest's fields from required parameters

#### `CreatePrivateDnsNamespaceResponse`

``` purescript
newtype CreatePrivateDnsNamespaceResponse
  = CreatePrivateDnsNamespaceResponse { "OperationId" :: NullOrUndefined (OperationId) }
```

##### Instances
``` purescript
Newtype CreatePrivateDnsNamespaceResponse _
Generic CreatePrivateDnsNamespaceResponse _
Show CreatePrivateDnsNamespaceResponse
Decode CreatePrivateDnsNamespaceResponse
Encode CreatePrivateDnsNamespaceResponse
```

#### `newCreatePrivateDnsNamespaceResponse`

``` purescript
newCreatePrivateDnsNamespaceResponse :: CreatePrivateDnsNamespaceResponse
```

Constructs CreatePrivateDnsNamespaceResponse from required parameters

#### `newCreatePrivateDnsNamespaceResponse'`

``` purescript
newCreatePrivateDnsNamespaceResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId) } -> { "OperationId" :: NullOrUndefined (OperationId) }) -> CreatePrivateDnsNamespaceResponse
```

Constructs CreatePrivateDnsNamespaceResponse's fields from required parameters

#### `CreatePublicDnsNamespaceRequest`

``` purescript
newtype CreatePublicDnsNamespaceRequest
  = CreatePublicDnsNamespaceRequest { "Name" :: NamespaceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription) }
```

##### Instances
``` purescript
Newtype CreatePublicDnsNamespaceRequest _
Generic CreatePublicDnsNamespaceRequest _
Show CreatePublicDnsNamespaceRequest
Decode CreatePublicDnsNamespaceRequest
Encode CreatePublicDnsNamespaceRequest
```

#### `newCreatePublicDnsNamespaceRequest`

``` purescript
newCreatePublicDnsNamespaceRequest :: NamespaceName -> CreatePublicDnsNamespaceRequest
```

Constructs CreatePublicDnsNamespaceRequest from required parameters

#### `newCreatePublicDnsNamespaceRequest'`

``` purescript
newCreatePublicDnsNamespaceRequest' :: NamespaceName -> ({ "Name" :: NamespaceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription) } -> { "Name" :: NamespaceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription) }) -> CreatePublicDnsNamespaceRequest
```

Constructs CreatePublicDnsNamespaceRequest's fields from required parameters

#### `CreatePublicDnsNamespaceResponse`

``` purescript
newtype CreatePublicDnsNamespaceResponse
  = CreatePublicDnsNamespaceResponse { "OperationId" :: NullOrUndefined (OperationId) }
```

##### Instances
``` purescript
Newtype CreatePublicDnsNamespaceResponse _
Generic CreatePublicDnsNamespaceResponse _
Show CreatePublicDnsNamespaceResponse
Decode CreatePublicDnsNamespaceResponse
Encode CreatePublicDnsNamespaceResponse
```

#### `newCreatePublicDnsNamespaceResponse`

``` purescript
newCreatePublicDnsNamespaceResponse :: CreatePublicDnsNamespaceResponse
```

Constructs CreatePublicDnsNamespaceResponse from required parameters

#### `newCreatePublicDnsNamespaceResponse'`

``` purescript
newCreatePublicDnsNamespaceResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId) } -> { "OperationId" :: NullOrUndefined (OperationId) }) -> CreatePublicDnsNamespaceResponse
```

Constructs CreatePublicDnsNamespaceResponse's fields from required parameters

#### `CreateServiceRequest`

``` purescript
newtype CreateServiceRequest
  = CreateServiceRequest { "Name" :: ServiceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription), "DnsConfig" :: DnsConfig, "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig) }
```

##### Instances
``` purescript
Newtype CreateServiceRequest _
Generic CreateServiceRequest _
Show CreateServiceRequest
Decode CreateServiceRequest
Encode CreateServiceRequest
```

#### `newCreateServiceRequest`

``` purescript
newCreateServiceRequest :: DnsConfig -> ServiceName -> CreateServiceRequest
```

Constructs CreateServiceRequest from required parameters

#### `newCreateServiceRequest'`

``` purescript
newCreateServiceRequest' :: DnsConfig -> ServiceName -> ({ "Name" :: ServiceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription), "DnsConfig" :: DnsConfig, "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig) } -> { "Name" :: ServiceName, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Description" :: NullOrUndefined (ResourceDescription), "DnsConfig" :: DnsConfig, "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig) }) -> CreateServiceRequest
```

Constructs CreateServiceRequest's fields from required parameters

#### `CreateServiceResponse`

``` purescript
newtype CreateServiceResponse
  = CreateServiceResponse { "Service" :: NullOrUndefined (Service) }
```

##### Instances
``` purescript
Newtype CreateServiceResponse _
Generic CreateServiceResponse _
Show CreateServiceResponse
Decode CreateServiceResponse
Encode CreateServiceResponse
```

#### `newCreateServiceResponse`

``` purescript
newCreateServiceResponse :: CreateServiceResponse
```

Constructs CreateServiceResponse from required parameters

#### `newCreateServiceResponse'`

``` purescript
newCreateServiceResponse' :: ({ "Service" :: NullOrUndefined (Service) } -> { "Service" :: NullOrUndefined (Service) }) -> CreateServiceResponse
```

Constructs CreateServiceResponse's fields from required parameters

#### `DeleteNamespaceRequest`

``` purescript
newtype DeleteNamespaceRequest
  = DeleteNamespaceRequest { "Id" :: ResourceId }
```

##### Instances
``` purescript
Newtype DeleteNamespaceRequest _
Generic DeleteNamespaceRequest _
Show DeleteNamespaceRequest
Decode DeleteNamespaceRequest
Encode DeleteNamespaceRequest
```

#### `newDeleteNamespaceRequest`

``` purescript
newDeleteNamespaceRequest :: ResourceId -> DeleteNamespaceRequest
```

Constructs DeleteNamespaceRequest from required parameters

#### `newDeleteNamespaceRequest'`

``` purescript
newDeleteNamespaceRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> DeleteNamespaceRequest
```

Constructs DeleteNamespaceRequest's fields from required parameters

#### `DeleteNamespaceResponse`

``` purescript
newtype DeleteNamespaceResponse
  = DeleteNamespaceResponse { "OperationId" :: NullOrUndefined (OperationId) }
```

##### Instances
``` purescript
Newtype DeleteNamespaceResponse _
Generic DeleteNamespaceResponse _
Show DeleteNamespaceResponse
Decode DeleteNamespaceResponse
Encode DeleteNamespaceResponse
```

#### `newDeleteNamespaceResponse`

``` purescript
newDeleteNamespaceResponse :: DeleteNamespaceResponse
```

Constructs DeleteNamespaceResponse from required parameters

#### `newDeleteNamespaceResponse'`

``` purescript
newDeleteNamespaceResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId) } -> { "OperationId" :: NullOrUndefined (OperationId) }) -> DeleteNamespaceResponse
```

Constructs DeleteNamespaceResponse's fields from required parameters

#### `DeleteServiceRequest`

``` purescript
newtype DeleteServiceRequest
  = DeleteServiceRequest { "Id" :: ResourceId }
```

##### Instances
``` purescript
Newtype DeleteServiceRequest _
Generic DeleteServiceRequest _
Show DeleteServiceRequest
Decode DeleteServiceRequest
Encode DeleteServiceRequest
```

#### `newDeleteServiceRequest`

``` purescript
newDeleteServiceRequest :: ResourceId -> DeleteServiceRequest
```

Constructs DeleteServiceRequest from required parameters

#### `newDeleteServiceRequest'`

``` purescript
newDeleteServiceRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> DeleteServiceRequest
```

Constructs DeleteServiceRequest's fields from required parameters

#### `DeleteServiceResponse`

``` purescript
newtype DeleteServiceResponse
  = DeleteServiceResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteServiceResponse _
Generic DeleteServiceResponse _
Show DeleteServiceResponse
Decode DeleteServiceResponse
Encode DeleteServiceResponse
```

#### `DeregisterInstanceRequest`

``` purescript
newtype DeregisterInstanceRequest
  = DeregisterInstanceRequest { "ServiceId" :: ResourceId, "InstanceId" :: ResourceId }
```

##### Instances
``` purescript
Newtype DeregisterInstanceRequest _
Generic DeregisterInstanceRequest _
Show DeregisterInstanceRequest
Decode DeregisterInstanceRequest
Encode DeregisterInstanceRequest
```

#### `newDeregisterInstanceRequest`

``` purescript
newDeregisterInstanceRequest :: ResourceId -> ResourceId -> DeregisterInstanceRequest
```

Constructs DeregisterInstanceRequest from required parameters

#### `newDeregisterInstanceRequest'`

``` purescript
newDeregisterInstanceRequest' :: ResourceId -> ResourceId -> ({ "ServiceId" :: ResourceId, "InstanceId" :: ResourceId } -> { "ServiceId" :: ResourceId, "InstanceId" :: ResourceId }) -> DeregisterInstanceRequest
```

Constructs DeregisterInstanceRequest's fields from required parameters

#### `DeregisterInstanceResponse`

``` purescript
newtype DeregisterInstanceResponse
  = DeregisterInstanceResponse { "OperationId" :: NullOrUndefined (OperationId) }
```

##### Instances
``` purescript
Newtype DeregisterInstanceResponse _
Generic DeregisterInstanceResponse _
Show DeregisterInstanceResponse
Decode DeregisterInstanceResponse
Encode DeregisterInstanceResponse
```

#### `newDeregisterInstanceResponse`

``` purescript
newDeregisterInstanceResponse :: DeregisterInstanceResponse
```

Constructs DeregisterInstanceResponse from required parameters

#### `newDeregisterInstanceResponse'`

``` purescript
newDeregisterInstanceResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId) } -> { "OperationId" :: NullOrUndefined (OperationId) }) -> DeregisterInstanceResponse
```

Constructs DeregisterInstanceResponse's fields from required parameters

#### `DnsConfig`

``` purescript
newtype DnsConfig
  = DnsConfig { "NamespaceId" :: ResourceId, "RoutingPolicy" :: NullOrUndefined (RoutingPolicy), "DnsRecords" :: DnsRecordList }
```

<p>A complex type that contains information about the records that you want Amazon Route 53 to create when you register an instance.</p>

##### Instances
``` purescript
Newtype DnsConfig _
Generic DnsConfig _
Show DnsConfig
Decode DnsConfig
Encode DnsConfig
```

#### `newDnsConfig`

``` purescript
newDnsConfig :: DnsRecordList -> ResourceId -> DnsConfig
```

Constructs DnsConfig from required parameters

#### `newDnsConfig'`

``` purescript
newDnsConfig' :: DnsRecordList -> ResourceId -> ({ "NamespaceId" :: ResourceId, "RoutingPolicy" :: NullOrUndefined (RoutingPolicy), "DnsRecords" :: DnsRecordList } -> { "NamespaceId" :: ResourceId, "RoutingPolicy" :: NullOrUndefined (RoutingPolicy), "DnsRecords" :: DnsRecordList }) -> DnsConfig
```

Constructs DnsConfig's fields from required parameters

#### `DnsConfigChange`

``` purescript
newtype DnsConfigChange
  = DnsConfigChange { "DnsRecords" :: DnsRecordList }
```

<p>A complex type that contains information about changes to the records that Route 53 creates when you register an instance.</p>

##### Instances
``` purescript
Newtype DnsConfigChange _
Generic DnsConfigChange _
Show DnsConfigChange
Decode DnsConfigChange
Encode DnsConfigChange
```

#### `newDnsConfigChange`

``` purescript
newDnsConfigChange :: DnsRecordList -> DnsConfigChange
```

Constructs DnsConfigChange from required parameters

#### `newDnsConfigChange'`

``` purescript
newDnsConfigChange' :: DnsRecordList -> ({ "DnsRecords" :: DnsRecordList } -> { "DnsRecords" :: DnsRecordList }) -> DnsConfigChange
```

Constructs DnsConfigChange's fields from required parameters

#### `DnsProperties`

``` purescript
newtype DnsProperties
  = DnsProperties { "HostedZoneId" :: NullOrUndefined (ResourceId) }
```

<p>A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.</p>

##### Instances
``` purescript
Newtype DnsProperties _
Generic DnsProperties _
Show DnsProperties
Decode DnsProperties
Encode DnsProperties
```

#### `newDnsProperties`

``` purescript
newDnsProperties :: DnsProperties
```

Constructs DnsProperties from required parameters

#### `newDnsProperties'`

``` purescript
newDnsProperties' :: ({ "HostedZoneId" :: NullOrUndefined (ResourceId) } -> { "HostedZoneId" :: NullOrUndefined (ResourceId) }) -> DnsProperties
```

Constructs DnsProperties's fields from required parameters

#### `DnsRecord`

``` purescript
newtype DnsRecord
  = DnsRecord { "Type" :: RecordType, "TTL" :: RecordTTL }
```

<p>A complex type that contains information about the records that you want Route 53 to create when you register an instance.</p>

##### Instances
``` purescript
Newtype DnsRecord _
Generic DnsRecord _
Show DnsRecord
Decode DnsRecord
Encode DnsRecord
```

#### `newDnsRecord`

``` purescript
newDnsRecord :: RecordTTL -> RecordType -> DnsRecord
```

Constructs DnsRecord from required parameters

#### `newDnsRecord'`

``` purescript
newDnsRecord' :: RecordTTL -> RecordType -> ({ "Type" :: RecordType, "TTL" :: RecordTTL } -> { "Type" :: RecordType, "TTL" :: RecordTTL }) -> DnsRecord
```

Constructs DnsRecord's fields from required parameters

#### `DnsRecordList`

``` purescript
newtype DnsRecordList
  = DnsRecordList (Array DnsRecord)
```

##### Instances
``` purescript
Newtype DnsRecordList _
Generic DnsRecordList _
Show DnsRecordList
Decode DnsRecordList
Encode DnsRecordList
```

#### `DuplicateRequest`

``` purescript
newtype DuplicateRequest
  = DuplicateRequest { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The operation is already in progress.</p>

##### Instances
``` purescript
Newtype DuplicateRequest _
Generic DuplicateRequest _
Show DuplicateRequest
Decode DuplicateRequest
Encode DuplicateRequest
```

#### `newDuplicateRequest`

``` purescript
newDuplicateRequest :: DuplicateRequest
```

Constructs DuplicateRequest from required parameters

#### `newDuplicateRequest'`

``` purescript
newDuplicateRequest' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> DuplicateRequest
```

Constructs DuplicateRequest's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FailureThreshold`

``` purescript
newtype FailureThreshold
  = FailureThreshold Int
```

##### Instances
``` purescript
Newtype FailureThreshold _
Generic FailureThreshold _
Show FailureThreshold
Decode FailureThreshold
Encode FailureThreshold
```

#### `FilterCondition`

``` purescript
newtype FilterCondition
  = FilterCondition String
```

##### Instances
``` purescript
Newtype FilterCondition _
Generic FilterCondition _
Show FilterCondition
Decode FilterCondition
Encode FilterCondition
```

#### `FilterValue`

``` purescript
newtype FilterValue
  = FilterValue String
```

##### Instances
``` purescript
Newtype FilterValue _
Generic FilterValue _
Show FilterValue
Decode FilterValue
Encode FilterValue
```

#### `FilterValues`

``` purescript
newtype FilterValues
  = FilterValues (Array FilterValue)
```

##### Instances
``` purescript
Newtype FilterValues _
Generic FilterValues _
Show FilterValues
Decode FilterValues
Encode FilterValues
```

#### `GetInstanceRequest`

``` purescript
newtype GetInstanceRequest
  = GetInstanceRequest { "ServiceId" :: ResourceId, "InstanceId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetInstanceRequest _
Generic GetInstanceRequest _
Show GetInstanceRequest
Decode GetInstanceRequest
Encode GetInstanceRequest
```

#### `newGetInstanceRequest`

``` purescript
newGetInstanceRequest :: ResourceId -> ResourceId -> GetInstanceRequest
```

Constructs GetInstanceRequest from required parameters

#### `newGetInstanceRequest'`

``` purescript
newGetInstanceRequest' :: ResourceId -> ResourceId -> ({ "ServiceId" :: ResourceId, "InstanceId" :: ResourceId } -> { "ServiceId" :: ResourceId, "InstanceId" :: ResourceId }) -> GetInstanceRequest
```

Constructs GetInstanceRequest's fields from required parameters

#### `GetInstanceResponse`

``` purescript
newtype GetInstanceResponse
  = GetInstanceResponse { "Instance" :: NullOrUndefined (Instance) }
```

##### Instances
``` purescript
Newtype GetInstanceResponse _
Generic GetInstanceResponse _
Show GetInstanceResponse
Decode GetInstanceResponse
Encode GetInstanceResponse
```

#### `newGetInstanceResponse`

``` purescript
newGetInstanceResponse :: GetInstanceResponse
```

Constructs GetInstanceResponse from required parameters

#### `newGetInstanceResponse'`

``` purescript
newGetInstanceResponse' :: ({ "Instance" :: NullOrUndefined (Instance) } -> { "Instance" :: NullOrUndefined (Instance) }) -> GetInstanceResponse
```

Constructs GetInstanceResponse's fields from required parameters

#### `GetInstancesHealthStatusRequest`

``` purescript
newtype GetInstancesHealthStatusRequest
  = GetInstancesHealthStatusRequest { "ServiceId" :: ResourceId, "Instances" :: NullOrUndefined (InstanceIdList), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetInstancesHealthStatusRequest _
Generic GetInstancesHealthStatusRequest _
Show GetInstancesHealthStatusRequest
Decode GetInstancesHealthStatusRequest
Encode GetInstancesHealthStatusRequest
```

#### `newGetInstancesHealthStatusRequest`

``` purescript
newGetInstancesHealthStatusRequest :: ResourceId -> GetInstancesHealthStatusRequest
```

Constructs GetInstancesHealthStatusRequest from required parameters

#### `newGetInstancesHealthStatusRequest'`

``` purescript
newGetInstancesHealthStatusRequest' :: ResourceId -> ({ "ServiceId" :: ResourceId, "Instances" :: NullOrUndefined (InstanceIdList), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "ServiceId" :: ResourceId, "Instances" :: NullOrUndefined (InstanceIdList), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> GetInstancesHealthStatusRequest
```

Constructs GetInstancesHealthStatusRequest's fields from required parameters

#### `GetInstancesHealthStatusResponse`

``` purescript
newtype GetInstancesHealthStatusResponse
  = GetInstancesHealthStatusResponse { "Status" :: NullOrUndefined (InstanceHealthStatusMap), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype GetInstancesHealthStatusResponse _
Generic GetInstancesHealthStatusResponse _
Show GetInstancesHealthStatusResponse
Decode GetInstancesHealthStatusResponse
Encode GetInstancesHealthStatusResponse
```

#### `newGetInstancesHealthStatusResponse`

``` purescript
newGetInstancesHealthStatusResponse :: GetInstancesHealthStatusResponse
```

Constructs GetInstancesHealthStatusResponse from required parameters

#### `newGetInstancesHealthStatusResponse'`

``` purescript
newGetInstancesHealthStatusResponse' :: ({ "Status" :: NullOrUndefined (InstanceHealthStatusMap), "NextToken" :: NullOrUndefined (NextToken) } -> { "Status" :: NullOrUndefined (InstanceHealthStatusMap), "NextToken" :: NullOrUndefined (NextToken) }) -> GetInstancesHealthStatusResponse
```

Constructs GetInstancesHealthStatusResponse's fields from required parameters

#### `GetNamespaceRequest`

``` purescript
newtype GetNamespaceRequest
  = GetNamespaceRequest { "Id" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetNamespaceRequest _
Generic GetNamespaceRequest _
Show GetNamespaceRequest
Decode GetNamespaceRequest
Encode GetNamespaceRequest
```

#### `newGetNamespaceRequest`

``` purescript
newGetNamespaceRequest :: ResourceId -> GetNamespaceRequest
```

Constructs GetNamespaceRequest from required parameters

#### `newGetNamespaceRequest'`

``` purescript
newGetNamespaceRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> GetNamespaceRequest
```

Constructs GetNamespaceRequest's fields from required parameters

#### `GetNamespaceResponse`

``` purescript
newtype GetNamespaceResponse
  = GetNamespaceResponse { "Namespace" :: NullOrUndefined (Namespace) }
```

##### Instances
``` purescript
Newtype GetNamespaceResponse _
Generic GetNamespaceResponse _
Show GetNamespaceResponse
Decode GetNamespaceResponse
Encode GetNamespaceResponse
```

#### `newGetNamespaceResponse`

``` purescript
newGetNamespaceResponse :: GetNamespaceResponse
```

Constructs GetNamespaceResponse from required parameters

#### `newGetNamespaceResponse'`

``` purescript
newGetNamespaceResponse' :: ({ "Namespace" :: NullOrUndefined (Namespace) } -> { "Namespace" :: NullOrUndefined (Namespace) }) -> GetNamespaceResponse
```

Constructs GetNamespaceResponse's fields from required parameters

#### `GetOperationRequest`

``` purescript
newtype GetOperationRequest
  = GetOperationRequest { "OperationId" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetOperationRequest _
Generic GetOperationRequest _
Show GetOperationRequest
Decode GetOperationRequest
Encode GetOperationRequest
```

#### `newGetOperationRequest`

``` purescript
newGetOperationRequest :: ResourceId -> GetOperationRequest
```

Constructs GetOperationRequest from required parameters

#### `newGetOperationRequest'`

``` purescript
newGetOperationRequest' :: ResourceId -> ({ "OperationId" :: ResourceId } -> { "OperationId" :: ResourceId }) -> GetOperationRequest
```

Constructs GetOperationRequest's fields from required parameters

#### `GetOperationResponse`

``` purescript
newtype GetOperationResponse
  = GetOperationResponse { "Operation" :: NullOrUndefined (Operation) }
```

##### Instances
``` purescript
Newtype GetOperationResponse _
Generic GetOperationResponse _
Show GetOperationResponse
Decode GetOperationResponse
Encode GetOperationResponse
```

#### `newGetOperationResponse`

``` purescript
newGetOperationResponse :: GetOperationResponse
```

Constructs GetOperationResponse from required parameters

#### `newGetOperationResponse'`

``` purescript
newGetOperationResponse' :: ({ "Operation" :: NullOrUndefined (Operation) } -> { "Operation" :: NullOrUndefined (Operation) }) -> GetOperationResponse
```

Constructs GetOperationResponse's fields from required parameters

#### `GetServiceRequest`

``` purescript
newtype GetServiceRequest
  = GetServiceRequest { "Id" :: ResourceId }
```

##### Instances
``` purescript
Newtype GetServiceRequest _
Generic GetServiceRequest _
Show GetServiceRequest
Decode GetServiceRequest
Encode GetServiceRequest
```

#### `newGetServiceRequest`

``` purescript
newGetServiceRequest :: ResourceId -> GetServiceRequest
```

Constructs GetServiceRequest from required parameters

#### `newGetServiceRequest'`

``` purescript
newGetServiceRequest' :: ResourceId -> ({ "Id" :: ResourceId } -> { "Id" :: ResourceId }) -> GetServiceRequest
```

Constructs GetServiceRequest's fields from required parameters

#### `GetServiceResponse`

``` purescript
newtype GetServiceResponse
  = GetServiceResponse { "Service" :: NullOrUndefined (Service) }
```

##### Instances
``` purescript
Newtype GetServiceResponse _
Generic GetServiceResponse _
Show GetServiceResponse
Decode GetServiceResponse
Encode GetServiceResponse
```

#### `newGetServiceResponse`

``` purescript
newGetServiceResponse :: GetServiceResponse
```

Constructs GetServiceResponse from required parameters

#### `newGetServiceResponse'`

``` purescript
newGetServiceResponse' :: ({ "Service" :: NullOrUndefined (Service) } -> { "Service" :: NullOrUndefined (Service) }) -> GetServiceResponse
```

Constructs GetServiceResponse's fields from required parameters

#### `HealthCheckConfig`

``` purescript
newtype HealthCheckConfig
  = HealthCheckConfig { "Type" :: HealthCheckType, "ResourcePath" :: NullOrUndefined (ResourcePath), "FailureThreshold" :: NullOrUndefined (FailureThreshold) }
```

<p> <i>Public DNS namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, Amazon Route 53 associates the health check with all the records that you specify in <code>DnsConfig</code>.</p> <p> <b>A and AAAA records</b> </p> <p>If <code>DnsConfig</code> includes configurations for both A and AAAA records, Route 53 creates a health check that uses the IPv4 address to check the health of the resource. If the endpoint that is specified by the IPv4 address is unhealthy, Route 53 considers both the A and AAAA records to be unhealthy. </p> <p> <b>CNAME records</b> </p> <p>You can't specify settings for <code>HealthCheckConfig</code> when the <code>DNSConfig</code> includes <code>CNAME</code> for the value of <code>Type</code>. If you do, the <code>CreateService</code> request will fail with an <code>InvalidInput</code> error.</p> <p> <b>Request interval</b> </p> <p>The health check uses 30 seconds as the request interval. This is the number of seconds between the time that each Route 53 health checker gets a response from your endpoint and the time that it sends the next health check request. A health checker in each data center around the world sends your endpoint a health check request every 30 seconds. On average, your endpoint receives a health check request about every two seconds. Health checkers in different data centers don't coordinate with one another, so you'll sometimes see several requests per second followed by a few seconds with no health checks at all.</p> <p> <b>Health checking regions</b> </p> <p>Health checkers perform checks from all Route 53 health-checking regions. For a list of the current regions, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a>.</p> <p> <b>Alias records</b> </p> <p>When you register an instance, if you include the <code>AWS_ALIAS_DNS_NAME</code> attribute, Route 53 creates an alias record. Note the following:</p> <ul> <li> <p>Route 53 automatically sets <code>EvaluateTargetHealth</code> to true for alias records. When <code>EvaluateTargetHealth</code> is true, the alias record inherits the health of the referenced AWS resource. such as an ELB load balancer. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth">EvaluateTargetHealth</a>.</p> </li> <li> <p>If you include <code>HealthCheckConfig</code> and then use the service to register an instance that creates an alias record, Route 53 doesn't create the health check.</p> </li> </ul> <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing">Route 53 Pricing</a>.</p>

##### Instances
``` purescript
Newtype HealthCheckConfig _
Generic HealthCheckConfig _
Show HealthCheckConfig
Decode HealthCheckConfig
Encode HealthCheckConfig
```

#### `newHealthCheckConfig`

``` purescript
newHealthCheckConfig :: HealthCheckType -> HealthCheckConfig
```

Constructs HealthCheckConfig from required parameters

#### `newHealthCheckConfig'`

``` purescript
newHealthCheckConfig' :: HealthCheckType -> ({ "Type" :: HealthCheckType, "ResourcePath" :: NullOrUndefined (ResourcePath), "FailureThreshold" :: NullOrUndefined (FailureThreshold) } -> { "Type" :: HealthCheckType, "ResourcePath" :: NullOrUndefined (ResourcePath), "FailureThreshold" :: NullOrUndefined (FailureThreshold) }) -> HealthCheckConfig
```

Constructs HealthCheckConfig's fields from required parameters

#### `HealthCheckType`

``` purescript
newtype HealthCheckType
  = HealthCheckType String
```

##### Instances
``` purescript
Newtype HealthCheckType _
Generic HealthCheckType _
Show HealthCheckType
Decode HealthCheckType
Encode HealthCheckType
```

#### `HealthStatus`

``` purescript
newtype HealthStatus
  = HealthStatus String
```

##### Instances
``` purescript
Newtype HealthStatus _
Generic HealthStatus _
Show HealthStatus
Decode HealthStatus
Encode HealthStatus
```

#### `Instance`

``` purescript
newtype Instance
  = Instance { "Id" :: ResourceId, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Attributes" :: NullOrUndefined (Attributes) }
```

<p>A complex type that contains information about an instance that Amazon Route 53 creates when you submit a <code>RegisterInstance</code> request.</p>

##### Instances
``` purescript
Newtype Instance _
Generic Instance _
Show Instance
Decode Instance
Encode Instance
```

#### `newInstance`

``` purescript
newInstance :: ResourceId -> Instance
```

Constructs Instance from required parameters

#### `newInstance'`

``` purescript
newInstance' :: ResourceId -> ({ "Id" :: ResourceId, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Attributes" :: NullOrUndefined (Attributes) } -> { "Id" :: ResourceId, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Attributes" :: NullOrUndefined (Attributes) }) -> Instance
```

Constructs Instance's fields from required parameters

#### `InstanceHealthStatusMap`

``` purescript
newtype InstanceHealthStatusMap
  = InstanceHealthStatusMap (StrMap HealthStatus)
```

##### Instances
``` purescript
Newtype InstanceHealthStatusMap _
Generic InstanceHealthStatusMap _
Show InstanceHealthStatusMap
Decode InstanceHealthStatusMap
Encode InstanceHealthStatusMap
```

#### `InstanceIdList`

``` purescript
newtype InstanceIdList
  = InstanceIdList (Array ResourceId)
```

##### Instances
``` purescript
Newtype InstanceIdList _
Generic InstanceIdList _
Show InstanceIdList
Decode InstanceIdList
Encode InstanceIdList
```

#### `InstanceNotFound`

``` purescript
newtype InstanceNotFound
  = InstanceNotFound { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.</p>

##### Instances
``` purescript
Newtype InstanceNotFound _
Generic InstanceNotFound _
Show InstanceNotFound
Decode InstanceNotFound
Encode InstanceNotFound
```

#### `newInstanceNotFound`

``` purescript
newInstanceNotFound :: InstanceNotFound
```

Constructs InstanceNotFound from required parameters

#### `newInstanceNotFound'`

``` purescript
newInstanceNotFound' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InstanceNotFound
```

Constructs InstanceNotFound's fields from required parameters

#### `InstanceSummary`

``` purescript
newtype InstanceSummary
  = InstanceSummary { "Id" :: NullOrUndefined (ResourceId), "Attributes" :: NullOrUndefined (Attributes) }
```

<p>A complex type that contains information about the instances that you registered by using a specified service.</p>

##### Instances
``` purescript
Newtype InstanceSummary _
Generic InstanceSummary _
Show InstanceSummary
Decode InstanceSummary
Encode InstanceSummary
```

#### `newInstanceSummary`

``` purescript
newInstanceSummary :: InstanceSummary
```

Constructs InstanceSummary from required parameters

#### `newInstanceSummary'`

``` purescript
newInstanceSummary' :: ({ "Id" :: NullOrUndefined (ResourceId), "Attributes" :: NullOrUndefined (Attributes) } -> { "Id" :: NullOrUndefined (ResourceId), "Attributes" :: NullOrUndefined (Attributes) }) -> InstanceSummary
```

Constructs InstanceSummary's fields from required parameters

#### `InstanceSummaryList`

``` purescript
newtype InstanceSummaryList
  = InstanceSummaryList (Array InstanceSummary)
```

##### Instances
``` purescript
Newtype InstanceSummaryList _
Generic InstanceSummaryList _
Show InstanceSummaryList
Decode InstanceSummaryList
Encode InstanceSummaryList
```

#### `InvalidInput`

``` purescript
newtype InvalidInput
  = InvalidInput { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>One or more specified values aren't valid. For example, when you're creating a namespace, the value of <code>Name</code> might not be a valid DNS name.</p>

##### Instances
``` purescript
Newtype InvalidInput _
Generic InvalidInput _
Show InvalidInput
Decode InvalidInput
Encode InvalidInput
```

#### `newInvalidInput`

``` purescript
newInvalidInput :: InvalidInput
```

Constructs InvalidInput from required parameters

#### `newInvalidInput'`

``` purescript
newInvalidInput' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InvalidInput
```

Constructs InvalidInput's fields from required parameters

#### `ListInstancesRequest`

``` purescript
newtype ListInstancesRequest
  = ListInstancesRequest { "ServiceId" :: ResourceId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
```

##### Instances
``` purescript
Newtype ListInstancesRequest _
Generic ListInstancesRequest _
Show ListInstancesRequest
Decode ListInstancesRequest
Encode ListInstancesRequest
```

#### `newListInstancesRequest`

``` purescript
newListInstancesRequest :: ResourceId -> ListInstancesRequest
```

Constructs ListInstancesRequest from required parameters

#### `newListInstancesRequest'`

``` purescript
newListInstancesRequest' :: ResourceId -> ({ "ServiceId" :: ResourceId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ServiceId" :: ResourceId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListInstancesRequest
```

Constructs ListInstancesRequest's fields from required parameters

#### `ListInstancesResponse`

``` purescript
newtype ListInstancesResponse
  = ListInstancesResponse { "Instances" :: NullOrUndefined (InstanceSummaryList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListInstancesResponse _
Generic ListInstancesResponse _
Show ListInstancesResponse
Decode ListInstancesResponse
Encode ListInstancesResponse
```

#### `newListInstancesResponse`

``` purescript
newListInstancesResponse :: ListInstancesResponse
```

Constructs ListInstancesResponse from required parameters

#### `newListInstancesResponse'`

``` purescript
newListInstancesResponse' :: ({ "Instances" :: NullOrUndefined (InstanceSummaryList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Instances" :: NullOrUndefined (InstanceSummaryList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListInstancesResponse
```

Constructs ListInstancesResponse's fields from required parameters

#### `ListNamespacesRequest`

``` purescript
newtype ListNamespacesRequest
  = ListNamespacesRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (NamespaceFilters) }
```

##### Instances
``` purescript
Newtype ListNamespacesRequest _
Generic ListNamespacesRequest _
Show ListNamespacesRequest
Decode ListNamespacesRequest
Encode ListNamespacesRequest
```

#### `newListNamespacesRequest`

``` purescript
newListNamespacesRequest :: ListNamespacesRequest
```

Constructs ListNamespacesRequest from required parameters

#### `newListNamespacesRequest'`

``` purescript
newListNamespacesRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (NamespaceFilters) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (NamespaceFilters) }) -> ListNamespacesRequest
```

Constructs ListNamespacesRequest's fields from required parameters

#### `ListNamespacesResponse`

``` purescript
newtype ListNamespacesResponse
  = ListNamespacesResponse { "Namespaces" :: NullOrUndefined (NamespaceSummariesList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListNamespacesResponse _
Generic ListNamespacesResponse _
Show ListNamespacesResponse
Decode ListNamespacesResponse
Encode ListNamespacesResponse
```

#### `newListNamespacesResponse`

``` purescript
newListNamespacesResponse :: ListNamespacesResponse
```

Constructs ListNamespacesResponse from required parameters

#### `newListNamespacesResponse'`

``` purescript
newListNamespacesResponse' :: ({ "Namespaces" :: NullOrUndefined (NamespaceSummariesList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Namespaces" :: NullOrUndefined (NamespaceSummariesList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListNamespacesResponse
```

Constructs ListNamespacesResponse's fields from required parameters

#### `ListOperationsRequest`

``` purescript
newtype ListOperationsRequest
  = ListOperationsRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (OperationFilters) }
```

##### Instances
``` purescript
Newtype ListOperationsRequest _
Generic ListOperationsRequest _
Show ListOperationsRequest
Decode ListOperationsRequest
Encode ListOperationsRequest
```

#### `newListOperationsRequest`

``` purescript
newListOperationsRequest :: ListOperationsRequest
```

Constructs ListOperationsRequest from required parameters

#### `newListOperationsRequest'`

``` purescript
newListOperationsRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (OperationFilters) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (OperationFilters) }) -> ListOperationsRequest
```

Constructs ListOperationsRequest's fields from required parameters

#### `ListOperationsResponse`

``` purescript
newtype ListOperationsResponse
  = ListOperationsResponse { "Operations" :: NullOrUndefined (OperationSummaryList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListOperationsResponse _
Generic ListOperationsResponse _
Show ListOperationsResponse
Decode ListOperationsResponse
Encode ListOperationsResponse
```

#### `newListOperationsResponse`

``` purescript
newListOperationsResponse :: ListOperationsResponse
```

Constructs ListOperationsResponse from required parameters

#### `newListOperationsResponse'`

``` purescript
newListOperationsResponse' :: ({ "Operations" :: NullOrUndefined (OperationSummaryList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Operations" :: NullOrUndefined (OperationSummaryList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListOperationsResponse
```

Constructs ListOperationsResponse's fields from required parameters

#### `ListServicesRequest`

``` purescript
newtype ListServicesRequest
  = ListServicesRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (ServiceFilters) }
```

##### Instances
``` purescript
Newtype ListServicesRequest _
Generic ListServicesRequest _
Show ListServicesRequest
Decode ListServicesRequest
Encode ListServicesRequest
```

#### `newListServicesRequest`

``` purescript
newListServicesRequest :: ListServicesRequest
```

Constructs ListServicesRequest from required parameters

#### `newListServicesRequest'`

``` purescript
newListServicesRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (ServiceFilters) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults), "Filters" :: NullOrUndefined (ServiceFilters) }) -> ListServicesRequest
```

Constructs ListServicesRequest's fields from required parameters

#### `ListServicesResponse`

``` purescript
newtype ListServicesResponse
  = ListServicesResponse { "Services" :: NullOrUndefined (ServiceSummariesList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListServicesResponse _
Generic ListServicesResponse _
Show ListServicesResponse
Decode ListServicesResponse
Encode ListServicesResponse
```

#### `newListServicesResponse`

``` purescript
newListServicesResponse :: ListServicesResponse
```

Constructs ListServicesResponse from required parameters

#### `newListServicesResponse'`

``` purescript
newListServicesResponse' :: ({ "Services" :: NullOrUndefined (ServiceSummariesList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Services" :: NullOrUndefined (ServiceSummariesList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListServicesResponse
```

Constructs ListServicesResponse's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `Namespace`

``` purescript
newtype Namespace
  = Namespace { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (NamespaceName), "Type" :: NullOrUndefined (NamespaceType), "Description" :: NullOrUndefined (ResourceDescription), "ServiceCount" :: NullOrUndefined (ResourceCount), "Properties" :: NullOrUndefined (NamespaceProperties), "CreateDate" :: NullOrUndefined (Timestamp), "CreatorRequestId" :: NullOrUndefined (ResourceId) }
```

<p>A complex type that contains information about a specified namespace.</p>

##### Instances
``` purescript
Newtype Namespace _
Generic Namespace _
Show Namespace
Decode Namespace
Encode Namespace
```

#### `newNamespace`

``` purescript
newNamespace :: Namespace
```

Constructs Namespace from required parameters

#### `newNamespace'`

``` purescript
newNamespace' :: ({ "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (NamespaceName), "Type" :: NullOrUndefined (NamespaceType), "Description" :: NullOrUndefined (ResourceDescription), "ServiceCount" :: NullOrUndefined (ResourceCount), "Properties" :: NullOrUndefined (NamespaceProperties), "CreateDate" :: NullOrUndefined (Timestamp), "CreatorRequestId" :: NullOrUndefined (ResourceId) } -> { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (NamespaceName), "Type" :: NullOrUndefined (NamespaceType), "Description" :: NullOrUndefined (ResourceDescription), "ServiceCount" :: NullOrUndefined (ResourceCount), "Properties" :: NullOrUndefined (NamespaceProperties), "CreateDate" :: NullOrUndefined (Timestamp), "CreatorRequestId" :: NullOrUndefined (ResourceId) }) -> Namespace
```

Constructs Namespace's fields from required parameters

#### `NamespaceAlreadyExists`

``` purescript
newtype NamespaceAlreadyExists
  = NamespaceAlreadyExists { "Message" :: NullOrUndefined (ErrorMessage), "CreatorRequestId" :: NullOrUndefined (ResourceId), "NamespaceId" :: NullOrUndefined (ResourceId) }
```

<p>The namespace that you're trying to create already exists.</p>

##### Instances
``` purescript
Newtype NamespaceAlreadyExists _
Generic NamespaceAlreadyExists _
Show NamespaceAlreadyExists
Decode NamespaceAlreadyExists
Encode NamespaceAlreadyExists
```

#### `newNamespaceAlreadyExists`

``` purescript
newNamespaceAlreadyExists :: NamespaceAlreadyExists
```

Constructs NamespaceAlreadyExists from required parameters

#### `newNamespaceAlreadyExists'`

``` purescript
newNamespaceAlreadyExists' :: ({ "Message" :: NullOrUndefined (ErrorMessage), "CreatorRequestId" :: NullOrUndefined (ResourceId), "NamespaceId" :: NullOrUndefined (ResourceId) } -> { "Message" :: NullOrUndefined (ErrorMessage), "CreatorRequestId" :: NullOrUndefined (ResourceId), "NamespaceId" :: NullOrUndefined (ResourceId) }) -> NamespaceAlreadyExists
```

Constructs NamespaceAlreadyExists's fields from required parameters

#### `NamespaceFilter`

``` purescript
newtype NamespaceFilter
  = NamespaceFilter { "Name" :: NamespaceFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) }
```

<p>A complex type that identifies the namespaces that you want to list. You can choose to list public or private namespaces.</p>

##### Instances
``` purescript
Newtype NamespaceFilter _
Generic NamespaceFilter _
Show NamespaceFilter
Decode NamespaceFilter
Encode NamespaceFilter
```

#### `newNamespaceFilter`

``` purescript
newNamespaceFilter :: NamespaceFilterName -> FilterValues -> NamespaceFilter
```

Constructs NamespaceFilter from required parameters

#### `newNamespaceFilter'`

``` purescript
newNamespaceFilter' :: NamespaceFilterName -> FilterValues -> ({ "Name" :: NamespaceFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) } -> { "Name" :: NamespaceFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) }) -> NamespaceFilter
```

Constructs NamespaceFilter's fields from required parameters

#### `NamespaceFilterName`

``` purescript
newtype NamespaceFilterName
  = NamespaceFilterName String
```

##### Instances
``` purescript
Newtype NamespaceFilterName _
Generic NamespaceFilterName _
Show NamespaceFilterName
Decode NamespaceFilterName
Encode NamespaceFilterName
```

#### `NamespaceFilters`

``` purescript
newtype NamespaceFilters
  = NamespaceFilters (Array NamespaceFilter)
```

##### Instances
``` purescript
Newtype NamespaceFilters _
Generic NamespaceFilters _
Show NamespaceFilters
Decode NamespaceFilters
Encode NamespaceFilters
```

#### `NamespaceName`

``` purescript
newtype NamespaceName
  = NamespaceName String
```

##### Instances
``` purescript
Newtype NamespaceName _
Generic NamespaceName _
Show NamespaceName
Decode NamespaceName
Encode NamespaceName
```

#### `NamespaceNotFound`

``` purescript
newtype NamespaceNotFound
  = NamespaceNotFound { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>No namespace exists with the specified ID.</p>

##### Instances
``` purescript
Newtype NamespaceNotFound _
Generic NamespaceNotFound _
Show NamespaceNotFound
Decode NamespaceNotFound
Encode NamespaceNotFound
```

#### `newNamespaceNotFound`

``` purescript
newNamespaceNotFound :: NamespaceNotFound
```

Constructs NamespaceNotFound from required parameters

#### `newNamespaceNotFound'`

``` purescript
newNamespaceNotFound' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> NamespaceNotFound
```

Constructs NamespaceNotFound's fields from required parameters

#### `NamespaceProperties`

``` purescript
newtype NamespaceProperties
  = NamespaceProperties { "DnsProperties" :: NullOrUndefined (DnsProperties) }
```

<p>A complex type that contains information that is specific to the namespace type.</p>

##### Instances
``` purescript
Newtype NamespaceProperties _
Generic NamespaceProperties _
Show NamespaceProperties
Decode NamespaceProperties
Encode NamespaceProperties
```

#### `newNamespaceProperties`

``` purescript
newNamespaceProperties :: NamespaceProperties
```

Constructs NamespaceProperties from required parameters

#### `newNamespaceProperties'`

``` purescript
newNamespaceProperties' :: ({ "DnsProperties" :: NullOrUndefined (DnsProperties) } -> { "DnsProperties" :: NullOrUndefined (DnsProperties) }) -> NamespaceProperties
```

Constructs NamespaceProperties's fields from required parameters

#### `NamespaceSummariesList`

``` purescript
newtype NamespaceSummariesList
  = NamespaceSummariesList (Array NamespaceSummary)
```

##### Instances
``` purescript
Newtype NamespaceSummariesList _
Generic NamespaceSummariesList _
Show NamespaceSummariesList
Decode NamespaceSummariesList
Encode NamespaceSummariesList
```

#### `NamespaceSummary`

``` purescript
newtype NamespaceSummary
  = NamespaceSummary { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (NamespaceName), "Type" :: NullOrUndefined (NamespaceType) }
```

<p>A complex type that contains information about a namespace.</p>

##### Instances
``` purescript
Newtype NamespaceSummary _
Generic NamespaceSummary _
Show NamespaceSummary
Decode NamespaceSummary
Encode NamespaceSummary
```

#### `newNamespaceSummary`

``` purescript
newNamespaceSummary :: NamespaceSummary
```

Constructs NamespaceSummary from required parameters

#### `newNamespaceSummary'`

``` purescript
newNamespaceSummary' :: ({ "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (NamespaceName), "Type" :: NullOrUndefined (NamespaceType) } -> { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (NamespaceName), "Type" :: NullOrUndefined (NamespaceType) }) -> NamespaceSummary
```

Constructs NamespaceSummary's fields from required parameters

#### `NamespaceType`

``` purescript
newtype NamespaceType
  = NamespaceType String
```

##### Instances
``` purescript
Newtype NamespaceType _
Generic NamespaceType _
Show NamespaceType
Decode NamespaceType
Encode NamespaceType
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `Operation`

``` purescript
newtype Operation
  = Operation { "Id" :: NullOrUndefined (OperationId), "Type" :: NullOrUndefined (OperationType), "Status" :: NullOrUndefined (OperationStatus), "ErrorMessage" :: NullOrUndefined (Message), "ErrorCode" :: NullOrUndefined (Code), "CreateDate" :: NullOrUndefined (Timestamp), "UpdateDate" :: NullOrUndefined (Timestamp), "Targets" :: NullOrUndefined (OperationTargetsMap) }
```

<p>A complex type that contains information about a specified operation.</p>

##### Instances
``` purescript
Newtype Operation _
Generic Operation _
Show Operation
Decode Operation
Encode Operation
```

#### `newOperation`

``` purescript
newOperation :: Operation
```

Constructs Operation from required parameters

#### `newOperation'`

``` purescript
newOperation' :: ({ "Id" :: NullOrUndefined (OperationId), "Type" :: NullOrUndefined (OperationType), "Status" :: NullOrUndefined (OperationStatus), "ErrorMessage" :: NullOrUndefined (Message), "ErrorCode" :: NullOrUndefined (Code), "CreateDate" :: NullOrUndefined (Timestamp), "UpdateDate" :: NullOrUndefined (Timestamp), "Targets" :: NullOrUndefined (OperationTargetsMap) } -> { "Id" :: NullOrUndefined (OperationId), "Type" :: NullOrUndefined (OperationType), "Status" :: NullOrUndefined (OperationStatus), "ErrorMessage" :: NullOrUndefined (Message), "ErrorCode" :: NullOrUndefined (Code), "CreateDate" :: NullOrUndefined (Timestamp), "UpdateDate" :: NullOrUndefined (Timestamp), "Targets" :: NullOrUndefined (OperationTargetsMap) }) -> Operation
```

Constructs Operation's fields from required parameters

#### `OperationFilter`

``` purescript
newtype OperationFilter
  = OperationFilter { "Name" :: OperationFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) }
```

<p>A complex type that lets you select the operations that you want to list.</p>

##### Instances
``` purescript
Newtype OperationFilter _
Generic OperationFilter _
Show OperationFilter
Decode OperationFilter
Encode OperationFilter
```

#### `newOperationFilter`

``` purescript
newOperationFilter :: OperationFilterName -> FilterValues -> OperationFilter
```

Constructs OperationFilter from required parameters

#### `newOperationFilter'`

``` purescript
newOperationFilter' :: OperationFilterName -> FilterValues -> ({ "Name" :: OperationFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) } -> { "Name" :: OperationFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) }) -> OperationFilter
```

Constructs OperationFilter's fields from required parameters

#### `OperationFilterName`

``` purescript
newtype OperationFilterName
  = OperationFilterName String
```

##### Instances
``` purescript
Newtype OperationFilterName _
Generic OperationFilterName _
Show OperationFilterName
Decode OperationFilterName
Encode OperationFilterName
```

#### `OperationFilters`

``` purescript
newtype OperationFilters
  = OperationFilters (Array OperationFilter)
```

##### Instances
``` purescript
Newtype OperationFilters _
Generic OperationFilters _
Show OperationFilters
Decode OperationFilters
Encode OperationFilters
```

#### `OperationId`

``` purescript
newtype OperationId
  = OperationId String
```

##### Instances
``` purescript
Newtype OperationId _
Generic OperationId _
Show OperationId
Decode OperationId
Encode OperationId
```

#### `OperationNotFound`

``` purescript
newtype OperationNotFound
  = OperationNotFound { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>No operation exists with the specified ID.</p>

##### Instances
``` purescript
Newtype OperationNotFound _
Generic OperationNotFound _
Show OperationNotFound
Decode OperationNotFound
Encode OperationNotFound
```

#### `newOperationNotFound`

``` purescript
newOperationNotFound :: OperationNotFound
```

Constructs OperationNotFound from required parameters

#### `newOperationNotFound'`

``` purescript
newOperationNotFound' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> OperationNotFound
```

Constructs OperationNotFound's fields from required parameters

#### `OperationStatus`

``` purescript
newtype OperationStatus
  = OperationStatus String
```

##### Instances
``` purescript
Newtype OperationStatus _
Generic OperationStatus _
Show OperationStatus
Decode OperationStatus
Encode OperationStatus
```

#### `OperationSummary`

``` purescript
newtype OperationSummary
  = OperationSummary { "Id" :: NullOrUndefined (OperationId), "Status" :: NullOrUndefined (OperationStatus) }
```

<p>A complex type that contains information about an operation that matches the criteria that you specified in a <a>ListOperations</a> request.</p>

##### Instances
``` purescript
Newtype OperationSummary _
Generic OperationSummary _
Show OperationSummary
Decode OperationSummary
Encode OperationSummary
```

#### `newOperationSummary`

``` purescript
newOperationSummary :: OperationSummary
```

Constructs OperationSummary from required parameters

#### `newOperationSummary'`

``` purescript
newOperationSummary' :: ({ "Id" :: NullOrUndefined (OperationId), "Status" :: NullOrUndefined (OperationStatus) } -> { "Id" :: NullOrUndefined (OperationId), "Status" :: NullOrUndefined (OperationStatus) }) -> OperationSummary
```

Constructs OperationSummary's fields from required parameters

#### `OperationSummaryList`

``` purescript
newtype OperationSummaryList
  = OperationSummaryList (Array OperationSummary)
```

##### Instances
``` purescript
Newtype OperationSummaryList _
Generic OperationSummaryList _
Show OperationSummaryList
Decode OperationSummaryList
Encode OperationSummaryList
```

#### `OperationTargetType`

``` purescript
newtype OperationTargetType
  = OperationTargetType String
```

##### Instances
``` purescript
Newtype OperationTargetType _
Generic OperationTargetType _
Show OperationTargetType
Decode OperationTargetType
Encode OperationTargetType
```

#### `OperationTargetsMap`

``` purescript
newtype OperationTargetsMap
  = OperationTargetsMap (StrMap ResourceId)
```

##### Instances
``` purescript
Newtype OperationTargetsMap _
Generic OperationTargetsMap _
Show OperationTargetsMap
Decode OperationTargetsMap
Encode OperationTargetsMap
```

#### `OperationType`

``` purescript
newtype OperationType
  = OperationType String
```

##### Instances
``` purescript
Newtype OperationType _
Generic OperationType _
Show OperationType
Decode OperationType
Encode OperationType
```

#### `RecordTTL`

``` purescript
newtype RecordTTL
  = RecordTTL Number
```

##### Instances
``` purescript
Newtype RecordTTL _
Generic RecordTTL _
Show RecordTTL
Decode RecordTTL
Encode RecordTTL
```

#### `RecordType`

``` purescript
newtype RecordType
  = RecordType String
```

##### Instances
``` purescript
Newtype RecordType _
Generic RecordType _
Show RecordType
Decode RecordType
Encode RecordType
```

#### `RegisterInstanceRequest`

``` purescript
newtype RegisterInstanceRequest
  = RegisterInstanceRequest { "ServiceId" :: ResourceId, "InstanceId" :: ResourceId, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Attributes" :: Attributes }
```

##### Instances
``` purescript
Newtype RegisterInstanceRequest _
Generic RegisterInstanceRequest _
Show RegisterInstanceRequest
Decode RegisterInstanceRequest
Encode RegisterInstanceRequest
```

#### `newRegisterInstanceRequest`

``` purescript
newRegisterInstanceRequest :: Attributes -> ResourceId -> ResourceId -> RegisterInstanceRequest
```

Constructs RegisterInstanceRequest from required parameters

#### `newRegisterInstanceRequest'`

``` purescript
newRegisterInstanceRequest' :: Attributes -> ResourceId -> ResourceId -> ({ "ServiceId" :: ResourceId, "InstanceId" :: ResourceId, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Attributes" :: Attributes } -> { "ServiceId" :: ResourceId, "InstanceId" :: ResourceId, "CreatorRequestId" :: NullOrUndefined (ResourceId), "Attributes" :: Attributes }) -> RegisterInstanceRequest
```

Constructs RegisterInstanceRequest's fields from required parameters

#### `RegisterInstanceResponse`

``` purescript
newtype RegisterInstanceResponse
  = RegisterInstanceResponse { "OperationId" :: NullOrUndefined (OperationId) }
```

##### Instances
``` purescript
Newtype RegisterInstanceResponse _
Generic RegisterInstanceResponse _
Show RegisterInstanceResponse
Decode RegisterInstanceResponse
Encode RegisterInstanceResponse
```

#### `newRegisterInstanceResponse`

``` purescript
newRegisterInstanceResponse :: RegisterInstanceResponse
```

Constructs RegisterInstanceResponse from required parameters

#### `newRegisterInstanceResponse'`

``` purescript
newRegisterInstanceResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId) } -> { "OperationId" :: NullOrUndefined (OperationId) }) -> RegisterInstanceResponse
```

Constructs RegisterInstanceResponse's fields from required parameters

#### `ResourceCount`

``` purescript
newtype ResourceCount
  = ResourceCount Int
```

##### Instances
``` purescript
Newtype ResourceCount _
Generic ResourceCount _
Show ResourceCount
Decode ResourceCount
Encode ResourceCount
```

#### `ResourceDescription`

``` purescript
newtype ResourceDescription
  = ResourceDescription String
```

##### Instances
``` purescript
Newtype ResourceDescription _
Generic ResourceDescription _
Show ResourceDescription
Decode ResourceDescription
Encode ResourceDescription
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `ResourceInUse`

``` purescript
newtype ResourceInUse
  = ResourceInUse { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.</p>

##### Instances
``` purescript
Newtype ResourceInUse _
Generic ResourceInUse _
Show ResourceInUse
Decode ResourceInUse
Encode ResourceInUse
```

#### `newResourceInUse`

``` purescript
newResourceInUse :: ResourceInUse
```

Constructs ResourceInUse from required parameters

#### `newResourceInUse'`

``` purescript
newResourceInUse' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ResourceInUse
```

Constructs ResourceInUse's fields from required parameters

#### `ResourceLimitExceeded`

``` purescript
newtype ResourceLimitExceeded
  = ResourceLimitExceeded { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The resource can't be created because you've reached the limit on the number of resources.</p>

##### Instances
``` purescript
Newtype ResourceLimitExceeded _
Generic ResourceLimitExceeded _
Show ResourceLimitExceeded
Decode ResourceLimitExceeded
Encode ResourceLimitExceeded
```

#### `newResourceLimitExceeded`

``` purescript
newResourceLimitExceeded :: ResourceLimitExceeded
```

Constructs ResourceLimitExceeded from required parameters

#### `newResourceLimitExceeded'`

``` purescript
newResourceLimitExceeded' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ResourceLimitExceeded
```

Constructs ResourceLimitExceeded's fields from required parameters

#### `ResourcePath`

``` purescript
newtype ResourcePath
  = ResourcePath String
```

##### Instances
``` purescript
Newtype ResourcePath _
Generic ResourcePath _
Show ResourcePath
Decode ResourcePath
Encode ResourcePath
```

#### `RoutingPolicy`

``` purescript
newtype RoutingPolicy
  = RoutingPolicy String
```

##### Instances
``` purescript
Newtype RoutingPolicy _
Generic RoutingPolicy _
Show RoutingPolicy
Decode RoutingPolicy
Encode RoutingPolicy
```

#### `Service`

``` purescript
newtype Service
  = Service { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (ServiceName), "Description" :: NullOrUndefined (ResourceDescription), "InstanceCount" :: NullOrUndefined (ResourceCount), "DnsConfig" :: NullOrUndefined (DnsConfig), "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig), "CreateDate" :: NullOrUndefined (Timestamp), "CreatorRequestId" :: NullOrUndefined (ResourceId) }
```

<p>A complex type that contains information about the specified service.</p>

##### Instances
``` purescript
Newtype Service _
Generic Service _
Show Service
Decode Service
Encode Service
```

#### `newService`

``` purescript
newService :: Service
```

Constructs Service from required parameters

#### `newService'`

``` purescript
newService' :: ({ "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (ServiceName), "Description" :: NullOrUndefined (ResourceDescription), "InstanceCount" :: NullOrUndefined (ResourceCount), "DnsConfig" :: NullOrUndefined (DnsConfig), "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig), "CreateDate" :: NullOrUndefined (Timestamp), "CreatorRequestId" :: NullOrUndefined (ResourceId) } -> { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (ServiceName), "Description" :: NullOrUndefined (ResourceDescription), "InstanceCount" :: NullOrUndefined (ResourceCount), "DnsConfig" :: NullOrUndefined (DnsConfig), "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig), "CreateDate" :: NullOrUndefined (Timestamp), "CreatorRequestId" :: NullOrUndefined (ResourceId) }) -> Service
```

Constructs Service's fields from required parameters

#### `ServiceAlreadyExists`

``` purescript
newtype ServiceAlreadyExists
  = ServiceAlreadyExists { "Message" :: NullOrUndefined (ErrorMessage), "CreatorRequestId" :: NullOrUndefined (ResourceId), "ServiceId" :: NullOrUndefined (ResourceId) }
```

<p>The service can't be created because a service with the same name already exists.</p>

##### Instances
``` purescript
Newtype ServiceAlreadyExists _
Generic ServiceAlreadyExists _
Show ServiceAlreadyExists
Decode ServiceAlreadyExists
Encode ServiceAlreadyExists
```

#### `newServiceAlreadyExists`

``` purescript
newServiceAlreadyExists :: ServiceAlreadyExists
```

Constructs ServiceAlreadyExists from required parameters

#### `newServiceAlreadyExists'`

``` purescript
newServiceAlreadyExists' :: ({ "Message" :: NullOrUndefined (ErrorMessage), "CreatorRequestId" :: NullOrUndefined (ResourceId), "ServiceId" :: NullOrUndefined (ResourceId) } -> { "Message" :: NullOrUndefined (ErrorMessage), "CreatorRequestId" :: NullOrUndefined (ResourceId), "ServiceId" :: NullOrUndefined (ResourceId) }) -> ServiceAlreadyExists
```

Constructs ServiceAlreadyExists's fields from required parameters

#### `ServiceChange`

``` purescript
newtype ServiceChange
  = ServiceChange { "Description" :: NullOrUndefined (ResourceDescription), "DnsConfig" :: DnsConfigChange, "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig) }
```

<p>A complex type that contains changes to an existing service.</p>

##### Instances
``` purescript
Newtype ServiceChange _
Generic ServiceChange _
Show ServiceChange
Decode ServiceChange
Encode ServiceChange
```

#### `newServiceChange`

``` purescript
newServiceChange :: DnsConfigChange -> ServiceChange
```

Constructs ServiceChange from required parameters

#### `newServiceChange'`

``` purescript
newServiceChange' :: DnsConfigChange -> ({ "Description" :: NullOrUndefined (ResourceDescription), "DnsConfig" :: DnsConfigChange, "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig) } -> { "Description" :: NullOrUndefined (ResourceDescription), "DnsConfig" :: DnsConfigChange, "HealthCheckConfig" :: NullOrUndefined (HealthCheckConfig) }) -> ServiceChange
```

Constructs ServiceChange's fields from required parameters

#### `ServiceFilter`

``` purescript
newtype ServiceFilter
  = ServiceFilter { "Name" :: ServiceFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) }
```

<p>A complex type that lets you specify the namespaces that you want to list services for.</p>

##### Instances
``` purescript
Newtype ServiceFilter _
Generic ServiceFilter _
Show ServiceFilter
Decode ServiceFilter
Encode ServiceFilter
```

#### `newServiceFilter`

``` purescript
newServiceFilter :: ServiceFilterName -> FilterValues -> ServiceFilter
```

Constructs ServiceFilter from required parameters

#### `newServiceFilter'`

``` purescript
newServiceFilter' :: ServiceFilterName -> FilterValues -> ({ "Name" :: ServiceFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) } -> { "Name" :: ServiceFilterName, "Values" :: FilterValues, "Condition" :: NullOrUndefined (FilterCondition) }) -> ServiceFilter
```

Constructs ServiceFilter's fields from required parameters

#### `ServiceFilterName`

``` purescript
newtype ServiceFilterName
  = ServiceFilterName String
```

##### Instances
``` purescript
Newtype ServiceFilterName _
Generic ServiceFilterName _
Show ServiceFilterName
Decode ServiceFilterName
Encode ServiceFilterName
```

#### `ServiceFilters`

``` purescript
newtype ServiceFilters
  = ServiceFilters (Array ServiceFilter)
```

##### Instances
``` purescript
Newtype ServiceFilters _
Generic ServiceFilters _
Show ServiceFilters
Decode ServiceFilters
Encode ServiceFilters
```

#### `ServiceName`

``` purescript
newtype ServiceName
  = ServiceName String
```

##### Instances
``` purescript
Newtype ServiceName _
Generic ServiceName _
Show ServiceName
Decode ServiceName
Encode ServiceName
```

#### `ServiceNotFound`

``` purescript
newtype ServiceNotFound
  = ServiceNotFound { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>No service exists with the specified ID.</p>

##### Instances
``` purescript
Newtype ServiceNotFound _
Generic ServiceNotFound _
Show ServiceNotFound
Decode ServiceNotFound
Encode ServiceNotFound
```

#### `newServiceNotFound`

``` purescript
newServiceNotFound :: ServiceNotFound
```

Constructs ServiceNotFound from required parameters

#### `newServiceNotFound'`

``` purescript
newServiceNotFound' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ServiceNotFound
```

Constructs ServiceNotFound's fields from required parameters

#### `ServiceSummariesList`

``` purescript
newtype ServiceSummariesList
  = ServiceSummariesList (Array ServiceSummary)
```

##### Instances
``` purescript
Newtype ServiceSummariesList _
Generic ServiceSummariesList _
Show ServiceSummariesList
Decode ServiceSummariesList
Encode ServiceSummariesList
```

#### `ServiceSummary`

``` purescript
newtype ServiceSummary
  = ServiceSummary { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (ServiceName), "Description" :: NullOrUndefined (ResourceDescription), "InstanceCount" :: NullOrUndefined (ResourceCount) }
```

<p>A complex type that contains information about a specified service.</p>

##### Instances
``` purescript
Newtype ServiceSummary _
Generic ServiceSummary _
Show ServiceSummary
Decode ServiceSummary
Encode ServiceSummary
```

#### `newServiceSummary`

``` purescript
newServiceSummary :: ServiceSummary
```

Constructs ServiceSummary from required parameters

#### `newServiceSummary'`

``` purescript
newServiceSummary' :: ({ "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (ServiceName), "Description" :: NullOrUndefined (ResourceDescription), "InstanceCount" :: NullOrUndefined (ResourceCount) } -> { "Id" :: NullOrUndefined (ResourceId), "Arn" :: NullOrUndefined (Arn), "Name" :: NullOrUndefined (ServiceName), "Description" :: NullOrUndefined (ResourceDescription), "InstanceCount" :: NullOrUndefined (ResourceCount) }) -> ServiceSummary
```

Constructs ServiceSummary's fields from required parameters

#### `UpdateServiceRequest`

``` purescript
newtype UpdateServiceRequest
  = UpdateServiceRequest { "Id" :: ResourceId, "Service" :: ServiceChange }
```

##### Instances
``` purescript
Newtype UpdateServiceRequest _
Generic UpdateServiceRequest _
Show UpdateServiceRequest
Decode UpdateServiceRequest
Encode UpdateServiceRequest
```

#### `newUpdateServiceRequest`

``` purescript
newUpdateServiceRequest :: ResourceId -> ServiceChange -> UpdateServiceRequest
```

Constructs UpdateServiceRequest from required parameters

#### `newUpdateServiceRequest'`

``` purescript
newUpdateServiceRequest' :: ResourceId -> ServiceChange -> ({ "Id" :: ResourceId, "Service" :: ServiceChange } -> { "Id" :: ResourceId, "Service" :: ServiceChange }) -> UpdateServiceRequest
```

Constructs UpdateServiceRequest's fields from required parameters

#### `UpdateServiceResponse`

``` purescript
newtype UpdateServiceResponse
  = UpdateServiceResponse { "OperationId" :: NullOrUndefined (OperationId) }
```

##### Instances
``` purescript
Newtype UpdateServiceResponse _
Generic UpdateServiceResponse _
Show UpdateServiceResponse
Decode UpdateServiceResponse
Encode UpdateServiceResponse
```

#### `newUpdateServiceResponse`

``` purescript
newUpdateServiceResponse :: UpdateServiceResponse
```

Constructs UpdateServiceResponse from required parameters

#### `newUpdateServiceResponse'`

``` purescript
newUpdateServiceResponse' :: ({ "OperationId" :: NullOrUndefined (OperationId) } -> { "OperationId" :: NullOrUndefined (OperationId) }) -> UpdateServiceResponse
```

Constructs UpdateServiceResponse's fields from required parameters


