#
# Cookbook Name:: jekyll
# Recipe:: repositories
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

execute "Add repository ppa:brightbox/ruby-ng" do
  command "add-apt-repository -y ppa:brightbox/ruby-ng"
  not_if do
    File.exists?("/tmp/jekyll-repositories-updated")
  end
  user "root"
  action :run
end

execute "Add repository ppa:brightbox/ruby-ng-experimental" do
  command "add-apt-repository -y ppa:brightbox/ruby-ng-experimental"
  not_if do
    File.exists?("/tmp/jekyll-repositories-updated")
  end
  user "root"
  action :run
end

execute "Update repositories" do
  command "apt-get update"
  not_if do
    File.exists?("/tmp/jekyll-repositories-updated")
  end
  user "root"
  action :run
end

#
# Set lock file to prevent repeat setup
#

execute "Set lock file" do
  command "touch /tmp/jekyll-repositories-updated"
  not_if do
    File.exists?("/tmp/jekyll-repositories-updated")
  end
  user "root"
  action :run
end
