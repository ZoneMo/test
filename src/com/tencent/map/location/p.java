package com.tencent.map.location;

import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

final class p
  implements GpsStatus.Listener, LocationListener
{
  private p(o paramo)
  {
  }

  public final void onGpsStatusChanged(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      o.a(this.Uy);
      return;
      o.a(this.Uy, 1);
      continue;
      o.a(this.Uy, 0);
      continue;
      o.a(this.Uy, 2);
    }
  }

  public final void onLocationChanged(Location paramLocation)
  {
    double d1;
    double d2;
    int i;
    if (paramLocation != null)
    {
      d1 = paramLocation.getLatitude();
      d2 = paramLocation.getLongitude();
      boolean bool1 = d1 < 29.999998211860657D;
      i = 0;
      if (bool1)
      {
        boolean bool2 = d2 < 103.99999916553497D;
        i = 0;
        if (bool2)
          break label52;
      }
      if (i != 0)
        break label157;
    }
    label52: 
    do
    {
      return;
      boolean bool3 = Math.abs(d1) < 1.0E-08D;
      i = 0;
      if (bool3)
        break;
      boolean bool4 = Math.abs(d2) < 1.0E-08D;
      i = 0;
      if (bool4)
        break;
      boolean bool5 = d1 < -90.0D;
      i = 0;
      if (bool5)
        break;
      boolean bool6 = d1 < 90.0D;
      i = 0;
      if (bool6)
        break;
      boolean bool7 = d2 < -180.0D;
      i = 0;
      if (bool7)
        break;
      boolean bool8 = d2 < 180.0D;
      i = 0;
      if (bool8)
        break;
      i = 1;
      break;
      o.a(this.Uy, System.currentTimeMillis());
      o.a(this.Uy);
      o.a(this.Uy, 2);
      o localo = this.Uy;
      o.b(this.Uy);
      int j = o.c(this.Uy);
      o.d(this.Uy);
      o.a(localo, new q(paramLocation, j, o.e(this.Uy)));
    }
    while (o.f(this.Uy) == null);
    label157: o.f(this.Uy).a(o.g(this.Uy));
  }

  public final void onProviderDisabled(String paramString)
  {
    if (paramString != null);
    try
    {
      boolean bool = paramString.equals("gps");
      if (!bool);
      do
      {
        return;
        o.b(this.Uy, o.h(this.Uy));
        o.c(this.Uy, 0);
      }
      while (o.f(this.Uy) == null);
      o.f(this.Uy).bb(o.d(this.Uy));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void onProviderEnabled(String paramString)
  {
    if (paramString != null);
    try
    {
      boolean bool = paramString.equals("gps");
      if (!bool);
      do
      {
        return;
        o.c(this.Uy, 4);
      }
      while (o.f(this.Uy) == null);
      o.f(this.Uy).bb(o.d(this.Uy));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.p
 * JD-Core Version:    0.6.2
 */