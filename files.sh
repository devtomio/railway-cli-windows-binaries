wget -O 386.tar.gz "https://github.com/railwayapp/cli/releases/download/v$CLI_VERSION/railway_${CLI_VERSION}_windows_386.tar.gz"
wget -O amd64.tar.gz "https://github.com/railwayapp/cli/releases/download/v$CLI_VERSION/railway_${CLI_VERSION}_windows_amd64.tar.gz"
wget -O arm64.tar.gz "https://github.com/railwayapp/cli/releases/download/v$CLI_VERSION/railway_${CLI_VERSION}_windows_arm64.tar.gz"

mkdir 386
mkdir amd64
mkdir arm64

tar -xvzf 386.tar.gz --directory ./386
tar -xvzf amd64.tar.gz --directory ./amd64
tar -xvzf arm64.tar.gz --directory ./arm64

mkdir binaries

cd 386
mv railway.exe ../binaries/railway-386.exe
cd -

cd amd64
mv railway.exe ../binaries/railway-amd64.exe
cd -

cd arm64
mv railway.exe ../binaries/railway-arm64.exe
cd -

ls
