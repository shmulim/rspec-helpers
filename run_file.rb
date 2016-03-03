def run_file(file)
  eval(File.read(file), binding)
end