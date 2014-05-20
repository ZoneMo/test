package com.tencent.mapapi.map;

import android.os.Handler;

final class g
  implements Runnable
{
  g(MapView paramMapView)
  {
  }

  public final void run()
  {
    this.Vz.mt();
    if (MapView.a(this.Vz) == null)
      MapView.a(this.Vz, new Handler());
    MapView.a(this.Vz).removeCallbacks(MapView.b(this.Vz));
    MapView.a(this.Vz).postDelayed(MapView.b(this.Vz), MapView.c(this.Vz));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.g
 * JD-Core Version:    0.6.2
 */