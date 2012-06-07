include_recipe "libuuid"
include_recipe "libice"

packages = %w/
  libsm6
/

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
