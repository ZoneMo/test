package com.tencent.mapapi.map;

import android.graphics.BitmapFactory;

final class an
{
  private boolean UN = false;
  long UO = 0L;
  ao Ws = null;
  protected final int b;

  public an(int paramInt, boolean paramBoolean, long paramLong)
  {
    this.b = paramInt;
    this.UN = paramBoolean;
    this.UO = (1000000L * paramLong);
    if (this.b > 0)
    {
      this.Ws = new ao(this.b);
      return;
    }
    this.Ws = null;
  }

  protected final ap ao(String paramString)
  {
    if (paramString.equals(""));
    ap localap;
    do
    {
      return null;
      localap = this.Ws.ao(paramString);
      if (!this.UN)
        return localap;
    }
    while (localap == null);
    if (System.nanoTime() - localap.UG > this.UO)
    {
      this.Ws.ap(paramString);
      return null;
    }
    return localap;
  }

  protected final boolean b(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null)
      return false;
    ap localap = new ap();
    try
    {
      localap.Wu = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
      label25: if (localap.Wu == null)
      {
        localap.Wu = null;
        return false;
      }
      if (this.UN == true)
        localap.UG = System.nanoTime();
      this.Ws.a(paramString, localap);
      return true;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      break label25;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.an
 * JD-Core Version:    0.6.2
 */