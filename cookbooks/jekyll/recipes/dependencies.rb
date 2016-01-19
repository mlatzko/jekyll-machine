#
# Cookbook Name:: jekyll
# Recipe:: dependencies
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

execute "Install Build Essential" do
  command "apt-get install -y build-essential"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Install GNU Complier Collection" do
  command "apt-get install -y gcc"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Install GNU Make" do
  command "apt-get install -y make"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Install cURL" do
  command "apt-get install -y curl"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Install Nodejs" do
  command "apt-get install -y nodejs"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Install Python" do
  command "apt-get install -y python-software-properties"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Install SQLite3" do
  command "apt-get install -y sqlite3"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

execute "Add further dependencies" do
  command "apt-get install -y zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end

#
# Set lock file to prevent repeat setup
#

execute "Set lock file" do
  command "touch /tmp/jekyll-dependencies-added"
  not_if do
    File.exists?("/tmp/jekyll-dependencies-added")
  end
  user "root"
  action :run
end
