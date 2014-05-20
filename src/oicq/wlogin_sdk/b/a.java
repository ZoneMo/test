package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.e;
import oicq.wlogin_sdk.c.f;

public class a
{
  int hxC = 0;
  int hxq = 128;
  int hxr = 0;
  byte[] hxw = new byte[this.hxq];
  int hyA = 4;
  int hyB = 0;
  int hyz = 0;

  private static int f(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte.length;
    int k;
    for (int j = paramInt1; ; j = k + (2 + f.w(paramArrayOfByte, k)))
    {
      if (j >= i);
      do
      {
        j = -1;
        do
        {
          return j;
          if (j + 2 > i)
            break;
        }
        while (f.w(paramArrayOfByte, j) == paramInt2);
        k = j + 2;
      }
      while (k + 2 > i);
    }
  }

  public final int a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    int i = f(paramArrayOfByte1, paramInt1, this.hxC);
    if (i < 0);
    int j;
    byte[] arrayOfByte1;
    do
    {
      do
      {
        return -1;
        j = paramInt2 - (i - paramInt1);
        arrayOfByte1 = new byte[j];
        System.arraycopy(paramArrayOfByte1, i, arrayOfByte1, 0, j);
      }
      while (this.hyA >= j);
      this.hyB = f.w(arrayOfByte1, 2);
    }
    while (this.hyA + this.hyB > j);
    byte[] arrayOfByte2 = e.decrypt(arrayOfByte1, this.hyA, this.hyB, paramArrayOfByte2);
    if (arrayOfByte2 == null)
      return -1015;
    if (this.hyA + arrayOfByte2.length > this.hxq)
    {
      this.hxq = (this.hyA + arrayOfByte2.length);
      this.hxw = new byte[this.hxq];
    }
    this.hxr = 0;
    System.arraycopy(arrayOfByte1, 0, this.hxw, 0, this.hyA);
    this.hxr += this.hyA;
    System.arraycopy(arrayOfByte2, 0, this.hxw, this.hxr, arrayOfByte2.length);
    this.hxr += arrayOfByte2.length;
    this.hyB = arrayOfByte2.length;
    if (!aQy().booleanValue())
      return -1005;
    return 0;
  }

  public final byte[] aQs()
  {
    byte[] arrayOfByte = new byte[this.hxr];
    System.arraycopy(this.hxw, 0, arrayOfByte, 0, this.hxr);
    return arrayOfByte;
  }

  public final byte[] aQw()
  {
    byte[] arrayOfByte = new byte[this.hyB];
    System.arraycopy(this.hxw, this.hyA, arrayOfByte, 0, this.hyB);
    return arrayOfByte;
  }

  public final void aQx()
  {
    f.i(this.hxw, 2, this.hxr - this.hyA);
  }

  public Boolean aQy()
  {
    return Boolean.valueOf(true);
  }

  public final int g(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = f(paramArrayOfByte, paramInt1, this.hxC);
    if (i < 0);
    int j;
    do
    {
      do
      {
        return -1;
        j = paramInt2 - (i - paramInt1);
      }
      while (this.hyA >= j);
      this.hyB = f.w(paramArrayOfByte, i + 2);
    }
    while (this.hyA + this.hyB > j);
    int k = this.hyA + this.hyB;
    if (k > this.hxq)
    {
      this.hxq = (k + 128);
      this.hxw = new byte[this.hxq];
    }
    this.hxr = k;
    System.arraycopy(paramArrayOfByte, i, this.hxw, 0, k);
    this.hxC = f.w(paramArrayOfByte, i);
    this.hyB = (k - this.hyA);
    if (!aQy().booleanValue())
      return -1005;
    return i + this.hyA + this.hyB;
  }

  public final void oW(int paramInt)
  {
    f.i(this.hxw, this.hxr, paramInt);
    this.hxr = (2 + this.hxr);
    f.i(this.hxw, this.hxr, 0);
    this.hxr = (2 + this.hxr);
  }

  public final void q(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt + this.hyA > this.hxq)
    {
      this.hxq = (128 + (paramInt + this.hyA));
      byte[] arrayOfByte = new byte[this.hxq];
      System.arraycopy(this.hxw, 0, arrayOfByte, 0, this.hyA);
      this.hxw = arrayOfByte;
    }
    this.hxr = (paramInt + this.hyA);
    System.arraycopy(paramArrayOfByte, 0, this.hxw, this.hyA, paramInt);
    this.hyB = paramInt;
    f.i(this.hxw, 0, this.hxC);
    f.i(this.hxw, 2, this.hyB);
  }

  public final void r(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt > this.hxq - this.hyA)
    {
      this.hxq = (64 + (paramInt + this.hyA));
      byte[] arrayOfByte = new byte[this.hxq];
      System.arraycopy(this.hxw, 0, arrayOfByte, 0, this.hxr);
      this.hxw = arrayOfByte;
    }
    this.hyB = paramInt;
    System.arraycopy(paramArrayOfByte, 0, this.hxw, this.hxr, paramInt);
    this.hxr = (paramInt + this.hxr);
  }

  public String toString()
  {
    String str = "";
    for (int i = 0; ; i++)
    {
      if (i >= this.hxr)
        return str;
      str = new StringBuilder(String.valueOf(str)).append(Integer.toHexString(0xF & this.hxw[i] >> 4)).toString() + Integer.toHexString(0xF & this.hxw[i]);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.a
 * JD-Core Version:    0.6.2
 */