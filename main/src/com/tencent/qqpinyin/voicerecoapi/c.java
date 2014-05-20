package com.tencent.qqpinyin.voicerecoapi;

public final class c
{
  private TRVADNative hwg = new TRVADNative();
  private int hwh;
  private int hwi;

  public c()
  {
    this.hwh = 500000;
    this.hwi = 10000000;
  }

  public c(int paramInt)
  {
    this.hwh = paramInt;
    this.hwi = 5000000;
  }

  public final void a(short[] paramArrayOfShort, int paramInt, d paramd)
  {
    double d1 = 1000.0D;
    int i = 0;
    if ((paramArrayOfShort == null) || (paramInt <= 0) || (paramd == null))
      label22: return;
    while (true)
    {
      try
      {
        switch (this.hwg.mfeSendData(paramArrayOfShort, paramInt))
        {
        default:
          paramd.hwj = 0;
          break label193;
          label67: paramd.cDz = ((int)d1);
          new StringBuilder("volumn：").append(paramd.cDz).toString();
          break label22;
        case 1:
        case 2:
        case 3:
        }
      }
      finally
      {
      }
      paramd.hwj = 1;
      break label193;
      paramd.hwj = 2;
      break label193;
      paramd.hwj = 3;
      int j;
      label193: 
      do
      {
        double d2 = j;
        double d3 = Math.sqrt(paramArrayOfShort[i] * paramArrayOfShort[i]);
        j = (int)(d2 + d3 / paramInt);
        i++;
        continue;
        if (j > 16383)
          break;
        d1 *= (j - 100.0D) / 32667.0D;
        break;
        j = 0;
      }
      while (i < paramInt);
      if (j >= 100)
        break label67;
      d1 = 0.0D;
    }
  }

  public final int aPO()
  {
    int i = this.hwg.mfeInit(this.hwh, this.hwi);
    if (i == 0)
    {
      i = this.hwg.mfeOpen();
      if (i == 0)
      {
        i = this.hwg.mfeEnableNoiseDetection(true);
        if (i == 0)
          i = this.hwg.mfeStart();
      }
    }
    if (i == 0)
      return 0;
    return -1;
  }

  public final int stop()
  {
    int i = this.hwg.mfeStop();
    if (i == 0)
    {
      i = this.hwg.mfeClose();
      if (i == 0)
        i = this.hwg.mfeExit();
    }
    if (i == 0)
      return 0;
    return -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.qqpinyin.voicerecoapi.c
 * JD-Core Version:    0.6.2
 */