defmodule BcBikeTent.BikeTent.Mechanic do
	use Ecto.Schema
	import Ecto.Changeset
	alias BcBikeTent.BikeTent.Mechanic

	schema "bt_mechanics" do
		field :first_name, :string
		field :middle_name, :string
		field :last_name, :string
		field :email_address, :string
		field :phone_number, :string

		has_many :service, BcBikeTent.BikeTent.Service
	end

	def changeset(%Mechanic{} = mechanic, attrs) do
		mechanic
		|> cast(attrs, [:first_name, :middle_name, :last_name, :email_address, :phone_number])
		|> validate_required([:last_name])
		#|> cast_assoc(:service, required: false)
	end
end