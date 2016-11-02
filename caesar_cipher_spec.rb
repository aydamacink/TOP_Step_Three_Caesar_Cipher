require "caesar_cipher"


describe "#cipher" do

  it "ciphers one word" do
    s = cipher("rat", 1)
    expect(s).to eq("sbu")
  end

  it "ciphers two words with a space" do
    s = cipher("rat cat", 1)
    expect(s).to eq("sbu dbu")
  end

  it "ciphers words with non-alphabetic characters, leaving these intact" do
    s = cipher("catch the rat & the cat!", 1)
    expect(s).to eq("dbudi uif sbu & uif dbu!")
  end


  it "ciphers respecting uppercase and lowercase" do
    s = cipher("Ayda Macink", 2)
    expect(s).to eq("Cafc Ocekpm")
  end

  it "keeps cases, accepts other characters and ciphers" do
    s = cipher("What a string!", 5)
    expect(s).to eq("Bmfy f xywnsl!")
  end

  it "ciphers words that contain letters at the end of the alphabet" do
    s = cipher("zaz xy", 1)
    expect(s).to eq("aba yz")

    s = cipher("Aa[Bb{Z!", 3)
    expect(s).to eq("Dd[Ee{C!")
  end

  it "ciphers words that have letters towards the end of the alphabet with a negative shift" do
    s = cipher("AazZ", -2)
    expect(s).to eq("YyxX")
  end



end
