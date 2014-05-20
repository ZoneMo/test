package info.guardianproject.database.sqlcipher;

import android.os.SystemClock;
import info.guardianproject.database.CursorDataWindow;
import info.guardianproject.database.HeapCursor;
import info.guardianproject.database.HeapCursor.RowBuilder;

public class SQLiteQueryInJava extends SQLiteProgram
{
  private static final String TAG = "Cursor";
  HeapCursor curDb;
  private String[] mBindArgs;
  private boolean mClosed = false;
  private int mOffsetIndex;
  HeapCursor.RowBuilder rb;
  CursorDataWindow window;
  public int windowAllocatedSize;

  SQLiteQueryInJava(SQLiteDatabase paramSQLiteDatabase, String paramString, int paramInt, String[] paramArrayOfString)
  {
    super(paramSQLiteDatabase, paramString);
    this.mOffsetIndex = paramInt;
    this.mBindArgs = paramArrayOfString;
  }

  private final native int native_column_count();

  private final native String native_column_name(int paramInt);

  private final native int native_fill_window(int paramInt1, int paramInt2);

  public void allDataEnd(int paramInt1, int paramInt2)
  {
    if (this.window != null)
    {
      this.window.fillEnd(paramInt1);
      this.windowAllocatedSize = (paramInt2 + this.windowAllocatedSize);
      return;
    }
    this.curDb = null;
    this.rb = null;
    this.window = null;
  }

  public void bindDouble(int paramInt, double paramDouble)
  {
    this.mBindArgs[(paramInt - 1)] = Double.toString(paramDouble);
    if (!this.mClosed)
      super.bindDouble(paramInt, paramDouble);
  }

  public void bindLong(int paramInt, long paramLong)
  {
    this.mBindArgs[(paramInt - 1)] = Long.toString(paramLong);
    if (!this.mClosed)
      super.bindLong(paramInt, paramLong);
  }

  public void bindNull(int paramInt)
  {
    this.mBindArgs[(paramInt - 1)] = null;
    if (!this.mClosed)
      super.bindNull(paramInt);
  }

  public void bindString(int paramInt, String paramString)
  {
    this.mBindArgs[(paramInt - 1)] = paramString;
    if (!this.mClosed)
      super.bindString(paramInt, paramString);
  }

  public void close()
  {
    super.close();
    this.mClosed = true;
  }

  int columnCountLocked()
  {
    acquireReference();
    try
    {
      int i = native_column_count();
      return i;
    }
    finally
    {
      releaseReference();
    }
  }

  String columnNameLocked(int paramInt)
  {
    acquireReference();
    try
    {
      String str = native_column_name(paramInt);
      return str;
    }
    finally
    {
      releaseReference();
    }
  }

  public void fillRowBlob(int paramInt, byte[] paramArrayOfByte)
  {
    if (this.window != null)
      this.window.fillColumnBlob(paramInt, paramArrayOfByte);
    while (this.rb == null)
      return;
    this.rb.add(paramArrayOfByte);
  }

  public void fillRowDouble(int paramInt, double paramDouble)
  {
    if (this.window != null)
      this.window.fillColumnDouble(paramInt, paramDouble);
    while (this.rb == null)
      return;
    this.rb.add(Double.valueOf(paramDouble));
  }

  public void fillRowEnd(int paramInt1, int paramInt2)
  {
    if (this.window != null)
      this.window.rowEnd(paramInt1, paramInt2);
  }

  public void fillRowFloat(int paramInt, float paramFloat)
  {
    if (this.window != null)
      this.window.fillColumnFloat(paramInt, paramFloat);
    while (this.rb == null)
      return;
    this.rb.add(Float.valueOf(paramFloat));
  }

  public void fillRowInt(int paramInt, long paramLong)
  {
    if (this.window != null)
      this.window.fillColumnInt(paramInt, paramLong);
    while (this.rb == null)
      return;
    this.rb.add(Long.valueOf(paramLong));
  }

  public void fillRowLong(int paramInt, long paramLong)
  {
    if (this.window != null)
      this.window.fillColumnLong(paramInt, paramLong);
    while (this.rb == null)
      return;
    this.rb.add(Long.valueOf(paramLong));
  }

  public void fillRowNull(int paramInt)
  {
    if (this.window != null)
      this.window.fillColumnNull(paramInt);
    while (this.rb == null)
      return;
    this.rb.add(null);
  }

  public void fillRowStart(int paramInt)
  {
    if (this.window != null)
      this.window.rowStart(paramInt);
    while (this.curDb == null)
      return;
    this.rb = this.curDb.newRow(paramInt);
  }

  public void fillRowString(int paramInt, String paramString)
  {
    if (this.window != null)
      this.window.fillColumnString(paramInt, paramString);
    while (this.rb == null)
      return;
    this.rb.add(paramString);
  }

  int fillWindow(CursorDataWindow paramCursorDataWindow, int paramInt1, int paramInt2, HeapCursor paramHeapCursor)
  {
    this.curDb = paramHeapCursor;
    this.window = paramCursorDataWindow;
    long l = SystemClock.uptimeMillis();
    this.mDatabase.lock();
    this.mDatabase.logTimeStat(this.mSql, l, "GETLOCK:");
    try
    {
      acquireReference();
      if (paramCursorDataWindow != null);
      try
      {
        paramCursorDataWindow.acquireReference();
        System.currentTimeMillis();
        int i = native_fill_window(paramInt1, paramInt2);
        if (SQLiteDebug.DEBUG_SQL_STATEMENTS)
          new StringBuilder("fillWindow(): ").append(this.mSql).toString();
        this.mDatabase.logTimeStat(this.mSql, l);
        if (paramCursorDataWindow != null)
          paramCursorDataWindow.releaseReference();
        return i;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        if (paramCursorDataWindow != null)
          paramCursorDataWindow.releaseReference();
        return 0;
      }
      catch (SQLiteDatabaseCorruptException localSQLiteDatabaseCorruptException)
      {
        this.mDatabase.onCorruption();
        throw localSQLiteDatabaseCorruptException;
      }
      finally
      {
        if (paramCursorDataWindow != null)
          paramCursorDataWindow.releaseReference();
      }
    }
    finally
    {
      releaseReference();
      this.mDatabase.unlock();
    }
  }

  void requery()
  {
    int i = 0;
    int j;
    int k;
    if (this.mBindArgs != null)
    {
      j = this.mBindArgs.length;
      k = 0;
    }
    StringBuilder localStringBuilder;
    while (true)
    {
      if (k >= j)
        return;
      int m = k + 1;
      try
      {
        super.bindString(m, this.mBindArgs[k]);
        k++;
      }
      catch (SQLiteMisuseException localSQLiteMisuseException)
      {
        localStringBuilder = new StringBuilder("mSql " + this.mSql);
      }
    }
    while (true)
    {
      if (i >= j)
      {
        localStringBuilder.append(" ");
        throw new IllegalStateException(localStringBuilder.toString(), localSQLiteMisuseException);
      }
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mBindArgs[i]);
      i++;
    }
  }

  public String toString()
  {
    return "SQLiteQuery: " + this.mSql;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteQueryInJava
 * JD-Core Version:    0.6.2
 */