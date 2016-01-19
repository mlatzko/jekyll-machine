#
# Cookbook Name:: jekyll
# Recipe:: jekyll
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

execute "Install RubyGems" do
  command "gem install -y rubygems-update --no-rdoc --no-ri"
  not_if do
    File.exists?("/tmp/jekyll-added")
  end
  user "root"
  action :run
end

execute "Install Jekyll" do
  command "gem install jekyll -v 2.5.3 --no-rdoc --no-ri"
  not_if do
    File.exists?("/tmp/jekyll-added")
  end
  user "root"
  action :run
end

#
# Set lock file to prevent repeat setup
#

execute "Set lock file" do
  command "touch /tmp/jekyll-added"
  not_if do
    File.exists?("/tmp/jekyll-added")
  end
  user "root"
  action :run
end
