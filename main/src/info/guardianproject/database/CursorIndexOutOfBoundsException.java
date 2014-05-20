package info.guardianproject.database;

public class CursorIndexOutOfBoundsException extends IndexOutOfBoundsException
{
  public CursorIndexOutOfBoundsException(int paramInt1, int paramInt2)
  {
    super("Index " + paramInt1 + " requested, with a size of " + paramInt2);
  }

  public CursorIndexOutOfBoundsException(String paramString)
  {
    super(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.CursorIndexOutOfBoundsException
 * JD-Core Version:    0.6.2
 */