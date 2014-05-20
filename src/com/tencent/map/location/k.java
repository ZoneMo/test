package com.tencent.map.location;

import android.telephony.TelephonyManager;
import java.util.List;

final class k extends Thread
{
  k(j paramj)
  {
  }

  public final void run()
  {
    List localList;
    byte[] arrayOfByte;
    if (j.d(this.Ul) != null)
    {
      localList = j.d(this.Ul).getNeighboringCellInfo();
      arrayOfByte = j.e(this.Ul);
      if (localList == null);
    }
    try
    {
      j.f(this.Ul).clear();
      j.f(this.Ul).addAll(localList);
      j.g(this.Ul);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.k
 * JD-Core Version:    0.6.2
 */