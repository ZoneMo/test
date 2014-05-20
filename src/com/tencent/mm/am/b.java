package com.tencent.mm.am;

import java.io.UnsupportedEncodingException;

public final class b
{
  private byte[] fxj;

  private b()
  {
  }

  public b(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  private b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.fxj = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, this.fxj, 0, paramInt2);
  }

  public static b au(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null);
    while (true)
    {
      return new b(paramArrayOfByte);
      paramArrayOfByte = new byte[0];
    }
  }

  public static b b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new b(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final String avA()
  {
    int i = 0;
    try
    {
      while (true)
      {
        if (i >= this.fxj.length);
        int j;
        do
        {
          return new String(this.fxj, 0, i, "UTF-8");
          j = this.fxj[i];
        }
        while (j == 0);
        i++;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new RuntimeException("UTF-8 not supported?");
  }

  public final byte[] getBytes()
  {
    return this.fxj;
  }

  public final b lf(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    if (this.fxj.length >= paramInt)
    {
      System.arraycopy(this.fxj, 0, arrayOfByte, 0, paramInt - 1);
      this.fxj = arrayOfByte;
      return this;
    }
    System.arraycopy(this.fxj, 0, arrayOfByte, 0, this.fxj.length);
    this.fxj = arrayOfByte;
    return this;
  }

  public final int size()
  {
    return this.fxj.length;
  }

  public final byte[] toByteArray()
  {
    int i = this.fxj.length;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.fxj, 0, arrayOfByte, 0, i);
    return arrayOfByte;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.am.b
 * JD-Core Version:    0.6.2
 */