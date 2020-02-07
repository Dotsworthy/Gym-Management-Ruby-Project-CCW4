require_relative( '../db/sql_runner' )

class Member

  attr_reader :id, :first_name, :last_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save()
    sql = "INSERT INTO members
(
  first_name,
  last_name
)
VALUES
(
  $1, $2
)
RETURNING id"
values = [@first_name, @last_name]
results = SqlRunner.run(sql, values)
@id = results.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM members WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM members"
    SqlRunner.run( sql )
  end

end
