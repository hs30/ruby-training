# frozen_string_literal: true

RSpec.describe 'Classes can be opened in ruby' do
  class Hamster
    def eat
      'MUNCH!'
    end
  end

  it 'eats as defined' do
    hammy = Hamster.new
    expect(hammy.eat).to eq('MUNCH!')
  end

  # Open the existing Hamster class and add a new method.
  class Hamster
    def nibble
      'mmmm'
    end
  end

  it 'can now nibble too' do
    hammy = Hamster.new
    expect(hammy.nibble).to eq('mmmm')
    expect(hammy.eat).to eq('MUNCH!')
  end

  class Integer
    def even_number?
      (self % 2) == 0
    end
  end

  it 'is possible to reopen built in classes' do
    expect(1.even_number?).to eq(false)
    expect(2.even_number?).to eq(true)
  end

  it 'nibbles differently' do
    # Open the existing Hamster class and rewrite a method.
    class Hamster
      def nibble
        'i am nibbling differently now'
      end
    end

    hammy = Hamster.new
    expect(hammy.nibble).to eq('i am nibbling differently now')
    expect(hammy.eat).to eq('MUNCH!')
  end

  # Open an existing standard class and rewrite a method.
  class String
    def itself
      'Well I am myself of course!'
    end
  end

  it 'alters behaviour for our instances of the modified class' do
    expect('String'.itself).to eq( 'Well I am myself of course!')
    expect(1.itself).to eq(1)
    expect(:symbol.itself).to eq(:symbol)
    expect('A very long string'.itself).to eq('Well I am myself of course!')
  end

  # Open all object types and rewrite a method.
  class Object
    def to_s
      'Interpolation will be affected...'
    end
  end

  it 'can have very strange behaviour for classes' do
    expect(Hamster.new.to_s).to eq('Interpolation will be affected...')
    expect("Hello to you Mr. #{Hamster.new}").to eq('Hello to you Mr. Interpolation will be affected...')
  end
end
