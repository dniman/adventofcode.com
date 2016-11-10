module Day4
  RSpec.describe MD5 do
    describe ".hash" do
      it "should append padding bits" do
        expect(MD5).to receive(:append_padding_bits).with("").once.and_call_original
        MD5.append_padding_bits("")
      end  


      #it "sends message digest in hexadecimal" do
      #  expect(MD5.hash("")).to be_hexadecimal
      #end

      #it "sends message digest length in 32" do
      #  expect(MD5.hash("").length).to eq(32)
      #end

      #context "append padding bits" do
      #  context "message length is 0" do
      #    it "appends 1 to message" do
      #      object = double()
      #    end  
      #  end  
      #end    
    end   

    describe ".append_padding_bits" do

      context "when message length mod 512 is <0" do
        it "appends 1 to message" do
          expect(MD5.append_padding_bits("")[0]).to eq("1") 
        end

        it "appends 447 0 to message" do
          expect(MD5.append_padding_bits("")).to match(/0{447}/)
        end
      end

      context "when message length mod 512 is 1" do
        it "appends 1 to message" do
          expect(MD5.append_padding_bits("1")[1]).to eq("1")
        end  

        it "appends 446 0 to message" do
          expect(MD5.append_padding_bits("1")[2..448]).to eq(Array.new(446){0}.join(""))
        end  
      end  

      context "when message length mod 512 is 2" do
        it "appends 1 to message" do
          expect(MD5.append_padding_bits("11")[2]).to eq("1")
        end

        it "appends 445 0 to message" do
          expect(MD5.append_padding_bits("11")[3..448]).to eq(Array.new(445){0}.join(""))
        end  
      end  

      context "when message length mod 512 is 448" do
        it "appends 1 to message" do
          message = Array.new(448){1}.join("")
          expect(MD5.append_padding_bits(message)[448]).to eq("1")
        end  

        it "appends 511 0 to message" do
          message = Array.new(448){1}.join("")
          expect(MD5.append_padding_bits(message)[449..960]).to eq(Array.new(511){0}.join(""))
        end  
      end  

      context "when message length mod 512 is 449" do
        it "appends 1 to message" do
          message = Array.new(449){1}.join("")
          expect(MD5.append_padding_bits(message)[449]).to eq("1")
        end  

        it "appends 510 0 to message" do
          message = Array.new(449){1}.join("")
          expect(MD5.append_padding_bits(message)[450..960]).to eq(Array.new(510){0}.join(""))
        end 
      end  
    end  
  end
end