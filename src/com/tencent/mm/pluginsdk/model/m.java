package com.tencent.mm.pluginsdk.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.util.DisplayMetrics;
import com.tencent.mm.a.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.s;
import com.tencent.mm.platformtools.t;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

public final class m
  implements s
{
  private String dRI;
  private boolean fha;
  private int type;
  private String url;

  public m(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    this.url = paramString1;
    this.type = paramInt;
    this.dRI = paramString2;
    this.fha = paramBoolean;
  }

  public static String h(String paramString1, int paramInt, String paramString2)
  {
    if (be.se())
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = be.uz().sB();
      arrayOfObject[1] = Integer.valueOf(paramInt);
      arrayOfObject[2] = paramString2;
      arrayOfObject[3] = f.h(paramString1.getBytes());
      return String.format("%s/ReaderApp_%d%s_%s", arrayOfObject);
    }
    return "";
  }

  public final String Fr()
  {
    return h(this.url, this.type, this.dRI);
  }

  public final String Fs()
  {
    return this.url;
  }

  public final String Ft()
  {
    return this.url;
  }

  public final String Fu()
  {
    return this.url + this.dRI;
  }

  public final boolean Fv()
  {
    return false;
  }

  public final boolean Fw()
  {
    return this.fha;
  }

  public final Bitmap Fx()
  {
    return BitmapFactory.decodeResource(al.getContext().getResources(), com.tencent.mm.h.agm);
  }

  public final Bitmap a(Bitmap paramBitmap, t paramt)
  {
    int i = 100;
    String str;
    n localn;
    Resources localResources;
    if (t.cGw == paramt)
    {
      str = this.dRI;
      localn = new n();
      Context localContext = al.getContext();
      if (localContext == null)
        break label222;
      localResources = localContext.getResources();
      if (localResources == null)
        break label222;
    }
    label222: for (DisplayMetrics localDisplayMetrics = localResources.getDisplayMetrics(); ; localDisplayMetrics = null)
    {
      int j;
      if (localDisplayMetrics != null)
        if ("@T".equals(str))
        {
          j = (int)(localDisplayMetrics.widthPixels - 60.0F * localDisplayMetrics.density);
          i = (int)(135.0F * localDisplayMetrics.density);
        }
      while (true)
      {
        localn.w = j;
        localn.Uo = i;
        aa.d("MicroMsg.ReaaderAppGetPicStrategy", localn.toString());
        paramBitmap = com.tencent.mm.sdk.platformtools.h.a(paramBitmap, localn.w, localn.Uo, true);
        try
        {
          com.tencent.mm.sdk.platformtools.h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, Fr(), false);
          return paramBitmap;
          i = (int)(50.0F * localDisplayMetrics.density);
          j = i;
          continue;
          if ("@T".equals(str))
          {
            j = 2147483647;
            i = 270;
          }
          else
          {
            j = i;
          }
        }
        catch (Exception localException)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.url;
          aa.b("MicroMsg.ReaaderAppGetPicStrategy", "save image %s fail", arrayOfObject);
          return paramBitmap;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.m
 * JD-Core Version:    0.6.2
 */