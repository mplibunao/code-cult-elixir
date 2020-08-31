defmodule RateCard do
  def get_pricing_for(_, distance) when distance < 0, do: {:error, :invalid_distance}

  def get_pricing_for("bike", distance) when distance < 5, do: {:ok, 15}
  def get_pricing_for("bike", distance) when distance < 10, do: {:ok, 17}
  def get_pricing_for("bike", distance) when distance < 15, do: {:ok, 22}
  def get_pricing_for("bike", distance) when distance < 20, do: {:ok, 27}
  def get_pricing_for("bike", distance) when distance >= 20, do: {:ok, 30}

  def get_pricing_for("car", distance) when distance < 5, do: {:ok, 20}
  def get_pricing_for("car", distance) when distance < 10, do: {:ok, 25}
  def get_pricing_for("car", distance) when distance < 15, do: {:ok, 30}
  def get_pricing_for("car", distance) when distance < 20, do: {:ok, 35}
  def get_pricing_for("car", distance) when distance >= 20, do: {:ok, 40}
end
