require 'spec_helper'

describe server(:web) do
  describe http('http://localhost') do
    it "responds content including 'Welcome to nginx!'" do
      expect(response.body).to include('<body>')
    end
    it "responds as 'text/html'" do
      expect(response.headers['content-type']).to include('text/html')
    end
  end
end
