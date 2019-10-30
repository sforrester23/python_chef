#
# Cookbook:: python_requests
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python_requests::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'installs python' do
      expect(chef_run).to include_recipe 'python'
    end
    it 'installs requests package' do
      expect(chef_run).to install_python 'requests'
    end
  end
end
