require 'aws-sdk'
class AWS


  def self.initialize(access_key_id, secret_access_key, aws_s3_region)
    Aws.config.update({
                          credentials: Aws::Credentials.new(:access_key_id, :secret_access_key)
                      })
    Aws.config.update({region: 'ap-northeast-2'})
  end



  ec2 = Aws::EC2::Resource.new

  ec2 = Aws::EC2.new(region:  'ap-northeast-2')

# To only get the first 10 instances:
# ec2.instances.limit(10).each do |i|
  ec2.instances.each do |i|
    puts "ID:    #{i.id}"
    puts "State: #{i.state.name}"
  end




end