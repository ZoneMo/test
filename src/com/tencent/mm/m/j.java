package com.tencent.mm.m;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

final class j
  implements bw
{
  Bitmap ckx = null;
  String username = null;

  public j(e parame, String paramString)
  {
    this.username = paramString;
  }

  public final boolean ve()
  {
    if (cj.hX(this.username));
    m localm;
    do
    {
      return false;
      localm = e.vL();
    }
    while (localm == null);
    String str = (String)m.ckC.get(this.username);
    Context localContext;
    if (!cj.hX(str))
    {
      af.wl();
      localContext = af.getContext();
      if (localContext == null);
    }
    try
    {
      localm.d(this.username, h.decodeStream(localContext.getAssets().open(str)));
      label83: this.ckx = localm.ee(this.username);
      return true;
    }
    catch (IOException localIOException)
    {
      break label83;
    }
  }

  public final boolean vf()
  {
    if (this.ckx == null)
    {
      e.a(this.cks, this.username);
      return false;
    }
    m localm = e.vL();
    if (localm != null)
      localm.c(this.username, this.ckx);
    e.e(this.cks).remove(this.username);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.j
 * JD-Core Version:    0.6.2
 */