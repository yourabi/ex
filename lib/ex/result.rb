class Result
  attr_accessor :output, :status_code, :stdout, :stderr

  # Constructor
  def initialize
    self.status_code = 0
  end

  # Command was successfully executued
  # and returned with status code 0
  def successful?
    status_code == 0 ? true : false
  end

  def output?
    !stdout.empty? or !stderr.empty?
  end
end
