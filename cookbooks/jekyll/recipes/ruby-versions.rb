#
# Cookbook Name:: jekyll
# Recipe:: ruby-versions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

execute "Add ruby-version 1.9.1" do
  command "apt-get install -y ruby1.9.1"
  not_if do
    File.exists?("/tmp/jekyll-ruby-version-added")
  end
  user "root"
  action :run
end

execute "Add ruby-version 1.9.3" do
  command "apt-get install -y ruby1.9.3"
  not_if do
    File.exists?("/tmp/jekyll-ruby-version-added")
  end
  user "root"
  action :run
end

execute "Add ruby-version 2.0" do
  command "apt-get install -y ruby2.0"
  not_if do
    File.exists?("/tmp/jekyll-ruby-version-added")
  end
  user "root"
  action :run
end

#
# Set lock file to prevent repeat setup
#

execute "Set lock file" do
  command "touch /tmp/jekyll-ruby-version-added"
  not_if do
    File.exists?("/tmp/jekyll-ruby-version-added")
  end
  user "root"
  action :run
end
