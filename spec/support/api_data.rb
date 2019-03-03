RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, /currencydatafeed.com/ )
    .with(headers: {
      'Accept'=> '*/*'
    }).to_return(status: 200, body: '
      {
        "status":true,
        "currency":
        [{
          "currency":"EUR/AUD",
          "value":"8752.42500",
          "date":"2019-01-12 16:00:06",
          "type":"original"
        }]
      }', headers: {})
  end
end
