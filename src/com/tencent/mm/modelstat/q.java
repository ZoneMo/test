package com.tencent.mm.modelstat;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.RandomAccessFile;

final class q
{
  long[] cAa = new long[20];

  public q()
  {
    for (int i = 0; i < 20; i++)
      this.cAa[i] = 0L;
    long l = cj.FC();
    this.cAa[0] = l;
  }

  public final void M(int paramInt1, int paramInt2)
  {
    this.cAa[paramInt1] += paramInt2;
  }

  public final int a(RandomAccessFile paramRandomAccessFile)
  {
    int i;
    try
    {
      if (paramRandomAccessFile.length() < 160L)
        return 0 - j.qe();
      paramRandomAccessFile.seek(0L);
      for (int j = 0; ; j++)
      {
        i = 0;
        if (j >= 20)
          break;
        this.cAa[j] = paramRandomAccessFile.readLong();
      }
    }
    catch (Exception localException)
    {
      i = 0 - j.qe();
    }
    return i;
  }

  public final int b(RandomAccessFile paramRandomAccessFile)
  {
    int i;
    try
    {
      paramRandomAccessFile.seek(0L);
      for (int j = 0; ; j++)
      {
        i = 0;
        if (j >= 20)
          break;
        paramRandomAccessFile.writeLong(this.cAa[j]);
      }
    }
    catch (Exception localException)
    {
      i = 0 - j.qe();
    }
    return i;
  }

  public final void er(int paramInt)
  {
    this.cAa[paramInt] = (1L + this.cAa[paramInt]);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.q
 * JD-Core Version:    0.6.2
 */