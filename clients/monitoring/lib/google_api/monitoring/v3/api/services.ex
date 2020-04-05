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

defmodule GoogleApi.Monitoring.V3.Api.Services do
  @moduledoc """
  API calls for all endpoints tagged `Services`.
  """

  alias GoogleApi.Monitoring.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Create a Service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `parent`. Required. Resource name of the parent workspace. The format is:
      projects/[PROJECT_ID_OR_NUMBER]

  *   `v3_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:serviceId` (*type:* `String.t`) - Optional. The Service id to use for this Service. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\\-]+
      *   `:body` (*type:* `GoogleApi.Monitoring.V3.Model.Service.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.Service{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.Service.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_create(connection, v3_id, v3_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :serviceId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.Service{}])
  end

  @doc """
  Soft delete this Service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `name`. Required. Resource name of the Service to delete. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]

  *   `v3_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_delete(
        connection,
        v3_id,
        v3_id1,
        services_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services/{servicesId}", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
        "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.Empty{}])
  end

  @doc """
  Get the named Service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `name`. Required. Resource name of the Service. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]

  *   `v3_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.Service{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.Service.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_get(
        connection,
        v3_id,
        v3_id1,
        services_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services/{servicesId}", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
        "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.Service{}])
  end

  @doc """
  List Services for this workspace.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `parent`. Required. Resource name of the parent containing the listed services, either a project or a Monitoring Workspace. The formats are:
      projects/[PROJECT_ID_OR_NUMBER]
      workspaces/[HOST_PROJECT_ID_OR_NUMBER]

  *   `v3_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:filter` (*type:* `String.t`) - A filter specifying what Services to return. The filter currently supports the following fields:
          - `identifier_case`
          - `app_engine.module_id`
          - `cloud_endpoints.service`
          - `cluster_istio.location`
          - `cluster_istio.cluster_name`
          - `cluster_istio.service_namespace`
          - `cluster_istio.service_name`
          identifier_case refers to which option in the identifier oneof is populated. For example, the filter identifier_case = "CUSTOM" would match all services with a value for the custom field. Valid options are "CUSTOM", "APP_ENGINE", "CLOUD_ENDPOINTS", and "CLUSTER_ISTIO".
      *   `:pageSize` (*type:* `integer()`) - A non-negative number that is the maximum number of results to return. When 0, use default page size.
      *   `:pageToken` (*type:* `String.t`) - If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.ListServicesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Monitoring.V3.Model.ListServicesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_list(connection, v3_id, v3_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.ListServicesResponse{}])
  end

  @doc """
  Update this Service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `service.name`. Resource name for this Service. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]

  *   `v3_id1` (*type:* `String.t`) - Part of `service.name`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `service.name`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - A set of field paths defining which fields to use for the update.
      *   `:body` (*type:* `GoogleApi.Monitoring.V3.Model.Service.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.Service{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.Service.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_patch(
        connection,
        v3_id,
        v3_id1,
        services_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services/{servicesId}", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
        "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.Service{}])
  end

  @doc """
  Create a ServiceLevelObjective for the given Service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `parent`. Required. Resource name of the parent Service. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]

  *   `v3_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:serviceLevelObjectiveId` (*type:* `String.t`) - Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern [a-z0-9\\-]+
      *   `:body` (*type:* `GoogleApi.Monitoring.V3.Model.ServiceLevelObjective.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.ServiceLevelObjective{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_service_level_objectives_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.ServiceLevelObjective.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_service_level_objectives_create(
        connection,
        v3_id,
        v3_id1,
        services_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :serviceLevelObjectiveId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
        "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.ServiceLevelObjective{}])
  end

  @doc """
  Delete the given ServiceLevelObjective.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `name`. Required. Resource name of the ServiceLevelObjective to delete. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]

  *   `v3_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `service_level_objectives_id` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_service_level_objectives_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_service_level_objectives_delete(
        connection,
        v3_id,
        v3_id1,
        services_id,
        service_level_objectives_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives/{serviceLevelObjectivesId}",
        %{
          "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
          "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
          "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1),
          "serviceLevelObjectivesId" =>
            URI.encode(service_level_objectives_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.Empty{}])
  end

  @doc """
  Get a ServiceLevelObjective by name.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `name`. Required. Resource name of the ServiceLevelObjective to get. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]

  *   `v3_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `service_level_objectives_id` (*type:* `String.t`) - Part of `name`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:view` (*type:* `String.t`) - View of the ServiceLevelObjective to return. If DEFAULT, return the ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.ServiceLevelObjective{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_service_level_objectives_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.ServiceLevelObjective.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_service_level_objectives_get(
        connection,
        v3_id,
        v3_id1,
        services_id,
        service_level_objectives_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives/{serviceLevelObjectivesId}",
        %{
          "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
          "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
          "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1),
          "serviceLevelObjectivesId" =>
            URI.encode(service_level_objectives_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.ServiceLevelObjective{}])
  end

  @doc """
  List the ServiceLevelObjectives for the given Service.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `parent`. Required. Resource name of the parent containing the listed SLOs, either a project or a Monitoring Workspace. The formats are:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
      workspaces/[HOST_PROJECT_ID_OR_NUMBER]/services/-

  *   `v3_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:filter` (*type:* `String.t`) - A filter specifying what ServiceLevelObjectives to return.
      *   `:pageSize` (*type:* `integer()`) - A non-negative number that is the maximum number of results to return. When 0, use default page size.
      *   `:pageToken` (*type:* `String.t`) - If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
      *   `:view` (*type:* `String.t`) - View of the ServiceLevelObjectives to return. If DEFAULT, return each ServiceLevelObjective as originally defined. If EXPLICIT and the ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli with a RequestBasedSli spelling out how the SLI is computed.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.ListServiceLevelObjectivesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_service_level_objectives_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.ListServiceLevelObjectivesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_service_level_objectives_list(
        connection,
        v3_id,
        v3_id1,
        services_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives", %{
        "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
        "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
        "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Monitoring.V3.Model.ListServiceLevelObjectivesResponse{}]
    )
  end

  @doc """
  Update the given ServiceLevelObjective.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Monitoring.V3.Connection.t`) - Connection to server
  *   `v3_id` (*type:* `String.t`) - Part of `serviceLevelObjective.name`. Resource name for this ServiceLevelObjective. The format is:
      projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]

  *   `v3_id1` (*type:* `String.t`) - Part of `serviceLevelObjective.name`. See documentation of `v3Id`.
  *   `services_id` (*type:* `String.t`) - Part of `serviceLevelObjective.name`. See documentation of `v3Id`.
  *   `service_level_objectives_id` (*type:* `String.t`) - Part of `serviceLevelObjective.name`. See documentation of `v3Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - A set of field paths defining which fields to use for the update.
      *   `:body` (*type:* `GoogleApi.Monitoring.V3.Model.ServiceLevelObjective.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Monitoring.V3.Model.ServiceLevelObjective{}}` on success
  *   `{:error, info}` on failure
  """
  @spec monitoring_services_service_level_objectives_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Monitoring.V3.Model.ServiceLevelObjective.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def monitoring_services_service_level_objectives_patch(
        connection,
        v3_id,
        v3_id1,
        services_id,
        service_level_objectives_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url(
        "/v3/{v3Id}/{v3Id1}/services/{servicesId}/serviceLevelObjectives/{serviceLevelObjectivesId}",
        %{
          "v3Id" => URI.encode(v3_id, &URI.char_unreserved?/1),
          "v3Id1" => URI.encode(v3_id1, &URI.char_unreserved?/1),
          "servicesId" => URI.encode(services_id, &URI.char_unreserved?/1),
          "serviceLevelObjectivesId" =>
            URI.encode(service_level_objectives_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Monitoring.V3.Model.ServiceLevelObjective{}])
  end
end
