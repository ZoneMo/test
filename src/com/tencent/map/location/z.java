package com.tencent.map.location;

import android.net.wifi.ScanResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class z
  implements Cloneable
{
  private List Ua = null;

  public z(List paramList)
  {
    if (paramList != null)
    {
      this.Ua = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        ScanResult localScanResult = (ScanResult)localIterator.next();
        this.Ua.add(localScanResult);
      }
    }
  }

  public final Object clone()
  {
    try
    {
      localz = (z)super.clone();
      if (this.Ua != null)
      {
        localz.Ua = new ArrayList();
        localz.Ua.addAll(this.Ua);
      }
      return localz;
    }
    catch (Exception localException)
    {
      while (true)
        z localz = null;
    }
  }

  public final List lY()
  {
    return this.Ua;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.z
 * JD-Core Version:    0.6.2
 */