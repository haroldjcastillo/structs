defmodule Structs.PersonValidator do

  defmacro is_valid_Age(age) do
    quote do: unquote(age) > 0
  end

end
