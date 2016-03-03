require 'pg'

class Shoos

  attr_reader :name, :address, :quantity, :size

  def initialize(params)
    @name = params["name"]
    @address = params["address"]
    @quantity = params["quantity"].to_i
    @size = params["size"].to_i
  end

  def save
    db = PG.connect( { dbname: "shoos", host: "localhost"} )
    sql = "INSERT INTO orders (name, address, quantity, size)
      VALUES ('#{@name}', '#{@address}', #{@quantity}, #{@size});"
    db.exec( sql )
    db.close
  end
  
  def self.all
    db = PG.connect( { dbname: "shoos", host: "localhost"} )
    sql = "SELECT * FROM orders;"
    result = db.exec( sql ).map { |shoos| Shoos.new(shoos) }
    db.close
    return result
  end

end