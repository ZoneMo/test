package com.tencent.mm.storage;

import com.tencent.mm.am.a;
import java.io.IOException;

public final class az extends bz
{
  private int cmdId;
  private a giz;
  private byte[] value;

  public az(int paramInt, a parama)
  {
    super(new Object[0]);
    this.cmdId = paramInt;
    this.giz = parama;
    try
    {
      this.value = parama.toByteArray();
      return;
    }
    catch (IOException localIOException)
    {
      this.value = new byte[0];
    }
  }

  public az(int paramInt, byte[] paramArrayOfByte)
  {
    super(new Object[0]);
    this.cmdId = paramInt;
    this.value = paramArrayOfByte;
  }

  public final a aDb()
  {
    return this.giz;
  }

  public final int getCmdId()
  {
    return this.cmdId;
  }

  public final String toString()
  {
    if (this.value == null)
      return "";
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(10000);
    arrayOfObject[1] = Integer.valueOf(this.cmdId);
    arrayOfObject[2] = this.value;
    return av.f(arrayOfObject);
  }

  public final int zO()
  {
    return 10000;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.az
 * JD-Core Version:    0.6.2
 */