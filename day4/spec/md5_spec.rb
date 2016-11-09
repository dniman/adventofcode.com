module Day4
  RSpec.describe MD5 do
    describe ".hash" do
      it "sends message digest in hexadecimal" do
        expect(MD5.hash("")).to be_hexadecimal
      end

      it "sends message digest length in 32" do
        expect(MD5.hash("").length).to eq(32)
      end

      #context "append padding bits" do
      #  context "message length is 0" do
      #    it "appends 1 to message" do
      #      object = double()
      #    end  
      #  end  
      #end    
    end   

    describe ".append_padding_bits" do
      context "with length = 0" do
        it "appends 1 to message" do
          expect(MD5.append_padding_bits("")).to match(/1{1}/) 
        end  

        it "appends 447 0 to message" do
          expect(MD5.append_padding_bits("")).to match(/0{447}/)
        end  
      end

      context "with length = 1" do
        it "appends 1 to message" do
          expect(MD5.append_padding_bits("1")).to match(/1/)
        end  

        it "appends 446 0 to message" do
          expect(MD5.append_padding_bits("1")).to match(/0{446}/)
        end  
      end  
    end  
  end
end