defmodule BcBikeTent.Mechanic do
	use Ecto.Schema

	schema "bt_mechanics" do
		field :first_name, :string
		field :middle_name, :string
		field :last_name, :string
		field :email_address, :string
		field :phone_number, :string

		has_many :service, BcBikeTent.Service
	end
end