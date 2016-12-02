#
# Cookbook Name:: ubuntu_memcache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'memcached'

template '/etc/memcached.conf' do
  source 'memcached.conf.erb'
  notifies :restart, 'service[memcached]', :delayed
end

service 'memcached' do
  action :enable
end
