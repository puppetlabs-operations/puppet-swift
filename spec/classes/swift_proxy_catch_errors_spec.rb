require 'spec_helper'

describe 'swift::proxy::catch_errors' do

  let :facts do
    {}
  end

  let :pre_condition do
    'concat { "/etc/swift/proxy-server.conf": }'
  end

  it { is_expected.to contain_swift_proxy_config('filter:catch_errors/use').with_value('egg:swift#catch_errors') }

end
