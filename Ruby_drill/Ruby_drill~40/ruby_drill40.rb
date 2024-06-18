def xyz_there(str)
  if str.include?(".xyz")
    p "False"
  elsif str.include?("xyz")
    p "True"
  else
    p "False"
  end
end

xyz_there('abcxyz')
xyz_there('abc.xyz')
xyz_there('xyz.abc')
xyz_there('azbycx')
xyz_there('a.zbycx')