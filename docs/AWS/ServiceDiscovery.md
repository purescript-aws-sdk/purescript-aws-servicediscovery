## Module AWS.ServiceDiscovery

<p>Amazon Route 53 auto naming lets you configure public or private namespaces that your microservice applications run in. When instances of the service become available, you can call the auto naming API to register the instance, and Route 53 automatically creates up to five DNS records and an optional health check. Clients that submit DNS queries for the service receive an answer that contains up to eight healthy records.</p>

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


