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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DataSourceConnectionSpec do
  @moduledoc """
  Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.

  ## Attributes

  *   `bigqueryConnectionSpec` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec.t`, *default:* `nil`) - Fields specific to BigQuery connections.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryConnectionSpec =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec.t()
            | nil
        }

  field(:bigqueryConnectionSpec,
    as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BigQueryConnectionSpec
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DataSourceConnectionSpec do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DataSourceConnectionSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1DataSourceConnectionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end