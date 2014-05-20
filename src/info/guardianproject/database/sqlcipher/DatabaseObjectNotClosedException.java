package info.guardianproject.database.sqlcipher;

public class DatabaseObjectNotClosedException extends RuntimeException
{
  private static final String s = "Application did not close the cursor or database object that was opened here";

  public DatabaseObjectNotClosedException()
  {
    super("Application did not close the cursor or database object that was opened here");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.DatabaseObjectNotClosedException
 * JD-Core Version:    0.6.2
 */