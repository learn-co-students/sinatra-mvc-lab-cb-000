describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end


end
