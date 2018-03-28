## Module AWS.ServiceDiscovery.Requests

#### `createPrivateDnsNamespace`

``` purescript
createPrivateDnsNamespace :: forall eff. Service -> CreatePrivateDnsNamespaceRequest -> Aff (exception :: EXCEPTION | eff) CreatePrivateDnsNamespaceResponse
```

<p>Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. You can associate more than one service with the same namespace.</p>

#### `createPublicDnsNamespace`

``` purescript
createPublicDnsNamespace :: forall eff. Service -> CreatePublicDnsNamespaceRequest -> Aff (exception :: EXCEPTION | eff) CreatePublicDnsNamespaceResponse
```

<p>Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. You can associate more than one service with the same namespace.</p>

#### `createService`

``` purescript
createService :: forall eff. Service -> CreateServiceRequest -> Aff (exception :: EXCEPTION | eff) CreateServiceResponse
```

<p>Creates a service, which defines the configuration for the following entities:</p> <ul> <li> <p>Up to three records (A, AAAA, and SRV) or one CNAME record</p> </li> <li> <p>Optionally, a health check</p> </li> </ul> <p>After you create the service, you can submit a <a>RegisterInstance</a> request, and Amazon Route 53 uses the values in the configuration to create the specified entities. </p>

#### `deleteNamespace`

``` purescript
deleteNamespace :: forall eff. Service -> DeleteNamespaceRequest -> Aff (exception :: EXCEPTION | eff) DeleteNamespaceResponse
```

<p>Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.</p>

#### `deleteService`

``` purescript
deleteService :: forall eff. Service -> DeleteServiceRequest -> Aff (exception :: EXCEPTION | eff) DeleteServiceResponse
```

<p>Deletes a specified service. If the service still contains one or more registered instances, the request fails.</p>

#### `deregisterInstance`

``` purescript
deregisterInstance :: forall eff. Service -> DeregisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) DeregisterInstanceResponse
```

<p>Deletes the records and the health check, if any, that Amazon Route 53 created for the specified instance.</p>

#### `getInstance`

``` purescript
getInstance :: forall eff. Service -> GetInstanceRequest -> Aff (exception :: EXCEPTION | eff) GetInstanceResponse
```

<p>Gets information about a specified instance.</p>

#### `getInstancesHealthStatus`

``` purescript
getInstancesHealthStatus :: forall eff. Service -> GetInstancesHealthStatusRequest -> Aff (exception :: EXCEPTION | eff) GetInstancesHealthStatusResponse
```

<p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of one or more instances that are associated with a specified service.</p> <note> <p>There is a brief delay between when you register an instance and when the health status for the instance is available. </p> </note>

#### `getNamespace`

``` purescript
getNamespace :: forall eff. Service -> GetNamespaceRequest -> Aff (exception :: EXCEPTION | eff) GetNamespaceResponse
```

<p>Gets information about a namespace.</p>

#### `getOperation`

``` purescript
getOperation :: forall eff. Service -> GetOperationRequest -> Aff (exception :: EXCEPTION | eff) GetOperationResponse
```

<p>Gets information about any operation that returns an operation ID in the response, such as a <code>CreateService</code> request.</p> <note> <p>To get a list of operations that match specified criteria, see <a>ListOperations</a>.</p> </note>

#### `getService`

``` purescript
getService :: forall eff. Service -> GetServiceRequest -> Aff (exception :: EXCEPTION | eff) GetServiceResponse
```

<p>Gets the settings for a specified service.</p>

#### `listInstances`

``` purescript
listInstances :: forall eff. Service -> ListInstancesRequest -> Aff (exception :: EXCEPTION | eff) ListInstancesResponse
```

<p>Lists summary information about the instances that you registered by using a specified service.</p>

#### `listNamespaces`

``` purescript
listNamespaces :: forall eff. Service -> ListNamespacesRequest -> Aff (exception :: EXCEPTION | eff) ListNamespacesResponse
```

<p>Lists summary information about the namespaces that were created by the current AWS account.</p>

#### `listOperations`

``` purescript
listOperations :: forall eff. Service -> ListOperationsRequest -> Aff (exception :: EXCEPTION | eff) ListOperationsResponse
```

<p>Lists operations that match the criteria that you specify.</p>

#### `listServices`

``` purescript
listServices :: forall eff. Service -> ListServicesRequest -> Aff (exception :: EXCEPTION | eff) ListServicesResponse
```

<p>Lists summary information for all the services that are associated with one or more specified namespaces.</p>

#### `registerInstance`

``` purescript
registerInstance :: forall eff. Service -> RegisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) RegisterInstanceResponse
```

<p>Creates or updates one or more records and optionally a health check based on the settings in a specified service. When you submit a <code>RegisterInstance</code> request, Amazon Route 53 does the following:</p> <ul> <li> <p>For each DNS record that you define in the service specified by <code>ServiceId</code>, creates or updates a record in the hosted zone that is associated with the corresponding namespace</p> </li> <li> <p>Creates or updates a health check based on the settings in the health check configuration, if any, for the service</p> </li> <li> <p>Associates the health check, if any, with each of the records</p> </li> </ul> <important> <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify the same service ID and instance ID.</p> </important> <p>For more information, see <a>CreateService</a>.</p> <p>When Route 53 receives a DNS query for the specified DNS name, it returns the applicable value:</p> <ul> <li> <p> <b>If the health check is healthy</b>: returns all the records</p> </li> <li> <p> <b>If the health check is unhealthy</b>: returns the IP address of the last healthy instance</p> </li> <li> <p> <b>If you didn't specify a health check configuration</b>: returns all the records</p> </li> </ul>

#### `updateService`

``` purescript
updateService :: forall eff. Service -> UpdateServiceRequest -> Aff (exception :: EXCEPTION | eff) UpdateServiceResponse
```

<p>Submits a request to perform the following operations:</p> <ul> <li> <p>Add or delete <code>DnsRecords</code> configurations</p> </li> <li> <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p> </li> <li> <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p> </li> <li> <p/> </li> </ul> <p>You must specify all <code>DnsRecords</code> configurations (and, optionally, <code>HealthCheckConfig</code>) that you want to appear in the updated service. Any current configurations that don't appear in an <code>UpdateService</code> request are deleted.</p> <p>When you update the TTL setting for a service, Amazon Route 53 also updates the corresponding settings in all the records and health checks that were created by using the specified service.</p>


