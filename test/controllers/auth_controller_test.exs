defmodule PhoenixVideoStream.AuthControllerTest do
  use PhoenixVideoStream.ConnCase

  test "redirects user to Google for authentication", %{conn: conn} do
    conn = get conn, "/auth/google?scope=email%20profile"
    assert redirected_to(conn, 302)
  end
end
