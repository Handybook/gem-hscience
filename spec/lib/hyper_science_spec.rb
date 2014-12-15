require 'hyper_science'

describe HyperScience do
  describe '#get_model' do
    it 'returns a HyperScience model' do
      expect(HyperScience.get_model('model', 'property')).not_to be_nil
    end
  end
end
