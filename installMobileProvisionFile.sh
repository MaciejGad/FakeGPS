#!/bin/bash

# Usage installMobileProvisionFile.sh path/to/foobar.mobileprovision

if [ ! $# == 1 ]; then
echo "Usage: $0 (path/to/mobileprovision)"
exit
fi

mp=$1

uuid=`/usr/libexec/PlistBuddy -c 'Print :UUID' /dev/stdin <<< $(security cms -D -i ${mp})_`

echo "Found UUID $uuid"

output="~/Library/MobileDevice/Provisioning Profiles/$uuid.mobileprovision"

echo "copying to $output.."

cp "${mp}" ~/Library/MobileDevice/Provisioning\ Profiles/"${uuid}".mobileprovision

echo "done"