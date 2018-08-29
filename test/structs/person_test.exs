defmodule Structs.PersonTest do
  use ExUnit.Case
  alias Structs.Person
  # doctest Person

  test "Colombia" do
    assert :ok == Person.can_drink?(%Person{name: "Harold", age: 28, gender: "M", country: "Colombia"})
  end

  test "Antigua and Barbuda" do
    assert :prohibited == Person.can_drink?(%Person{name: "Tamesha", age: 9, gender: "M", country: "Antigua and Barbuda"})
  end

  test "Afghanistan" do
    assert :ban == Person.can_drink?(%Person{name: "Aamir", age: 35, gender: "M", country: "Afghanistan"})
  end

  test "Bolivia" do
    assert :ok == Person.can_drink?(%Person{name: "Evo", age: 1, gender: "M", country: "Bolivia"})
  end

  test "Central African Republic" do
    assert :ok == Person.can_drink?(%Person{name: "Abdul-Azeez", age: 15, gender: "M", country: "Central African Republic"})
  end

  test "Cote d'Ivoire" do
    assert :prohibited == Person.can_drink?(%Person{name: "Abdul-Azeez", age: 20, gender: "M", country: "Cote d'Ivoire"})
  end

  test "Country not found" do
    assert :not_found == Person.can_drink?(%Person{name: "Hugo", age: 2, gender: "M", country: "Venezuela"})
  end

  test "No function clause matching" do
    assert_raise FunctionClauseError, ~r/^no function clause matching/, fn ->
      raise Person.can_drink?(%Person{name: "Harold", age: 0, gender: "M", country: "Bolivia"})
    end
  end

end
