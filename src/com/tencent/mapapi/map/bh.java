package com.tencent.mapapi.map;

import android.content.Context;

final class bh
{
  public bn WV;
  public bm WW;
  public bi WX;
  public bl WY;
  public bo WZ = null;
  public k Xa = null;
  private int g = 0;

  public bh(Context paramContext, MapView paramMapView, String paramString)
  {
    bq.p(paramContext);
    if (bq.UK == null)
      bq.UK = bq.o(paramContext);
    if (bq.d == null)
      bq.d = bq.n(paramContext);
    if (bq.UL == null)
      bq.UL = bu.q(paramContext);
    this.WW = new bm(this, paramMapView);
    this.Xa = this.WW;
    this.WZ = new bo(this.WW);
    this.WZ.lX();
    this.WY = new bl(this, paramContext, paramString);
    this.WX = new bi(this, paramContext);
    this.WV = new bn(this);
    String str1 = bq.a("logo");
    bd localbd = new bd(this, bq.e(this.WY.mQ(), str1));
    this.WX.a(localbd);
    String str2 = "marker_small.png";
    if (bq.a == 3)
      str2 = "marker_big.png";
    while (true)
    {
      bq.WE = bq.e(paramContext, str2);
      return;
      if (bq.a == 2)
        str2 = "marker_big.png";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bh
 * JD-Core Version:    0.6.2
 */