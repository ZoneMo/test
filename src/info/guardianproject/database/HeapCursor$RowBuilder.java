package info.guardianproject.database;

import android.database.CursorIndexOutOfBoundsException;

public class HeapCursor$RowBuilder
{
  private final int endIndex;
  private int index;
  private Object[] obj;

  HeapCursor$RowBuilder(HeapCursor paramHeapCursor, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    this.index = paramInt1;
    this.endIndex = paramInt2;
    this.obj = paramArrayOfObject;
  }

  public RowBuilder add(Object paramObject)
  {
    if (this.index == this.endIndex)
      throw new CursorIndexOutOfBoundsException("No more columns left.");
    Object[] arrayOfObject = this.obj;
    int i = this.index;
    this.index = (i + 1);
    arrayOfObject[i] = paramObject;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.HeapCursor.RowBuilder
 * JD-Core Version:    0.6.2
 */