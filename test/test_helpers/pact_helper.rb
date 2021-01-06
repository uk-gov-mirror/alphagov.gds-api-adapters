PUBLISHING_API_PORT = 3001
ORGANISATION_API_PORT = 3002

def publishing_api_host
  "http://localhost:#{PUBLISHING_API_PORT}"
end

def organisation_api_host
  "http://localhost:#{ORGANISATION_API_PORT}"
end

Pact.service_consumer "GDS API Adapters" do
  has_pact_with "Publishing API" do
    mock_service :publishing_api do
      port PUBLISHING_API_PORT
    end
  end
end

Pact.service_consumer "GDS API Adapters" do
  has_pact_with "Collections Organisation API" do
    mock_service :organisation_api do
      port ORGANISATION_API_PORT
    end
  end
end
