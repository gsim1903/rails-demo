describe 'GET /api/articles' do

    subject {response }

    before do
    get'/api/articles'

    end

    it 'is expeted to respond with status 200' do
    expect(response.status).to eql 200
    end

    it 'is expected to respond with an empty array' do 
    expect(response_json).to eq []
    end


end
