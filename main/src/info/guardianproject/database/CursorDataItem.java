package info.guardianproject.database;

import android.database.Cursor;

public abstract interface CursorDataItem
{
  public abstract void convertFrom(Cursor paramCursor);

  public abstract void fillColumnBlob(int paramInt, byte[] paramArrayOfByte);

  public abstract void fillColumnDouble(int paramInt, double paramDouble);

  public abstract void fillColumnFloat(int paramInt, float paramFloat);

  public abstract void fillColumnInt(int paramInt, long paramLong);

  public abstract void fillColumnLong(int paramInt, long paramLong);

  public abstract void fillColumnNull(int paramInt);

  public abstract void fillColumnString(int paramInt, String paramString);

  public abstract Object getKey();

  public abstract void onItemShow();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.CursorDataItem
 * JD-Core Version:    0.6.2
 */