package info.guardianproject.database.sqlcipher;

import android.util.SparseArray;
import info.guardianproject.database.CursorDataItem;
import info.guardianproject.database.IHeapCursor;
import java.util.ArrayList;

public abstract class SQLiteCursorInJavaWrapper
{
  IHeapCursor cursor;

  public SQLiteCursorInJavaWrapper(IHeapCursor paramIHeapCursor)
  {
    this(paramIHeapCursor, 0);
  }

  public SQLiteCursorInJavaWrapper(IHeapCursor paramIHeapCursor, int paramInt)
  {
    this.cursor = paramIHeapCursor;
    this.cursor.setAutoBuildData(true);
    this.cursor.setDataCreator(new SQLiteCursorInJavaWrapper.1(this));
    if (paramInt != 0)
      setPageSize(paramInt);
    getCount();
  }

  public boolean checkIsCacheUseful(int paramInt)
  {
    return this.cursor.checkIsCacheUseful(paramInt);
  }

  public void close()
  {
    this.cursor.close();
    this.cursor = null;
  }

  public boolean containKey(Object paramObject)
  {
    return this.cursor.containKey(paramObject);
  }

  public abstract CursorDataItem createCursorItem();

  public int getCount()
  {
    return this.cursor.getCount();
  }

  public IHeapCursor getInnerCursor()
  {
    return this.cursor;
  }

  public CursorDataItem getItem(int paramInt)
  {
    return this.cursor.getItem(paramInt);
  }

  public CursorDataItem getItemByKey(Object paramObject)
  {
    return this.cursor.getItemByKey(paramObject);
  }

  public SparseArray[] getPosistionMaps()
  {
    return this.cursor.getPosistionMaps();
  }

  public boolean hasLoadAllData()
  {
    return this.cursor.hasLoadAllData();
  }

  public boolean isCacheUseful()
  {
    return this.cursor.isCacheUseful();
  }

  public boolean isClosed()
  {
    return this.cursor.isClosed();
  }

  public void moveToPosition(int paramInt)
  {
    this.cursor.moveToPosition(paramInt);
  }

  public void notifyChange(Object paramObject, CursorDataItem paramCursorDataItem)
  {
    this.cursor.notifyChange(paramObject, paramCursorDataItem);
  }

  public void putValue(int paramInt, Object paramObject)
  {
    if (this.cursor != null)
      this.cursor.putValue(paramInt, paramObject);
  }

  public abstract ArrayList rebulidAllChangeData(ArrayList paramArrayList);

  public void setPageSize(int paramInt)
  {
    this.cursor.setPageSize(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteCursorInJavaWrapper
 * JD-Core Version:    0.6.2
 */