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

defmodule GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails do
  @moduledoc """
  ScheduledDeliveryDetails used to update the scheduled delivery order.

  ## Attributes

  *   `carrierPhoneNumber` (*type:* `String.t`, *default:* `nil`) - The phone number of the carrier fulfilling the delivery. The phone number should be formatted as the international notation in
  *   `scheduledDate` (*type:* `String.t`, *default:* `nil`) - The date a shipment is scheduled for delivery, in ISO 8601 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :carrierPhoneNumber => String.t(),
          :scheduledDate => String.t()
        }

  field(:carrierPhoneNumber)
  field(:scheduledDate)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Content.V21.Model.OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
