size_map = {
    "small"  => 1,
    "medium" => 2,
    "large"  => 3,
}
size = node.default['sidebar_icon_size']

osx_defaults "Set sidebar icon size" do
  domain "/Users/#{node['current_user']}/Library/Preferences/.GlobalPreferences"
  key "NSTableViewDefaultSizeMode"
  integer size_map[size]
end
