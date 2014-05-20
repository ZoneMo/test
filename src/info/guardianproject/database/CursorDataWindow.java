package info.guardianproject.database;

import android.database.sqlite.SQLiteClosable;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class CursorDataWindow extends SQLiteClosable
{
  private static final double CACHE_CAN_USE_PERCENT = 0.1D;
  private static final int MAX_CHANGE_LIMIT = 50;
  public static final int PAGE_SIZE_DEFAULT = 3000;
  public static final int PAGE_SIZE_MAX = 15000;
  public static final int PAGE_SIZE_MIN = 2000;
  ArrayList changeData;
  private HashMap datas = new HashMap();
  CursorDataItem fillItem;
  private int lastAllCount;
  private int mStartPos = 0;
  private SparseArray posistionMaps = new SparseArray();
  CursorDataItem tempData;

  public CursorDataWindow(boolean paramBoolean)
  {
  }

  private boolean clearData(Object paramObject)
  {
    if (this.changeData == null)
      this.changeData = new ArrayList();
    if (!this.changeData.contains(paramObject))
      this.changeData.add(paramObject);
    this.datas.remove(paramObject);
    return true;
  }

  private void updatePos(Object[] paramArrayOfObject)
  {
    SparseArray localSparseArray = new SparseArray();
    int i = 0;
    int j = 0;
    if (i >= this.posistionMaps.size())
    {
      this.posistionMaps = localSparseArray;
      return;
    }
    int k = this.posistionMaps.keyAt(i);
    Object localObject = this.posistionMaps.valueAt(i);
    int m = 1;
    int n = paramArrayOfObject.length;
    label110: for (int i1 = 0; ; i1++)
    {
      if (i1 >= n);
      while (true)
      {
        if (m != 0)
          localSparseArray.put(k - j, localObject);
        i++;
        break;
        if (!paramArrayOfObject[i1].equals(localObject))
          break label110;
        j++;
        m = 0;
      }
    }
  }

  public boolean checkIsCacheUseful(int paramInt)
  {
    if (paramInt > 50);
    do
    {
      return false;
      if (this.lastAllCount < 10)
        return true;
    }
    while (paramInt / this.lastAllCount >= 0.1D);
    return true;
  }

  public void clearData()
  {
    this.posistionMaps.clear();
    this.datas.clear();
  }

  public boolean containData(int paramInt)
  {
    return this.posistionMaps.indexOfKey(paramInt) >= 0;
  }

  public boolean containKey(Object paramObject)
  {
    if ((paramObject instanceof Object[]))
    {
      Object[] arrayOfObject = (Object[])paramObject;
      if (arrayOfObject.length == 1)
        return (this.datas != null) && (this.datas.containsKey(arrayOfObject[0]));
    }
    return (this.datas != null) && (this.datas.containsKey(paramObject));
  }

  public abstract CursorDataItem createItem();

  public void fillColumnBlob(int paramInt, byte[] paramArrayOfByte)
  {
    if (this.tempData != null)
      this.tempData.fillColumnBlob(paramInt, paramArrayOfByte);
  }

  public void fillColumnDouble(int paramInt, double paramDouble)
  {
    if (this.tempData != null)
      this.tempData.fillColumnDouble(paramInt, paramDouble);
  }

  public void fillColumnFloat(int paramInt, float paramFloat)
  {
    if (this.tempData != null)
      this.tempData.fillColumnFloat(paramInt, paramFloat);
  }

  public void fillColumnInt(int paramInt, long paramLong)
  {
    if (this.tempData != null)
      this.tempData.fillColumnInt(paramInt, paramLong);
  }

  public void fillColumnLong(int paramInt, long paramLong)
  {
    if (this.tempData != null)
      this.tempData.fillColumnLong(paramInt, paramLong);
  }

  public void fillColumnNull(int paramInt)
  {
    if (this.tempData != null)
      this.tempData.fillColumnNull(paramInt);
  }

  public void fillColumnString(int paramInt, String paramString)
  {
    if (this.tempData != null)
      this.tempData.fillColumnString(paramInt, paramString);
  }

  public void fillEnd(int paramInt)
  {
    this.tempData = null;
    this.lastAllCount = this.posistionMaps.size();
  }

  public CursorDataItem getItem(int paramInt)
  {
    boolean bool = containData(paramInt);
    CursorDataItem localCursorDataItem = null;
    if (bool)
    {
      Object localObject = this.posistionMaps.get(paramInt);
      localCursorDataItem = (CursorDataItem)this.datas.get(localObject);
      if (localCursorDataItem == null)
      {
        rebuildChangeData();
        localCursorDataItem = (CursorDataItem)this.datas.get(localObject);
      }
    }
    return localCursorDataItem;
  }

  public CursorDataItem getItemByKey(Object paramObject)
  {
    if (this.datas == null)
      return null;
    return (CursorDataItem)this.datas.get(paramObject);
  }

  public int getLoadedNum()
  {
    return this.posistionMaps.size();
  }

  public SparseArray getPosistionMaps()
  {
    return this.posistionMaps;
  }

  public int getStartPosition()
  {
    return this.mStartPos;
  }

  public boolean isCacheUseful()
  {
    if (this.changeData == null);
    do
    {
      return true;
      if (this.changeData.size() > 50)
        return false;
    }
    while (this.changeData.size() / this.lastAllCount < 0.1D);
    return false;
  }

  public boolean notifyChange(Object paramObject)
  {
    return notifyChange(paramObject, null);
  }

  public boolean notifyChange(Object paramObject, CursorDataItem paramCursorDataItem)
  {
    if (paramCursorDataItem != null)
    {
      this.datas.put(paramObject, paramCursorDataItem);
      return false;
    }
    if ((paramObject instanceof Object[]))
    {
      Object[] arrayOfObject = (Object[])paramObject;
      int i = arrayOfObject.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          updatePos(arrayOfObject);
          return false;
        }
        Object localObject = arrayOfObject[j];
        this.datas.remove(localObject);
      }
    }
    clearData(paramObject);
    return false;
  }

  protected void onAllReferencesReleased()
  {
    clearData();
  }

  public void rebuildChangeData()
  {
    if (this.changeData.size() == 0)
      return;
    ArrayList localArrayList = rebulidAllChangeData(this.changeData);
    for (int i = 0; ; i++)
    {
      if (i >= localArrayList.size())
      {
        this.changeData.clear();
        return;
      }
      CursorDataItem localCursorDataItem = (CursorDataItem)localArrayList.get(i);
      if (localCursorDataItem != null)
        this.datas.put(localCursorDataItem.getKey(), localCursorDataItem);
    }
  }

  public abstract ArrayList rebulidAllChangeData(ArrayList paramArrayList);

  public void rowEnd(int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0)
      this.posistionMaps.remove(paramInt1);
    while (this.tempData == null)
      return;
    Object localObject = this.tempData.getKey();
    this.datas.put(localObject, this.tempData);
    this.posistionMaps.put(paramInt1, localObject);
  }

  public void rowStart(int paramInt)
  {
    if (!containData(paramInt))
      this.tempData = createItem();
  }

  public void setStartPosition(int paramInt)
  {
    this.mStartPos = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.CursorDataWindow
 * JD-Core Version:    0.6.2
 */