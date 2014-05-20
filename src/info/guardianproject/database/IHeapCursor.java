package info.guardianproject.database;

import android.database.Cursor;
import android.util.SparseArray;
import info.guardianproject.database.sqlcipher.SQLiteCursorInJava.ICursorDataItemCreator;

public abstract interface IHeapCursor extends Cursor
{
  public abstract boolean checkIsCacheUseful(int paramInt);

  public abstract boolean containKey(Object paramObject);

  public abstract CursorDataItem getItem(int paramInt);

  public abstract CursorDataItem getItemByKey(Object paramObject);

  public abstract SparseArray[] getPosistionMaps();

  public abstract boolean hasLoadAllData();

  public abstract boolean isCacheUseful();

  public abstract boolean notifyChange(Object paramObject, CursorDataItem paramCursorDataItem);

  public abstract void putValue(int paramInt, Object paramObject);

  public abstract void setAutoBuildData(boolean paramBoolean);

  public abstract void setDataCreator(SQLiteCursorInJava.ICursorDataItemCreator paramICursorDataItemCreator);

  public abstract void setPageSize(int paramInt);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.IHeapCursor
 * JD-Core Version:    0.6.2
 */