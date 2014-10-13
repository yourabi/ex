require 'open3'
module Ex
  
  def self.run(cmd)
    stdout_str, stderr_str, status = Open3.capture3(cmd)

    result = Result.new()
    result.status_code = status.exitstatus
    result.stdout = stdout_str
    result.stderr = stderr_str
    
    return result
  end
end
