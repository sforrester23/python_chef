#
# Cookbook:: python_requests
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include recipe 'python'
python_pip 'requests'

python_pip "requests" do
  virtualenv "/home/ubuntu/my_ve"
end
