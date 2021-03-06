def get_variable_from_file(file, variable)
  file_scope = binding
  eval(File.read(file), file_scope)
  begin
    file_scope.local_variable_get(variable)
  rescue NameError
    raise NameError, "local variable `#{variable}' not defined in #{file}."
  end
end

# foo = get_variable_from_file('./lib/test.rb', "foo")
# expect(foo).to eq("bar")
