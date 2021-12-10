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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.Categories do
  @moduledoc """
  A collection of categories that describes the business. During updates, both fields must be set. Clients are prohibited from individually updating the primary or additional categories using the update mask.

  ## Attributes

  *   `additionalCategories` (*type:* `list(GoogleApi.MyBusinessBusinessInformation.V1.Model.Category.t)`, *default:* `nil`) - Optional. Additional categories to describe your business. Categories help your customers find accurate, specific results for services they're interested in. To keep your business information accurate and live, make sure that you use as few categories as possible to describe your overall core business. Choose categories that are as specific as possible, but representative of your main business.
  *   `primaryCategory` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.Category.t`, *default:* `nil`) - Required. Category that best describes the core business this location engages in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalCategories =>
            list(GoogleApi.MyBusinessBusinessInformation.V1.Model.Category.t()) | nil,
          :primaryCategory => GoogleApi.MyBusinessBusinessInformation.V1.Model.Category.t() | nil
        }

  field(:additionalCategories,
    as: GoogleApi.MyBusinessBusinessInformation.V1.Model.Category,
    type: :list
  )

  field(:primaryCategory, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.Category)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.Categories do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.Categories.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.Categories do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
