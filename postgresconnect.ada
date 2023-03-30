with ADBC.Connections;

procedure Connect is
   Connection : ADBC.Connections.Connection;
begin
   Connection := ADBC.Connections.Connect
     (Driver => "postgresql",
      Host => "localhost",
      Database => "mydb",
      User => "myuser",
      Password => "mypassword");
end Connect;


with ADBC.Statements;

procedure Query is
   Connection : ADBC.Connections.Connection;
   Stmt : ADBC.Statements.Statement;
   Rows : ADBC.Cursor.Rows_Access;
begin
   Connection := ADBC.Connections.Connect(...);
   Stmt := Connection.Prepare_Statement ("SELECT * FROM mytable");
   Rows := Stmt.Execute_Query;
   -- Process the rows returned by the query
end Query;
