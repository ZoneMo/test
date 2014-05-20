package com.tencent.mm.ui.applet;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Handler;

@SuppressLint({"HandlerLeak"})
public final class k extends n
{
  private Bitmap bitmap;
  private String gxt;
  private final Handler gxu = new l(this);

  public k(String paramString)
  {
    this.gxt = paramString;
  }

  public final void aFM()
  {
    this.bitmap = null;
    m localm = new m(this, (byte)0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.gxt;
    localm.execute(arrayOfString);
  }

  public final void d(SecurityImage paramSecurityImage)
  {
    this.gxw = paramSecurityImage;
  }

  protected final void onStart()
  {
    aFM();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.k
 * JD-Core Version:    0.6.2
 */