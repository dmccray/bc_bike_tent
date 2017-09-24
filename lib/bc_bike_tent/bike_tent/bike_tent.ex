defmodule BcBikeTent.BikeTent do
  @moduledoc """
  The BikeTent context.
  """

  import Ecto.Query, warn: false
  alias BcBikeTent.Repo

  alias BcBikeTent.BikeTent.Mechanic

  @doc """
  Returns the list of mechanic.

  ## Examples

      iex> list_mechanic()
      [%Mechanic{}, ...]

  """
  def list_mechanic do
    Repo.all(Mechanic)
  end

  @doc """
  Gets a single mechanic.

  Raises if the Mechanic does not exist.

  ## Examples

      iex> get_mechanic!(123)
      %Mechanic{}

  """
  def get_mechanic!(id), do: Repo.get!(Mechanic, id)

  @doc """
  Creates a mechanic.

  ## Examples

      iex> create_mechanic(%{field: value})
      {:ok, %Mechanic{}}

      iex> create_mechanic(%{field: bad_value})
      {:error, ...}

  """
  def create_mechanic(attrs \\ %{}) do
    %Mechanic{}
    |> Mechanic.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a mechanic.

  ## Examples

      iex> update_mechanic(mechanic, %{field: new_value})
      {:ok, %Mechanic{}}

      iex> update_mechanic(mechanic, %{field: bad_value})
      {:error, ...}

  """
  def update_mechanic(%Mechanic{} = mechanic, attrs) do
    mechanic
    |> Mechanic.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Mechanic.

  ## Examples

      iex> delete_mechanic(mechanic)
      {:ok, %Mechanic{}}

      iex> delete_mechanic(mechanic)
      {:error, ...}

  """
  def delete_mechanic(%Mechanic{} = mechanic) do
    Repo.delete(mechanic)
  end

  @doc """
  Returns a datastructure for tracking mechanic changes.

  ## Examples

      iex> change_mechanic(mechanic)
      %Todo{...}

  """
  def change_mechanic(%Mechanic{} = mechanic) do
    Mechanic.changeset(mechanic, %{})
  end

  alias BcBikeTent.BikeTent.Language

  @doc """
  Returns the list of language.

  ## Examples

      iex> list_language()
      [%Language{}, ...]

  """
  def list_language do
    raise "TODO"
  end

  @doc """
  Gets a single language.

  Raises if the Language does not exist.

  ## Examples

      iex> get_language!(123)
      %Language{}

  """
  def get_language!(id), do: raise "TODO"

  @doc """
  Creates a language.

  ## Examples

      iex> create_language(%{field: value})
      {:ok, %Language{}}

      iex> create_language(%{field: bad_value})
      {:error, ...}

  """
  def create_language(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a language.

  ## Examples

      iex> update_language(language, %{field: new_value})
      {:ok, %Language{}}

      iex> update_language(language, %{field: bad_value})
      {:error, ...}

  """
  def update_language(%Language{} = language, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Language.

  ## Examples

      iex> delete_language(language)
      {:ok, %Language{}}

      iex> delete_language(language)
      {:error, ...}

  """
  def delete_language(%Language{} = language) do
    raise "TODO"
  end

  @doc """
  Returns a datastructure for tracking language changes.

  ## Examples

      iex> change_language(language)
      %Todo{...}

  """
  def change_language(%Language{} = language) do
    raise "TODO"
  end

  alias BcBikeTent.BikeTent.Service

  @doc """
  Returns the list of service.

  ## Examples

      iex> list_service()
      [%Service{}, ...]

  """
  def list_service do
    raise "TODO"
  end

  @doc """
  Gets a single service.

  Raises if the Service does not exist.

  ## Examples

      iex> get_service!(123)
      %Service{}

  """
  def get_service!(id), do: raise "TODO"

  @doc """
  Creates a service.

  ## Examples

      iex> create_service(%{field: value})
      {:ok, %Service{}}

      iex> create_service(%{field: bad_value})
      {:error, ...}

  """
  def create_service(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a service.

  ## Examples

      iex> update_service(service, %{field: new_value})
      {:ok, %Service{}}

      iex> update_service(service, %{field: bad_value})
      {:error, ...}

  """
  def update_service(%Service{} = service, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Service.

  ## Examples

      iex> delete_service(service)
      {:ok, %Service{}}

      iex> delete_service(service)
      {:error, ...}

  """
  def delete_service(%Service{} = service) do
    raise "TODO"
  end

  @doc """
  Returns a datastructure for tracking service changes.

  ## Examples

      iex> change_service(service)
      %Todo{...}

  """
  def change_service(%Service{} = service) do
    raise "TODO"
  end
end
