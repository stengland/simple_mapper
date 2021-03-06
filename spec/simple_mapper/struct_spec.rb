require 'simple_mapper/struct'

describe SimpleMapper::Struct do
  describe '.new' do
    it 'creates a struct that can be initialized with a hash' do
      TestStruct1 = SimpleMapper::Struct.new(:name, :email)
      test_instance = TestStruct1.new(name: 'Dave')
      expect(test_instance.name).to eq 'Dave'
    end

    it 'allow extra methods' do
      TestStruct2 = SimpleMapper::Struct.new(:name, :email) do
        def hello(name)
          "Hi #{name}!"
        end
      end
      test_instance = TestStruct2.new
      expect(test_instance.hello('Dave')).to eq 'Hi Dave!'
    end
  end
end
