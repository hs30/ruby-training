# frozen_string_literal: true

require 'bottles'

describe Bottles do
  let(:bottles) { subject }

  it 'can sing a typical verse' do
    expected = <<~VERSE
      8 bottles of beer on the wall, 8 bottles of beer.
      Take one down and pass it around, 7 bottles of beer on the wall.
    VERSE
    expect(bottles.verse(8)).to eq(expected)
  end

  it 'can sing another typical verse' do
    # skip 'Remove this line once you have written code that passes the above test.'
    expected = <<~VERSE
      3 bottles of beer on the wall, 3 bottles of beer.
      Take one down and pass it around, 2 bottles of beer on the wall.
    VERSE
    expect(bottles.verse(3)).to eq(expected)
  end

  it 'can sing about 1 bottle' do
    # skip 'Remove this line once you have written code that passes the above test.'
    expected = <<~VERSE
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    expect(bottles.verse(1)).to eq(expected)
  end

  it 'can sing about 2 bottles' do
    # skip 'Remove this line once you have written code that passes the above test.'
    expected = <<~VERSE
      2 bottles of beer on the wall, 2 bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
    expect(bottles.verse(2)).to eq(expected)
  end

  it 'can sing about no more bottles' do
    # skip 'Remove this line once you have written code that passes the above test.'
    expected = <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    expect(bottles.verse(0)).to eq(expected)
  end

  it 'can string a few verses together' do
    # skip 'Remove this line once you have written code that passes the above test.'
    expected = <<~VERSE
      8 bottles of beer on the wall, 8 bottles of beer.
      Take one down and pass it around, 7 bottles of beer on the wall.

      7 bottles of beer on the wall, 7 bottles of beer.
      Take one down and pass it around, 6 bottles of beer on the wall.

      6 bottles of beer on the wall, 6 bottles of beer.
      Take one down and pass it around, 5 bottles of beer on the wall.

    VERSE
    expect(bottles.verses(8, 6)).to eq(expected)
  end

  it 'can sing the whole song' do
    # skip 'Remove this line once you have written code that passes the above test.'
    expect(bottles.sing).to eq(bottles.verses(99, 0))
  end
end
