class AWS

  #TODO 키들은 나중에 파일로 관리한다.
  aws_service_access_key = 'AKIAIHFDDWWFGAW76VEA'
  aws_service_secret_key = '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'

  def self.initialize(access_key_id, secret_access_key, aws_s3_region)
    Aws.config.update({
                          credentials: Aws::Credentials.new(:access_key_id, :secret_access_key)
                      })
    Aws.config.update({region: 'ap-northeast-2'})
  end



  ec2 = Aws::EC2::Resource.new





end