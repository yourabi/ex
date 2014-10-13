require 'spec_helper'

describe Ex do

  it "should succesfully execute true" do
    expect(Ex.run("true").successful?).to be true
  end

  it "should not have any output from true" do
    expect(Ex.run("true").output?).to be false
  end

  it "should not succesfully execute false" do
    expect(Ex.run("false").successful?).to be false
  end

  it "should not have any output from false" do
    expect(Ex.run("false").output?).to be false
  end

  it "should successfully execute echo -ne 'foo'" do
    expect(Ex.run("echo -ne 'foo'").successful?).to be true
  end

  it "should have output from executing echo -ne 'foo'" do
    @result = Ex.run("echo 'foo'")
    expect(@result.output?).to be true
  end

  it "should have stdout of 'foo' from executing echo -ne 'foo'" do
    expect(Ex.run("echo 'foo'").stdout).to eq "foo\n"
  end

end
