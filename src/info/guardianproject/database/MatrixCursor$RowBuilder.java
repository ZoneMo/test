package info.guardianproject.database;

import android.database.CursorIndexOutOfBoundsException;

public class MatrixCursor$RowBuilder
{
  private final int endIndex;
  private int index;

  MatrixCursor$RowBuilder(MatrixCursor paramMatrixCursor, int paramInt1, int paramInt2)
  {
    this.index = paramInt1;
    this.endIndex = paramInt2;
  }

  public RowBuilder add(Object paramObject)
  {
    if (this.index == this.endIndex)
      throw new CursorIndexOutOfBoundsException("No more columns left.");
    Object[] arrayOfObject = MatrixCursor.access$0(this.this$0);
    int i = this.index;
    this.index = (i + 1);
    arrayOfObject[i] = paramObject;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.MatrixCursor.RowBuilder
 * JD-Core Version:    0.6.2
 */