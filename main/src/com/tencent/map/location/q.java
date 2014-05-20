package com.tencent.map.location;

import android.location.Location;

public final class q
  implements Cloneable
{
  private long TZ = 0L;
  private Location Uz = null;
  private int a = 0;

  public q(Location paramLocation, int paramInt, long paramLong)
  {
    if (paramLocation != null)
    {
      this.Uz = new Location(paramLocation);
      this.a = paramInt;
      this.TZ = paramLong;
    }
  }

  public final Object clone()
  {
    try
    {
      localq = (q)super.clone();
      if (this.Uz != null)
        localq.Uz = new Location(this.Uz);
      return localq;
    }
    catch (Exception localException)
    {
      while (true)
        q localq = null;
    }
  }

  public final boolean lZ()
  {
    if (this.Uz == null);
    while (((this.a > 0) && (this.a < 3)) || (System.currentTimeMillis() - this.TZ > 30000L))
      return false;
    return true;
  }

  public final Location ma()
  {
    return this.Uz;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.q
 * JD-Core Version:    0.6.2
 */