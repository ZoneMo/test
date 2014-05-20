package info.guardianproject.database;

import android.database.CursorIndexOutOfBoundsException;
import android.util.SparseArray;

public class HeapCursor extends AbstractCursor
{
  public int chunkSize = 3000;
  private final int columnCount;
  private final String[] columnNames;
  int maxPosistion;
  SparseArray sArrays;

  public HeapCursor(String[] paramArrayOfString)
  {
    this(paramArrayOfString, 16);
  }

  public HeapCursor(String[] paramArrayOfString, int paramInt)
  {
    this.columnNames = paramArrayOfString;
    this.columnCount = paramArrayOfString.length;
    this.sArrays = new SparseArray();
  }

  private Object get(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.columnCount))
      throw new CursorIndexOutOfBoundsException("Requested column: " + paramInt + ", # of columns: " + this.columnCount);
    if (this.mPos < 0)
      throw new CursorIndexOutOfBoundsException("Before first row.");
    if (this.mPos >= this.maxPosistion)
      throw new CursorIndexOutOfBoundsException("After last row.");
    int i = this.mPos / this.chunkSize;
    int j = this.mPos % this.chunkSize * this.columnCount;
    return ((Object[])this.sArrays.get(i))[(j + paramInt)];
  }

  public void clear()
  {
    this.mPos = 0;
    this.sArrays.clear();
  }

  public boolean containData(int paramInt)
  {
    int i = paramInt / this.chunkSize;
    if (this.sArrays.indexOfKey(i) < 0)
      return false;
    int j = paramInt % this.chunkSize * this.columnCount;
    return ((Object[])this.sArrays.get(i))[j] != null;
  }

  public byte[] getBlob(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return null;
    return (byte[])localObject;
  }

  public String[] getColumnNames()
  {
    return this.columnNames;
  }

  public int getCount()
  {
    return this.maxPosistion;
  }

  public double getDouble(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return 0.0D;
    if ((localObject instanceof Number))
      return ((Number)localObject).doubleValue();
    return Double.parseDouble(localObject.toString());
  }

  public float getFloat(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return 0.0F;
    if ((localObject instanceof Number))
      return ((Number)localObject).floatValue();
    return Float.parseFloat(localObject.toString());
  }

  public int getInt(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return 0;
    if ((localObject instanceof Number))
      return ((Number)localObject).intValue();
    return Integer.parseInt(localObject.toString());
  }

  public long getLong(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return 0L;
    if ((localObject instanceof Number))
      return ((Number)localObject).longValue();
    return Long.parseLong(localObject.toString());
  }

  public short getShort(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return 0;
    if ((localObject instanceof Number))
      return ((Number)localObject).shortValue();
    return Short.parseShort(localObject.toString());
  }

  public String getString(int paramInt)
  {
    Object localObject = get(paramInt);
    if (localObject == null)
      return null;
    return localObject.toString();
  }

  public boolean isNull(int paramInt)
  {
    return get(paramInt) == null;
  }

  public HeapCursor.RowBuilder newRow(int paramInt)
  {
    int i = paramInt / this.chunkSize;
    Object[] arrayOfObject;
    int j;
    int k;
    int m;
    if (this.sArrays.indexOfKey(i) < 0)
    {
      arrayOfObject = new Object[this.chunkSize * this.columnCount];
      this.sArrays.put(i, arrayOfObject);
      j = paramInt % this.chunkSize * this.columnCount;
      k = j + this.columnCount;
      m = paramInt + 1;
      if (m <= this.maxPosistion)
        break label111;
    }
    while (true)
    {
      this.maxPosistion = m;
      return new HeapCursor.RowBuilder(this, j, k, arrayOfObject);
      arrayOfObject = (Object[])this.sArrays.get(i);
      break;
      label111: m = this.maxPosistion;
    }
  }

  public void put(int paramInt, Object paramObject)
  {
    if ((paramInt < 0) || (paramInt >= this.columnCount))
      throw new CursorIndexOutOfBoundsException("Requested column: " + paramInt + ", # of columns: " + this.columnCount);
    if (this.mPos < 0)
      throw new CursorIndexOutOfBoundsException("Before first row.");
    if (this.mPos >= this.maxPosistion)
      throw new CursorIndexOutOfBoundsException("After last row.");
    int i = this.mPos / this.chunkSize;
    int j = this.mPos % this.chunkSize * this.columnCount;
    ((Object[])this.sArrays.get(i))[(j + paramInt)] = paramObject;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.HeapCursor
 * JD-Core Version:    0.6.2
 */