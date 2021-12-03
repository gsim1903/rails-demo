describe 'GET /api/articles' do

    subject {response }
    let!(:article) { create(:article, title: "hey hey", content: 'my my' )}

    before do
    get'/api/articles'

    end

    it 'is expected to respond with status 200' do
    expect(response.status).to eql 200
    end

    it 'is expected to respond with the right title' do
        expect(response_json['articles'].first['title']).to eq 'hey hey'
      end

      it 'is expected to respond with the requested article content' do
        expect(response_json['articles'].first['content']).to eql 'my my'
      end

end 
