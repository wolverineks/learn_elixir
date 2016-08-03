defmodule UserTest do
  use ExUnit.Case
  doctest User
  import User

  setup do
    user = %User{name: "Bugs Bunny"}

    { :ok, user: user }
  end

  test "first_name returns the first word from given name", %{user: user} do
    assert first_name(user) == "Bugs"
  end

  test "last_name returns the last word from given name", %{user: user} do
    assert last_name(user) == "Bunny"
  end
end
