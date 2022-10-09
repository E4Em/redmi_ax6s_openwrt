echo 'CONFIG_PACKAGE_luci-app-ssr-plus=y' >>.config
cd openwrt
mkdir -p package/helloworld
for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2"; do \
  svn checkout "https://github.com/coolsnowwolf/packages/trunk/net/$i" "package/helloworld/$i"; \
done
