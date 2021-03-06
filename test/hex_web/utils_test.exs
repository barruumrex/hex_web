defmodule HexWeb.UtilsTest do
  use ExUnit.Case, async: true
  alias HexWeb.Utils

  test "safe search" do
    string = "& *  WSDL  SOAP   "
    assert Utils.safe_search(string) == "WSDL  SOAP"

    input = "WSDL/SOAP*()"
    assert Utils.safe_search(input) == "WSDL SOAP"
  end
end
