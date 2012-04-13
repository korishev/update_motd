#
# Cookbook Name:: update_motd
# Recipe:: default
#
# Copyright 2012, Morgan Nelson
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if platform?("ubuntu")
  file "/etc/update-motd.d/10-help-text" do
    mode '600'
  end

  file "/etc/update-motd.d/98-cloudguest" do
    action :delete
  end

  cookbook_file "/usr/share/landscape/landscape-sysinfo.wrapper" do
    owner "root"
    group "root"
    mode '0755'
  end

  cookbook_file "/etc/update-motd.d/85-list-logged-in-users" do
    owner "root"
    group "root"
    mode '0755'
  end
end

