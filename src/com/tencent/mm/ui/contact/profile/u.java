package com.tencent.mm.ui.contact.profile;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ak;
import com.tencent.mm.sdk.platformtools.h;
import java.io.IOException;

final class u
  implements s
{
  u(t paramt)
  {
  }

  public final String Fr()
  {
    return be.uz().sR() + ak.sC(t.a(this.gWf));
  }

  public final String Fs()
  {
    return t.a(this.gWf);
  }

  public final String Ft()
  {
    return t.a(this.gWf);
  }

  public final String Fu()
  {
    return t.a(this.gWf);
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
    return null;
  }

  public final Bitmap a(Bitmap paramBitmap, com.tencent.mm.platformtools.t paramt)
  {
    if (com.tencent.mm.platformtools.t.cGw == paramt);
    try
    {
      h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, Fr(), false);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramt.toString();
      aa.e("MicroMsg.ContactWidgetBizInfo", "get bitmap, from %s", arrayOfObject);
      return paramBitmap;
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.w("MicroMsg.ContactWidgetBizInfo", "save bitmap fail");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.u
 * JD-Core Version:    0.6.2
 */