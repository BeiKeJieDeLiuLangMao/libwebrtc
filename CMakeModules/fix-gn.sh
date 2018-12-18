#!/usr/bin/env bash
sed -i.bak 's/defines = \[\]/defines = [ "_GLIBCXX_USE_CXX11_ABI=0" ]/' BUILD.gn
sed -i.bak '11 a\  defines += [ "_GLIBCXX_USE_CXX11_ABI=0" ]' third_party/protobuf/BUILD.gn
sed -i.bak '659 a\  defines += [ "_GLIBCXX_USE_CXX11_ABI=0" ]' rtc_base/BUILD.gn
sed -i.bak '32 a\  defines += [ "_GLIBCXX_USE_CXX11_ABI=0" ]' third_party/jsoncpp/BUILD.gn