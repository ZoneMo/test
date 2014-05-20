package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import com.tencent.mm.platformtools.s;
import com.tencent.mm.platformtools.t;
import com.tencent.mm.plugin.scanner.b;
import com.tencent.mm.plugin.scanner.b.n;
import com.tencent.mm.sdk.platformtools.al;
import java.io.IOException;

public final class ah
  implements s
{
  private n ecT;

  public ah(n paramn)
  {
    this.ecT = paramn;
  }

  public final String Fr()
  {
    return b.ZA().ai(this.ecT.field_thumburl, "@S");
  }

  public final String Fs()
  {
    if (this.ecT == null)
      return "";
    return this.ecT.field_thumburl;
  }

  public final String Ft()
  {
    if (this.ecT == null)
      return "";
    return this.ecT.field_thumburl;
  }

  public final String Fu()
  {
    if (this.ecT == null)
      return "";
    return this.ecT.field_thumburl;
  }

  public final boolean Fv()
  {
    return false;
  }

  public final boolean Fw()
  {
    return false;
  }

  public final Bitmap Fx()
  {
    if (al.getContext() == null)
      return null;
    return BitmapFactory.decodeResource(al.getContext().getResources(), com.tencent.mm.h.agm);
  }

  public final Bitmap a(Bitmap paramBitmap, t paramt)
  {
    if (t.cGw == paramt);
    try
    {
      com.tencent.mm.sdk.platformtools.h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, Fr(), false);
      return paramBitmap;
    }
    catch (IOException localIOException)
    {
    }
    return paramBitmap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ah
 * JD-Core Version:    0.6.2
 */