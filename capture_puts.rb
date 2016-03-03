def capture_puts
  begin
    old_stdout = $stdout
    $stdout = StringIO.new('','w')
    yield
    $stdout.string
  ensure
    $stdout = old_stdout
  end
end

# output = capture_puts{ method_with_puts_statement }
# expect(output).to include("method_output")
