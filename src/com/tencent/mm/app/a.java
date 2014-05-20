package com.tencent.mm.app;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.p;
import com.tencent.mm.pluginsdk.ui.ac;
import com.tencent.mm.pluginsdk.ui.ae;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.h;
import java.io.IOException;

final class a
  implements ae
{
  private Bitmap bKD = null;
  m bKE;

  public a()
  {
    try
    {
      this.bKD = h.a(al.getContext().getAssets().open("avatar/default_nor_avatar.png"), com.tencent.mm.an.a.getDensity(null));
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public final void a(ac paramac)
  {
    if ((paramac instanceof p))
      af.vJ().a((p)paramac);
  }

  public final Bitmap aC(String paramString)
  {
    return c.a(paramString, false, -1);
  }

  public final Bitmap aD(String paramString)
  {
    if (this.bKE == null)
      this.bKE = af.vJ();
    return m.ec(paramString);
  }

  public final Bitmap i(String paramString, int paramInt1, int paramInt2)
  {
    return c.k(paramString, paramInt1, paramInt2);
  }

  public final Bitmap nx()
  {
    return this.bKD;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.a
 * JD-Core Version:    0.6.2
 */