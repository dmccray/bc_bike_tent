defmodule BcBikeTent.Service do
	use Ecto.Schema

	schema "bt_services" do
		field :service_dt, :date
		field :client_name, :string
		field :email_address, :string
		field :claimed_bool, :boolean
		field :problem, :string

		belongs_to :language, BcBikeTent.Language, [foreign_key: :language_t, references: :language_t]
		belongs_to :mechanic, BcBikeTent.Mechanic
	end
end