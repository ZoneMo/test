package com.tencent.mm.plugin.wallet.ui;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.platformtools.s;
import com.tencent.mm.platformtools.t;
import com.tencent.mm.plugin.wallet.d.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import java.io.File;
import java.io.IOException;

public final class ak
  implements s
{
  private String url;

  public ak(String paramString)
  {
    this.url = paramString;
  }

  public final String Fr()
  {
    return a.mS(this.url);
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
    return this.url;
  }

  public final boolean Fv()
  {
    return true;
  }

  public final boolean Fw()
  {
    return false;
  }

  public final Bitmap Fx()
  {
    return null;
  }

  public final Bitmap a(Bitmap paramBitmap, t paramt)
  {
    if (t.cGw == paramt);
    try
    {
      h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, a.mS(this.url), false);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramt.toString();
      aa.e("MicroMsg.WalletGetPicStrategy", "get bitmap, from %s", arrayOfObject);
      return paramBitmap;
    }
    catch (IOException localIOException1)
    {
      while (true)
        try
        {
          File localFile = new File(a.aoE());
          if (!localFile.exists())
            localFile.mkdir();
          aa.w("MicroMsg.WalletGetPicStrategy", " retry saving bitmap");
          h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, a.mS(this.url), false);
        }
        catch (IOException localIOException2)
        {
          aa.w("MicroMsg.WalletGetPicStrategy", "save bitmap fail");
        }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.ak
 * JD-Core Version:    0.6.2
 */