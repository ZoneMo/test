package com.tencent.mapapi.map;

import android.content.Context;
import com.tencent.mapapi.a.a;
import com.tencent.mapapi.a.b;
import com.tencent.mapapi.a.c;

public final class p
{
  private String UL = "";
  private int Uo = 0;
  private Context VH = null;
  private s VI;
  private MapView VJ = null;
  private br VK = br.XI;
  private int VL = 0;
  private int VM = 0;
  c VN = new q(this);
  private t VO = new r(this);
  private int g = 10;

  public p(Context paramContext, String paramString, s params)
  {
    this.VI = params;
    this.UL = paramString;
    if (bq.UK == null)
      bq.UK = bq.o(paramContext);
    if (bq.d == null)
      bq.d = bq.n(paramContext);
    if (bq.UL == null)
      bq.UL = bu.q(paramContext);
    this.VH = paramContext.getApplicationContext();
    bq.a(paramContext);
    if (bq.UK == null)
      bq.UK = bq.o(paramContext);
  }

  private String mj()
  {
    if (this.VJ != null)
      return this.VJ.mr();
    return this.UL;
  }

  public final boolean d(GeoPoint paramGeoPoint)
  {
    if (paramGeoPoint == null)
    {
      this.VI.a(3, null);
      return false;
    }
    if (!a.m(this.VH))
    {
      this.VI.a(1, null);
      return false;
    }
    if (!mz())
    {
      this.VI.a(5, null);
      return false;
    }
    double d1 = paramGeoPoint.getLongitudeE6() / 1000000.0D;
    double d2 = paramGeoPoint.getLatitudeE6() / 1000000.0D;
    String str1 = "http://map.soso.com/loc?&s=2&fm=0&npois=1&px=" + d1 + "&py=" + d2;
    StringBuilder localStringBuilder = new StringBuilder().append(str1);
    String str2 = mj();
    String str3 = bq.UK;
    String str4 = b.mj();
    String str5 = a.n(this.VH);
    if (str5 == null)
      str5 = "0123456789ABCDEF";
    String str6 = a.a(str5);
    String str7 = new StringBuilder("&from=mobapi&pf=android&di=").append(str6).append("&ak=").append(str2).append("&ver=").append(str4).append("&nt=").append(a.o(this.VH)).append("&an=").append(str3).toString();
    new b(this.VN, this.VO).execute(new String[] { str7 });
    return true;
  }

  public final boolean mz()
  {
    if (this.VJ != null)
      return this.VJ.mq();
    return this.VK != br.XH;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.p
 * JD-Core Version:    0.6.2
 */