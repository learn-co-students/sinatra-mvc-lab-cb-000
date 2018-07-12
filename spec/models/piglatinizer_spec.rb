describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piglatinize("pork")).to eq("orkpay")
    expect(words.piglatinize("I")).to eq("Iway")
    expect(words.piglatinize("hello")).to eq("ellohay")
    expect(words.piglatinize("please")).to eq("easeplay")
    expect(words.piglatinize("tomorrow")).to eq("omorrowtay")
    expect(words.piglatinize("until")).to eq("untilway")
    expect(words.piglatinize("this")).to eq("isthay")
    expect(words.piglatinize("Enumeration")).to eq("Enumerationway")
    expect(words.piglatinize("prays")).to eq("ayspray")
    expect(words.piglatinize("spray")).to eq("ayspray")
    
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.piglatinize("i love programming")).to eq("iway ovelay ogrammingpray")
        expect(words.piglatinize("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish")).to eq("eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay")

    
  end

end
