package com.tencent.mapapi.a;

import android.os.AsyncTask;
import com.tencent.a.a.a;
import com.tencent.mapapi.map.al;
import com.tencent.mapapi.map.t;

public final class b extends AsyncTask
{
  private c UW;
  private byte[] UX;
  private t UY = null;
  private int a = 32;
  private String d;

  public b(c paramc, t paramt)
  {
    this.UW = paramc;
    this.UY = paramt;
  }

  private Integer a(String[] paramArrayOfString)
  {
    if (this.UY.mA() == true)
    {
      Integer localInteger = new al(this.UY.mj()).mG();
      if (localInteger == null)
        return Integer.valueOf(1);
      int i = localInteger.intValue();
      if (i == 1)
        return Integer.valueOf(1);
      this.UY.bb(i);
      if (!this.UY.mh())
        return Integer.valueOf(5);
    }
    if (this.UY != null)
      this.UY = null;
    String str = paramArrayOfString[0];
    com.tencent.a.a.c localc;
    try
    {
      localc = a.h(str, "androidmapsdk1.0.3");
      if ((localc == null) || (localc.data == null))
        return Integer.valueOf(1);
    }
    catch (Exception localException)
    {
      return Integer.valueOf(1);
    }
    this.d = localc.XZ;
    this.UX = localc.data;
    return Integer.valueOf(0);
  }

  public static String mj()
  {
    return "androidmapsdk1.0.3";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.a.b
 * JD-Core Version:    0.6.2
 */