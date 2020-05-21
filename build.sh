#! /bin/bash

#if you are using windows docker use internal folder to build

cp /build /root/build -r

cd /root/build



7z x build/vlc-armv7*.7z -obuild/win10-arm/native
7z x build/vlc-aarch64*.7z -obuild/win10-arm64/native
7z x build/vlc-i686*.7z -obuild/win10-x86/native
7z x build/vlc-x86_64*.7z -obuild/win10-x64/native

version=1.0.1
packageName="Spk.LibVLC.UWP"

nuget pack "$packageName".nuspec -Version "$version"

cp *.nupkg /build

echo 'done!'
