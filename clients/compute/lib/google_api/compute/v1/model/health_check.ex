# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.HealthCheck do
  @moduledoc """
  Represents a Health Check resource. Google Compute Engine has two Health Check resources: * [Global](/compute/docs/reference/rest/v1/healthChecks) * [Regional](/compute/docs/reference/rest/v1/regionHealthChecks) Internal HTTP(S) load balancers must use regional health checks (`compute.v1.regionHealthChecks`). Traffic Director must use global health checks (`compute.v1.HealthChecks`). Internal TCP/UDP load balancers can use either regional or global health checks (`compute.v1.regionHealthChecks` or `compute.v1.HealthChecks`). External HTTP(S), TCP proxy, and SSL proxy load balancers as well as managed instance group auto-healing must use global health checks (`compute.v1.HealthChecks`). Backend service-based network load balancers must use regional health checks (`compute.v1.regionHealthChecks`). Target pool-based network load balancers must use legacy HTTP health checks (`compute.v1.httpHealthChecks`). For more information, see Health checks overview.

  ## Attributes

  *   `checkIntervalSec` (*type:* `integer()`, *default:* `nil`) - How often (in seconds) to send a health check. The default value is 5 seconds.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in 3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `grpcHealthCheck` (*type:* `GoogleApi.Compute.V1.Model.GRPCHealthCheck.t`, *default:* `nil`) - 
  *   `healthyThreshold` (*type:* `integer()`, *default:* `nil`) - A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  *   `http2HealthCheck` (*type:* `GoogleApi.Compute.V1.Model.HTTP2HealthCheck.t`, *default:* `nil`) - 
  *   `httpHealthCheck` (*type:* `GoogleApi.Compute.V1.Model.HTTPHealthCheck.t`, *default:* `nil`) - 
  *   `httpsHealthCheck` (*type:* `GoogleApi.Compute.V1.Model.HTTPSHealthCheck.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#healthCheck`) - Type of the resource.
  *   `logConfig` (*type:* `GoogleApi.Compute.V1.Model.HealthCheckLogConfig.t`, *default:* `nil`) - Configure logging on this health check.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] Region where the health check resides. Not applicable to global health checks.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `sslHealthCheck` (*type:* `GoogleApi.Compute.V1.Model.SSLHealthCheck.t`, *default:* `nil`) - 
  *   `tcpHealthCheck` (*type:* `GoogleApi.Compute.V1.Model.TCPHealthCheck.t`, *default:* `nil`) - 
  *   `timeoutSec` (*type:* `integer()`, *default:* `nil`) - How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS or HTTP2. Exactly one of the protocol-specific health check field must be specified, which must match type field.
  *   `unhealthyThreshold` (*type:* `integer()`, *default:* `nil`) - A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkIntervalSec => integer() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :grpcHealthCheck => GoogleApi.Compute.V1.Model.GRPCHealthCheck.t() | nil,
          :healthyThreshold => integer() | nil,
          :http2HealthCheck => GoogleApi.Compute.V1.Model.HTTP2HealthCheck.t() | nil,
          :httpHealthCheck => GoogleApi.Compute.V1.Model.HTTPHealthCheck.t() | nil,
          :httpsHealthCheck => GoogleApi.Compute.V1.Model.HTTPSHealthCheck.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :logConfig => GoogleApi.Compute.V1.Model.HealthCheckLogConfig.t() | nil,
          :name => String.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :sslHealthCheck => GoogleApi.Compute.V1.Model.SSLHealthCheck.t() | nil,
          :tcpHealthCheck => GoogleApi.Compute.V1.Model.TCPHealthCheck.t() | nil,
          :timeoutSec => integer() | nil,
          :type => String.t() | nil,
          :unhealthyThreshold => integer() | nil
        }

  field(:checkIntervalSec)
  field(:creationTimestamp)
  field(:description)
  field(:grpcHealthCheck, as: GoogleApi.Compute.V1.Model.GRPCHealthCheck)
  field(:healthyThreshold)
  field(:http2HealthCheck, as: GoogleApi.Compute.V1.Model.HTTP2HealthCheck)
  field(:httpHealthCheck, as: GoogleApi.Compute.V1.Model.HTTPHealthCheck)
  field(:httpsHealthCheck, as: GoogleApi.Compute.V1.Model.HTTPSHealthCheck)
  field(:id)
  field(:kind)
  field(:logConfig, as: GoogleApi.Compute.V1.Model.HealthCheckLogConfig)
  field(:name)
  field(:region)
  field(:selfLink)
  field(:sslHealthCheck, as: GoogleApi.Compute.V1.Model.SSLHealthCheck)
  field(:tcpHealthCheck, as: GoogleApi.Compute.V1.Model.TCPHealthCheck)
  field(:timeoutSec)
  field(:type)
  field(:unhealthyThreshold)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HealthCheck do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HealthCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HealthCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
