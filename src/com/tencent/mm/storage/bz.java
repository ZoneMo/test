package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import com.tencent.mm.sdk.platformtools.cj;

public abstract class bz
{
  private Object[] giZ = null;

  public bz(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
    {
      this.giZ = new Object[1 + paramArrayOfObject.length];
      this.giZ[0] = Integer.valueOf(zO());
      int i = 0;
      if (i < paramArrayOfObject.length)
      {
        if ((paramArrayOfObject[i] == null) || ((paramArrayOfObject[i] instanceof String)))
          this.giZ[(i + 1)] = cj.hW((String)paramArrayOfObject[i]);
        while (true)
        {
          i++;
          break;
          this.giZ[(i + 1)] = paramArrayOfObject[i];
        }
      }
    }
  }

  public abstract a aDb();

  public final byte[] getBytes()
  {
    if (aDb() == null)
      return null;
    try
    {
      byte[] arrayOfByte = aDb().toByteArray();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public abstract int getCmdId();

  public String toString()
  {
    if (this.giZ == null)
      return "";
    return av.f(this.giZ);
  }

  public abstract int zO();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.bz
 * JD-Core Version:    0.6.2
 */