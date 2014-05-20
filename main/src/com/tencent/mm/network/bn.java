package com.tencent.mm.network;

import android.os.RemoteCallbackList;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;

public final class bn extends w
{
  private int cFC = 5;
  private long cFD;
  private int cFE = 0;
  private final RemoteCallbackList cFF = new RemoteCallbackList();
  private ay ckr = new ay(new bo(this), false);

  public final int EP()
  {
    if (0L > cj.M(this.cFD));
    for (int i = 6; ; i = this.cFC)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      aa.d("MicroMsg.NetworkEvent", "getNowStatus = %d", arrayOfObject);
      return i;
    }
  }

  public final void EQ()
  {
    this.cFF.kill();
  }

  public final long ER()
  {
    return this.cFD;
  }

  public final boolean c(ag paramag)
  {
    this.cFF.register(paramag);
    return true;
  }

  public final boolean d(ag paramag)
  {
    return this.cFF.unregister(paramag);
  }

  public final void eJ(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.d("MicroMsg.NetworkEvent", "networkChange : %d", arrayOfObject);
    int i = this.cFC;
    int j = 0;
    if (paramInt == i);
    while (j == 0)
    {
      return;
      if (4 == paramInt)
      {
        int n = this.cFC;
        j = 0;
        if (n == 3)
        {
          this.cFC = paramInt;
          j = 1;
        }
      }
      else if (3 == paramInt)
      {
        int k = this.cFC;
        j = 0;
        if (k != 0)
        {
          int m = this.cFC;
          j = 0;
          if (m != 2)
          {
            this.cFE = (1 + this.cFE);
            if (this.cFE > 0)
            {
              this.cFC = 3;
              j = 1;
            }
          }
        }
      }
      else if (5 == paramInt)
      {
        this.cFE = 0;
        this.cFC = 5;
        j = 1;
      }
      else
      {
        this.cFC = paramInt;
        j = 1;
      }
    }
    this.ckr.bO(1000L);
  }

  public final void hF(String paramString)
  {
    long l = 0L;
    aa.e("MicroMsg.NetworkEvent", "service out of band:" + paramString);
    try
    {
      String[] arrayOfString = paramString.split(",");
      switch (Integer.valueOf(arrayOfString[0]).intValue())
      {
      default:
        this.cFD = 0L;
        return;
      case 1:
      }
      if (arrayOfString.length > 1)
        l = Integer.valueOf(arrayOfString[1]).intValue();
      this.cFD = l;
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bn
 * JD-Core Version:    0.6.2
 */