# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2016 Team OctOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

""" Custom OTA commands for g3-common """

def FullOTA_InstallEnd(info):
  #Bump it!
  info.script.AppendExtra('run_program("/sbin/busybox", "sleep", "5");')
  info.script.Print("  [x] Bump...   ")
  info.script.Print("      based on Skin1980's Oversharpening MOD")
  info.script.Print("      And Kernel Re-Bump Script by dadi11")
  info.script.Print("")
  info.script.AppendExtra('package_extract_dir("bump", "/tmp");')
  info.script.AppendExtra('run_program("/sbin/busybox", "chmod", "0755", "/tmp/apply-patch.sh");')
  info.script.AppendExtra('run_program("/sbin/busybox", "chown", "0:0", "/tmp/apply-patch.sh");')
  info.script.AppendExtra('run_program("/sbin/busybox", "chmod", "0755", "/tmp/livebump.sh");')
  info.script.AppendExtra('run_program("/sbin/busybox", "chown", "0:0", "/tmp/livebump.sh");')
  info.script.AppendExtra('run_program("/sbin/busybox", "sh", "/tmp/apply-patch.sh");')
  info.script.Print("  You Have just been Bumped   ")
