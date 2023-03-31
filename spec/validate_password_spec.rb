require 'spec_helper'

describe ValidatePassword do
  subject { described_class }

  context "args: 'Password1!'" do
    specify { expect(subject.new('Password1!').check_password).to eq(true) }
  end

  context "args: 'password1!'" do
    specify { expect(subject.new('password1!').check_password).to eq(false) }
  end

  context "args: 'Exaample1!'" do
    specify { expect(subject.new('Exaaaample1!').check_password).to eq(true) }
  end

  context "args: 'fail'" do
    specify { expect(subject.new('fail').check_password).to eq(false) }
  end

  context "args: 'Password1!Password1!Password1!'" do
    specify { expect(subject.new('Password1!Password1!Password1!').check_password).to eq(false) }
  end
end
