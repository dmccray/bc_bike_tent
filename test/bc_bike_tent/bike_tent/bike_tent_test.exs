defmodule BcBikeTent.BikeTentTest do
  use BcBikeTent.DataCase

  alias BcBikeTent.BikeTent

  describe "mechanic" do
    alias BcBikeTent.BikeTent.Mechanic

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def mechanic_fixture(attrs \\ %{}) do
      {:ok, mechanic} =
        attrs
        |> Enum.into(@valid_attrs)
        |> BikeTent.create_mechanic()

      mechanic
    end

    test "list_mechanic/0 returns all mechanic" do
      mechanic = mechanic_fixture()
      assert BikeTent.list_mechanic() == [mechanic]
    end

    test "get_mechanic!/1 returns the mechanic with given id" do
      mechanic = mechanic_fixture()
      assert BikeTent.get_mechanic!(mechanic.id) == mechanic
    end

    test "create_mechanic/1 with valid data creates a mechanic" do
      assert {:ok, %Mechanic{} = mechanic} = BikeTent.create_mechanic(@valid_attrs)
    end

    test "create_mechanic/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BikeTent.create_mechanic(@invalid_attrs)
    end

    test "update_mechanic/2 with valid data updates the mechanic" do
      mechanic = mechanic_fixture()
      assert {:ok, mechanic} = BikeTent.update_mechanic(mechanic, @update_attrs)
      assert %Mechanic{} = mechanic
    end

    test "update_mechanic/2 with invalid data returns error changeset" do
      mechanic = mechanic_fixture()
      assert {:error, %Ecto.Changeset{}} = BikeTent.update_mechanic(mechanic, @invalid_attrs)
      assert mechanic == BikeTent.get_mechanic!(mechanic.id)
    end

    test "delete_mechanic/1 deletes the mechanic" do
      mechanic = mechanic_fixture()
      assert {:ok, %Mechanic{}} = BikeTent.delete_mechanic(mechanic)
      assert_raise Ecto.NoResultsError, fn -> BikeTent.get_mechanic!(mechanic.id) end
    end

    test "change_mechanic/1 returns a mechanic changeset" do
      mechanic = mechanic_fixture()
      assert %Ecto.Changeset{} = BikeTent.change_mechanic(mechanic)
    end
  end

  describe "language" do
    alias BcBikeTent.BikeTent.Language

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def language_fixture(attrs \\ %{}) do
      {:ok, language} =
        attrs
        |> Enum.into(@valid_attrs)
        |> BikeTent.create_language()

      language
    end

    test "list_language/0 returns all language" do
      language = language_fixture()
      assert BikeTent.list_language() == [language]
    end

    test "get_language!/1 returns the language with given id" do
      language = language_fixture()
      assert BikeTent.get_language!(language.id) == language
    end

    test "create_language/1 with valid data creates a language" do
      assert {:ok, %Language{} = language} = BikeTent.create_language(@valid_attrs)
    end

    test "create_language/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BikeTent.create_language(@invalid_attrs)
    end

    test "update_language/2 with valid data updates the language" do
      language = language_fixture()
      assert {:ok, language} = BikeTent.update_language(language, @update_attrs)
      assert %Language{} = language
    end

    test "update_language/2 with invalid data returns error changeset" do
      language = language_fixture()
      assert {:error, %Ecto.Changeset{}} = BikeTent.update_language(language, @invalid_attrs)
      assert language == BikeTent.get_language!(language.id)
    end

    test "delete_language/1 deletes the language" do
      language = language_fixture()
      assert {:ok, %Language{}} = BikeTent.delete_language(language)
      assert_raise Ecto.NoResultsError, fn -> BikeTent.get_language!(language.id) end
    end

    test "change_language/1 returns a language changeset" do
      language = language_fixture()
      assert %Ecto.Changeset{} = BikeTent.change_language(language)
    end
  end

  describe "service" do
    alias BcBikeTent.BikeTent.Service

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def service_fixture(attrs \\ %{}) do
      {:ok, service} =
        attrs
        |> Enum.into(@valid_attrs)
        |> BikeTent.create_service()

      service
    end

    test "list_service/0 returns all service" do
      service = service_fixture()
      assert BikeTent.list_service() == [service]
    end

    test "get_service!/1 returns the service with given id" do
      service = service_fixture()
      assert BikeTent.get_service!(service.id) == service
    end

    test "create_service/1 with valid data creates a service" do
      assert {:ok, %Service{} = service} = BikeTent.create_service(@valid_attrs)
    end

    test "create_service/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BikeTent.create_service(@invalid_attrs)
    end

    test "update_service/2 with valid data updates the service" do
      service = service_fixture()
      assert {:ok, service} = BikeTent.update_service(service, @update_attrs)
      assert %Service{} = service
    end

    test "update_service/2 with invalid data returns error changeset" do
      service = service_fixture()
      assert {:error, %Ecto.Changeset{}} = BikeTent.update_service(service, @invalid_attrs)
      assert service == BikeTent.get_service!(service.id)
    end

    test "delete_service/1 deletes the service" do
      service = service_fixture()
      assert {:ok, %Service{}} = BikeTent.delete_service(service)
      assert_raise Ecto.NoResultsError, fn -> BikeTent.get_service!(service.id) end
    end

    test "change_service/1 returns a service changeset" do
      service = service_fixture()
      assert %Ecto.Changeset{} = BikeTent.change_service(service)
    end
  end
end
