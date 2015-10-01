require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# When we create a new plane, it should be "flying",
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should
# be "landed"
#
# When the plane takes of from the airport, it should be "flying" again
#
# Think about your implementation - does it allow a plane to be "flying"
# and landed?
# Are you testing that?

describe Plane do

  subject { Plane.new }

  it 'is flying when created' do
    expect(subject.flying).to eq true    
  end

  it 'can land' do
    subject.land
    expect(subject.flying?).to eq false
  end

  it 'is landed after landing' do 
    subject.land
    expect(subject.landed?).to eq true
  end

  it 'can take off' do
    subject.take_off
    expect(subject.flying?).to eq true
  end 

  it 'is flying after take off' do
    subject.take_off
    expect(subject.flying).to eq true
  end 

  it 'can not take off while flying' do
    subject.flying = true
    expect(subject.take_off).to eq 'You are already flying, sir'
  end 

  it 'can not land if already landed' do
    subject.flying = false
    expect(subject.land).to eq 'You have already landed, sir'
  end 

end