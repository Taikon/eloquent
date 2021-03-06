class BaseDocument
  def title
    raise "Not Implemented"
  end
  def title=
    raise "Not Implemented"
  end
  def author
    raise "Not Implemented"
  end
  def author=
    raise "Not Implemented"
  end
  def content
    raise "Not Implemented"
  end
end

class Document < BaseDocument
  attr_accessor :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def words
    @content.split
  end
  def word_count
    words.size
  end
end

class LazyDocument < BaseDocument
  attr_writer :title, :author, :content

  def initialize( path )
    @path = path
    @document_read = false
  end

  def read_document
    return if @document_read
    File.open( @path ) do | f |
      @title = f.readline.chomp
      @author = f.readline.chomp
      @content = f.read
    end
    @document_read = true
  end

  def title
    read_document
    @title
  end

  def title=(new_title)
    read_document
    @title = new_title
  end
end

