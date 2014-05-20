package info.guardianproject.database;

import android.database.ContentObserver;
import android.database.DataSetObserver;
import android.util.SparseArray;
import info.guardianproject.database.sqlcipher.SQLiteCursorInJava;
import info.guardianproject.database.sqlcipher.SQLiteCursorInJava.ICursorDataItemCreator;

public class MergeHeapCursor extends AbstractCursor
  implements IHeapCursor
{
  private IHeapCursor mCursor;
  private IHeapCursor[] mCursors;
  private DataSetObserver mObserver = new MergeHeapCursor.1(this);

  public MergeHeapCursor(SQLiteCursorInJava[] paramArrayOfSQLiteCursorInJava)
  {
    this.mCursors = paramArrayOfSQLiteCursorInJava;
    this.mCursor = paramArrayOfSQLiteCursorInJava[0];
    while (true)
    {
      if (i >= this.mCursors.length)
        return;
      if (this.mCursors[i] != null)
        this.mCursors[i].registerDataSetObserver(this.mObserver);
      i++;
    }
  }

  public boolean checkIsCacheUseful(int paramInt)
  {
    int i = this.mCursors.length;
    boolean bool = true;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return bool;
      if ((this.mCursors[j] != null) && (!this.mCursors[j].checkIsCacheUseful(paramInt)))
        bool = false;
    }
  }

  public void close()
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        super.close();
        return;
      }
      if (this.mCursors[j] != null)
        this.mCursors[j].close();
    }
  }

  public boolean containKey(Object paramObject)
  {
    boolean bool = false;
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return bool;
      if ((this.mCursors[j] != null) && (this.mCursors[j].containKey(paramObject)))
        bool = true;
    }
  }

  public void deactivate()
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        super.deactivate();
        return;
      }
      if (this.mCursors[j] != null)
        this.mCursors[j].deactivate();
    }
  }

  public byte[] getBlob(int paramInt)
  {
    return this.mCursor.getBlob(paramInt);
  }

  public String[] getColumnNames()
  {
    if (this.mCursor != null)
      return this.mCursor.getColumnNames();
    return new String[0];
  }

  public int getCount()
  {
    int i = 0;
    int j = this.mCursors.length;
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return i;
      if (this.mCursors[k] != null)
        i += this.mCursors[k].getCount();
    }
  }

  public IHeapCursor[] getCursors()
  {
    return this.mCursors;
  }

  public double getDouble(int paramInt)
  {
    return this.mCursor.getDouble(paramInt);
  }

  public float getFloat(int paramInt)
  {
    return this.mCursor.getFloat(paramInt);
  }

  public int getInt(int paramInt)
  {
    return this.mCursor.getInt(paramInt);
  }

  public CursorDataItem getItem(int paramInt)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return null;
      int k = this.mCursors[j].getCount();
      if (paramInt < k)
        return this.mCursors[j].getItem(paramInt);
      paramInt -= k;
    }
  }

  public CursorDataItem getItemByKey(Object paramObject)
  {
    return this.mCursor.getItemByKey(paramObject);
  }

  public long getLong(int paramInt)
  {
    return this.mCursor.getLong(paramInt);
  }

  public SparseArray[] getPosistionMaps()
  {
    int i = this.mCursors.length;
    SparseArray[] arrayOfSparseArray = new SparseArray[i];
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return arrayOfSparseArray;
      arrayOfSparseArray[j] = this.mCursors[j].getPosistionMaps()[0];
    }
  }

  public short getShort(int paramInt)
  {
    return this.mCursor.getShort(paramInt);
  }

  public String getString(int paramInt)
  {
    return this.mCursor.getString(paramInt);
  }

  public boolean hasLoadAllData()
  {
    int i = this.mCursors.length;
    boolean bool = true;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return bool;
      if ((this.mCursors[j] != null) && (!this.mCursors[j].hasLoadAllData()))
        bool = false;
    }
  }

  public boolean isCacheUseful()
  {
    boolean bool = false;
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return bool;
      if ((this.mCursors[j] != null) && (this.mCursors[j].isCacheUseful()))
        bool = true;
    }
  }

  public boolean isNull(int paramInt)
  {
    return this.mCursor.isNull(paramInt);
  }

  public boolean notifyChange(Object paramObject, CursorDataItem paramCursorDataItem)
  {
    boolean bool = false;
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return bool;
      if ((this.mCursors[j] != null) && (this.mCursors[j].notifyChange(paramObject, paramCursorDataItem)))
        bool = true;
    }
  }

  public boolean onMove(int paramInt1, int paramInt2)
  {
    this.mCursor = null;
    int i = this.mCursors.length;
    int j = 0;
    int k = 0;
    while (true)
    {
      if (j >= i);
      while (true)
      {
        if (this.mCursor == null)
          break label110;
        return this.mCursor.moveToPosition(paramInt2 - k);
        if (this.mCursors[j] == null)
          break label104;
        if (paramInt2 >= k + this.mCursors[j].getCount())
          break;
        this.mCursor = this.mCursors[j];
      }
      k += this.mCursors[j].getCount();
      label104: j++;
    }
    label110: return false;
  }

  public void putValue(int paramInt, Object paramObject)
  {
    if (this.mCursor != null)
      this.mCursor.putValue(paramInt, paramObject);
  }

  public void registerContentObserver(ContentObserver paramContentObserver)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].registerContentObserver(paramContentObserver);
    }
  }

  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].registerDataSetObserver(paramDataSetObserver);
    }
  }

  public boolean requery()
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      boolean bool2;
      if (j >= i)
        bool2 = true;
      boolean bool1;
      do
      {
        return bool2;
        if (this.mCursors[j] == null)
          break;
        bool1 = this.mCursors[j].requery();
        bool2 = false;
      }
      while (!bool1);
    }
  }

  public void setAutoBuildData(boolean paramBoolean)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].setAutoBuildData(paramBoolean);
    }
  }

  public void setDataCreator(SQLiteCursorInJava.ICursorDataItemCreator paramICursorDataItemCreator)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].setDataCreator(paramICursorDataItemCreator);
    }
  }

  public void setPageSize(int paramInt)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].setPageSize(paramInt);
    }
  }

  public void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].unregisterContentObserver(paramContentObserver);
    }
  }

  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    int i = this.mCursors.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (this.mCursors[j] != null)
        this.mCursors[j].unregisterDataSetObserver(paramDataSetObserver);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.MergeHeapCursor
 * JD-Core Version:    0.6.2
 */