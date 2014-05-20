package info.guardianproject.database.sqlcipher;

import android.util.SparseArray;
import info.guardianproject.database.AbstractCursor;
import info.guardianproject.database.CursorDataItem;
import info.guardianproject.database.CursorDataWindow;
import info.guardianproject.database.HeapCursor;
import info.guardianproject.database.IHeapCursor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SQLiteCursorInJava extends AbstractCursor
  implements IHeapCursor
{
  static final int NO_COUNT = -1;
  static final String TAG = "Cursor";
  private boolean autoBuildData;
  public SQLiteCursorInJava.ICursorDataItemCreator creator;
  HeapCursor curDb;
  private boolean hasloadAllData;
  private Map mColumnNameMap;
  private String[] mColumns;
  private int mCount = -1;
  private SQLiteDatabase mDatabase;
  private SQLiteCursorDriver mDriver;
  private SQLiteQueryInJava mQuery;
  private CursorDataWindow mWindow;
  private int pageSize = 3000;

  public SQLiteCursorInJava(SQLiteDatabase paramSQLiteDatabase, SQLiteCursorDriver paramSQLiteCursorDriver, String paramString, SQLiteQueryInJava paramSQLiteQueryInJava)
  {
    this.mDatabase = paramSQLiteDatabase;
    this.mDriver = paramSQLiteCursorDriver;
    this.mColumnNameMap = null;
    this.mQuery = paramSQLiteQueryInJava;
    try
    {
      paramSQLiteDatabase.lock();
      int i = this.mQuery.columnCountLocked();
      this.mColumns = new String[i];
      for (int j = 0; ; j++)
      {
        if (j >= i)
          return;
        String str = this.mQuery.columnNameLocked(j);
        this.mColumns[j] = str;
        if ("_id".equals(str))
          this.mRowIdColumnIndex = j;
      }
    }
    finally
    {
      paramSQLiteDatabase.unlock();
    }
  }

  private void deactivateCommon()
  {
    if (this.mWindow != null)
    {
      this.mWindow.clearData();
      this.mWindow = null;
    }
  }

  private int fillWindow(int paramInt)
  {
    if ((this.mWindow == null) && (this.autoBuildData))
    {
      this.mWindow = new SQLiteCursorInJava.1(this, true);
      this.mWindow.setStartPosition(paramInt);
    }
    while (true)
    {
      return this.mQuery.fillWindow(this.mWindow, paramInt, this.pageSize, this.curDb);
      initHeapDb();
    }
  }

  public boolean checkIsCacheUseful(int paramInt)
  {
    if (!this.autoBuildData)
      return false;
    return this.mWindow.checkIsCacheUseful(paramInt);
  }

  protected void checkPosition()
  {
    super.checkPosition();
  }

  public void close()
  {
    super.close();
    deactivateCommon();
    this.mQuery.close();
    this.mDriver.cursorClosed();
    if (this.mWindow != null)
      this.mWindow.clearData();
  }

  public boolean containKey(Object paramObject)
  {
    if (!this.autoBuildData);
    while (this.mWindow == null)
      return false;
    return this.mWindow.containKey(paramObject);
  }

  public CursorDataItem createDataItem()
  {
    if (this.creator != null)
      return this.creator.createItem();
    return null;
  }

  public void deactivate()
  {
    super.deactivate();
    deactivateCommon();
    this.mDriver.cursorDeactivated();
  }

  protected void finalize()
  {
    try
    {
      if (this.mWindow != null)
      {
        close();
        SQLiteDebug.notifyActiveCursorFinalized();
      }
      return;
    }
    finally
    {
      super.finalize();
    }
  }

  public byte[] getBlob(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getBlob(paramInt);
    return null;
  }

  public int getColumnIndex(String paramString)
  {
    String[] arrayOfString;
    int j;
    HashMap localHashMap;
    if (this.mColumnNameMap == null)
    {
      arrayOfString = this.mColumns;
      j = arrayOfString.length;
      localHashMap = new HashMap(j, 1.0F);
    }
    for (int k = 0; ; k++)
    {
      if (k >= j)
      {
        this.mColumnNameMap = localHashMap;
        int i = paramString.lastIndexOf('.');
        if (i != -1)
        {
          new Exception();
          new StringBuilder("requesting column name with table name -- ").append(paramString).toString();
          paramString = paramString.substring(i + 1);
        }
        Integer localInteger = (Integer)this.mColumnNameMap.get(paramString);
        if (localInteger == null)
          break;
        return localInteger.intValue();
      }
      localHashMap.put(arrayOfString[k], Integer.valueOf(k));
    }
    return -1;
  }

  public String[] getColumnNames()
  {
    return this.mColumns;
  }

  public int getCount()
  {
    if (this.mCount == -1)
    {
      this.mCount = fillWindow(0);
      if (this.mWindow != null)
      {
        int i = this.mCount;
        boolean bool = false;
        if (i != -1)
        {
          int j = this.mCount;
          int k = this.mWindow.getLoadedNum();
          bool = false;
          if (j == k)
            bool = true;
        }
        this.hasloadAllData = bool;
      }
    }
    if (this.autoBuildData)
    {
      if (this.hasloadAllData)
        return this.mWindow.getLoadedNum();
      return this.mCount;
    }
    return this.mCount;
  }

  public SQLiteDatabase getDatabase()
  {
    return this.mDatabase;
  }

  public double getDouble(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getDouble(paramInt);
    return 0.0D;
  }

  public float getFloat(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getFloat(paramInt);
    return 0.0F;
  }

  public int getInt(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getInt(paramInt);
    return 0;
  }

  public CursorDataItem getItem(int paramInt)
  {
    if (this.mWindow != null)
      return this.mWindow.getItem(paramInt);
    return null;
  }

  public CursorDataItem getItemByKey(Object paramObject)
  {
    if (!this.autoBuildData);
    while (this.mWindow == null)
      return null;
    return this.mWindow.getItemByKey(paramObject);
  }

  public long getLong(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getLong(paramInt);
    return 0L;
  }

  public SparseArray[] getPosistionMaps()
  {
    if (!this.autoBuildData)
      return null;
    SparseArray[] arrayOfSparseArray = new SparseArray[1];
    arrayOfSparseArray[0] = this.mWindow.getPosistionMaps();
    return arrayOfSparseArray;
  }

  public short getShort(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getShort(paramInt);
    return 0;
  }

  public String getString(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.getString(paramInt);
    return null;
  }

  public boolean hasLoadAllData()
  {
    return this.hasloadAllData;
  }

  public void initHeapDb()
  {
    if (this.curDb == null)
      this.curDb = new HeapCursor(this.mColumns);
  }

  public boolean isAutoBuildData()
  {
    return this.autoBuildData;
  }

  public boolean isCacheUseful()
  {
    if (!this.autoBuildData)
      return false;
    return this.mWindow.isCacheUseful();
  }

  public boolean isNull(int paramInt)
  {
    if (!this.autoBuildData)
      return this.curDb.isNull(paramInt);
    return false;
  }

  public boolean notifyChange(Object paramObject)
  {
    return notifyChange(paramObject, null);
  }

  public boolean notifyChange(Object paramObject, CursorDataItem paramCursorDataItem)
  {
    if ((this.autoBuildData) && (this.mWindow != null))
    {
      if ((!this.hasloadAllData) && ((paramObject instanceof Object[])) && (this.mWindow.containKey(paramObject)))
      {
        this.mCount -= ((Object[])paramObject).length;
        this.pageSize -= ((Object[])paramObject).length;
      }
      return this.mWindow.notifyChange(paramObject, paramCursorDataItem);
    }
    if (!this.autoBuildData)
      this.curDb.clear();
    return false;
  }

  public boolean onMove(int paramInt1, int paramInt2)
  {
    if (this.autoBuildData)
      if ((this.mWindow == null) || (!this.mWindow.containData(paramInt2)))
        fillWindow(paramInt2 / this.pageSize * this.pageSize);
    while (true)
    {
      return true;
      if (this.curDb == null)
        initHeapDb();
      if (!this.curDb.containData(paramInt2))
        fillWindow(paramInt2 / this.pageSize * this.pageSize);
      this.curDb.moveToPosition(paramInt2);
    }
  }

  public void put(int paramInt, Object paramObject)
  {
    if (this.curDb != null)
      this.curDb.put(paramInt, paramObject);
  }

  public void putValue(int paramInt, Object paramObject)
  {
    if ((!this.autoBuildData) || (this.curDb == null))
      return;
    this.curDb.put(paramInt, paramObject);
  }

  public ArrayList rebulidAllChangeData(ArrayList paramArrayList)
  {
    if (this.creator != null)
      return this.creator.rebulidAllChangeData(paramArrayList);
    return null;
  }

  public void setAutoBuildData(boolean paramBoolean)
  {
    this.autoBuildData = paramBoolean;
  }

  public void setDataCreator(SQLiteCursorInJava.ICursorDataItemCreator paramICursorDataItemCreator)
  {
    this.creator = paramICursorDataItemCreator;
  }

  public void setPageSize(int paramInt)
  {
    if ((paramInt <= 15000) && (paramInt >= 2000))
      this.pageSize = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteCursorInJava
 * JD-Core Version:    0.6.2
 */