package com.tencent.mm.compatible.loader;

public final class c
{
  private static final Object cP = new Object();
  private boolean cQ = false;
  private Object[] cS;
  private int cT;
  private long[] ceW;

  public c()
  {
    this((byte)0);
  }

  private c(byte paramByte)
  {
    int i = a.bD(10);
    this.ceW = new long[i];
    this.cS = new Object[i];
    this.cT = 0;
  }

  private static int a(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    int i = paramInt + 0;
    int j = -1;
    int k = i;
    while (k - j > 1)
    {
      int m = (k + j) / 2;
      if (paramArrayOfLong[m] < paramLong)
        j = m;
      else
        k = m;
    }
    if (k == paramInt + 0)
      k = 0xFFFFFFFF ^ paramInt + 0;
    while (paramArrayOfLong[k] == paramLong)
      return k;
    return k ^ 0xFFFFFFFF;
  }

  public final void delete(long paramLong)
  {
    int i = a(this.ceW, this.cT, paramLong);
    if ((i >= 0) && (this.cS[i] != cP))
    {
      this.cS[i] = cP;
      this.cQ = true;
    }
  }

  public final Object get(long paramLong)
  {
    int i = a(this.ceW, this.cT, paramLong);
    if ((i < 0) || (this.cS[i] == cP))
      return null;
    return this.cS[i];
  }

  public final void put(long paramLong, Object paramObject)
  {
    int i = a(this.ceW, this.cT, paramLong);
    if (i >= 0)
    {
      this.cS[i] = paramObject;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.cT) && (this.cS[j] == cP))
    {
      this.ceW[j] = paramLong;
      this.cS[j] = paramObject;
      return;
    }
    if ((this.cQ) && (this.cT >= this.ceW.length))
    {
      int m = this.cT;
      long[] arrayOfLong2 = this.ceW;
      Object[] arrayOfObject2 = this.cS;
      int n = 0;
      int i1 = 0;
      while (n < m)
      {
        Object localObject = arrayOfObject2[n];
        if (localObject != cP)
        {
          if (n != i1)
          {
            arrayOfLong2[i1] = arrayOfLong2[n];
            arrayOfObject2[i1] = localObject;
          }
          i1++;
        }
        n++;
      }
      this.cQ = false;
      this.cT = i1;
      j = 0xFFFFFFFF ^ a(this.ceW, this.cT, paramLong);
    }
    if (this.cT >= this.ceW.length)
    {
      int k = a.bD(1 + this.cT);
      long[] arrayOfLong1 = new long[k];
      Object[] arrayOfObject1 = new Object[k];
      System.arraycopy(this.ceW, 0, arrayOfLong1, 0, this.ceW.length);
      System.arraycopy(this.cS, 0, arrayOfObject1, 0, this.cS.length);
      this.ceW = arrayOfLong1;
      this.cS = arrayOfObject1;
    }
    if (this.cT - j != 0)
    {
      System.arraycopy(this.ceW, j, this.ceW, j + 1, this.cT - j);
      System.arraycopy(this.cS, j, this.cS, j + 1, this.cT - j);
    }
    this.ceW[j] = paramLong;
    this.cS[j] = paramObject;
    this.cT = (1 + this.cT);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.c
 * JD-Core Version:    0.6.2
 */