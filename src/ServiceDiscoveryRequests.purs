
module AWS.ServiceDiscovery.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ServiceDiscovery as ServiceDiscovery
import AWS.ServiceDiscovery.Types as ServiceDiscoveryTypes


-- | <p>Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. You can associate more than one service with the same namespace.</p>
createPrivateDnsNamespace :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.CreatePrivateDnsNamespaceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.CreatePrivateDnsNamespaceResponse
createPrivateDnsNamespace (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPrivateDnsNamespace"


-- | <p>Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. You can associate more than one service with the same namespace.</p>
createPublicDnsNamespace :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.CreatePublicDnsNamespaceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.CreatePublicDnsNamespaceResponse
createPublicDnsNamespace (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPublicDnsNamespace"


-- | <p>Creates a service, which defines the configuration for the following entities:</p> <ul> <li> <p>Up to three records (A, AAAA, and SRV) or one CNAME record</p> </li> <li> <p>Optionally, a health check</p> </li> </ul> <p>After you create the service, you can submit a <a>RegisterInstance</a> request, and Amazon Route 53 uses the values in the configuration to create the specified entities. </p>
createService :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.CreateServiceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.CreateServiceResponse
createService (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createService"


-- | <p>Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.</p>
deleteNamespace :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.DeleteNamespaceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.DeleteNamespaceResponse
deleteNamespace (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteNamespace"


-- | <p>Deletes a specified service. If the service still contains one or more registered instances, the request fails.</p>
deleteService :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.DeleteServiceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.DeleteServiceResponse
deleteService (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteService"


-- | <p>Deletes the records and the health check, if any, that Amazon Route 53 created for the specified instance.</p>
deregisterInstance :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.DeregisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.DeregisterInstanceResponse
deregisterInstance (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deregisterInstance"


-- | <p>Gets information about a specified instance.</p>
getInstance :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.GetInstanceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.GetInstanceResponse
getInstance (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getInstance"


-- | <p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of one or more instances that are associated with a specified service.</p> <note> <p>There is a brief delay between when you register an instance and when the health status for the instance is available. </p> </note>
getInstancesHealthStatus :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.GetInstancesHealthStatusRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.GetInstancesHealthStatusResponse
getInstancesHealthStatus (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getInstancesHealthStatus"


-- | <p>Gets information about a namespace.</p>
getNamespace :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.GetNamespaceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.GetNamespaceResponse
getNamespace (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getNamespace"


-- | <p>Gets information about any operation that returns an operation ID in the response, such as a <code>CreateService</code> request.</p> <note> <p>To get a list of operations that match specified criteria, see <a>ListOperations</a>.</p> </note>
getOperation :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.GetOperationRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.GetOperationResponse
getOperation (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getOperation"


-- | <p>Gets the settings for a specified service.</p>
getService :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.GetServiceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.GetServiceResponse
getService (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getService"


-- | <p>Lists summary information about the instances that you registered by using a specified service.</p>
listInstances :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.ListInstancesRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.ListInstancesResponse
listInstances (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInstances"


-- | <p>Lists summary information about the namespaces that were created by the current AWS account.</p>
listNamespaces :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.ListNamespacesRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.ListNamespacesResponse
listNamespaces (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listNamespaces"


-- | <p>Lists operations that match the criteria that you specify.</p>
listOperations :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.ListOperationsRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.ListOperationsResponse
listOperations (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOperations"


-- | <p>Lists summary information for all the services that are associated with one or more specified namespaces.</p>
listServices :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.ListServicesRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.ListServicesResponse
listServices (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listServices"


-- | <p>Creates or updates one or more records and optionally a health check based on the settings in a specified service. When you submit a <code>RegisterInstance</code> request, Amazon Route 53 does the following:</p> <ul> <li> <p>For each DNS record that you define in the service specified by <code>ServiceId</code>, creates or updates a record in the hosted zone that is associated with the corresponding namespace</p> </li> <li> <p>Creates or updates a health check based on the settings in the health check configuration, if any, for the service</p> </li> <li> <p>Associates the health check, if any, with each of the records</p> </li> </ul> <important> <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify the same service ID and instance ID.</p> </important> <p>For more information, see <a>CreateService</a>.</p> <p>When Route 53 receives a DNS query for the specified DNS name, it returns the applicable value:</p> <ul> <li> <p> <b>If the health check is healthy</b>: returns all the records</p> </li> <li> <p> <b>If the health check is unhealthy</b>: returns the IP address of the last healthy instance</p> </li> <li> <p> <b>If you didn't specify a health check configuration</b>: returns all the records</p> </li> </ul>
registerInstance :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.RegisterInstanceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.RegisterInstanceResponse
registerInstance (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerInstance"


-- | <p>Submits a request to perform the following operations:</p> <ul> <li> <p>Add or delete <code>DnsRecords</code> configurations</p> </li> <li> <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p> </li> <li> <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p> </li> <li> <p/> </li> </ul> <p>You must specify all <code>DnsRecords</code> configurations (and, optionally, <code>HealthCheckConfig</code>) that you want to appear in the updated service. Any current configurations that don't appear in an <code>UpdateService</code> request are deleted.</p> <p>When you update the TTL setting for a service, Amazon Route 53 also updates the corresponding settings in all the records and health checks that were created by using the specified service.</p>
updateService :: forall eff. ServiceDiscovery.Service -> ServiceDiscoveryTypes.UpdateServiceRequest -> Aff (exception :: EXCEPTION | eff) ServiceDiscoveryTypes.UpdateServiceResponse
updateService (ServiceDiscovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateService"
