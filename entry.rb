Entry = Struct.new(:time, :tags, :lines)

class Entry
  def process_time_line(line)
    if line =~ /^(\d{1,2}\:\d\d) (\s+) (.*)/
      self.time = "#{$1}"
      lines << $3
    end
  end
end