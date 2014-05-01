require 'spec_helper'

describe 'hadoop_wrapper::jce' do
  context 'on Centos 6.4 x86_64' do
    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'centos', version: 6.4) do |node|
        node.automatic['domain'] = 'example.com'
        node.automatic['memory']['total'] = '4099400kB'
        stub_command("echo 'd0c2258c3364120b4dbf7dd1655c967eee7057ac6ae6334b5ea8ceb8bafb9262  /var/chef/cache/jce6.zip' | sha256sum -c - >/dev/null").and_return(true)
      end.converge(described_recipe)
    end

    it 'does nothing yet' do
      expect(chef_run).to do_nothing
    end
  end
end
