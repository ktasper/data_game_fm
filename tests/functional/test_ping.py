from fmdata import create_app


def test_ping_page():
    """
    GIVEN a Flask application configured for testing
    WHEN the '/ping' page is requested (GET)
    THEN check that the response is valid
    """
    # Set the Testing configuration prior to creating the Flask application
    flask_app = create_app()

    # Create a test client using the Flask application configured for testing
    with flask_app.test_client() as test_client:
        response = test_client.get("/ping")
        assert response.status_code == 200
        resp = response.data.decode()
        assert "Football Manager Analysis Tool (FMAT)" in resp
        assert "This is an automated response used for testing" in resp
        assert "Pong" in resp
