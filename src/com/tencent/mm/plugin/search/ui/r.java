package com.tencent.mm.plugin.search.ui;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.p.u;
import com.tencent.mm.p.w;

final class r
  implements w
{
  ImageView cMS;
  TextView cPP;
  TextView dle;
  q ejt;
  TextView eju;

  public final void eP(String paramString)
  {
    if (this.ejt == null);
    Bitmap localBitmap;
    do
    {
      return;
      localBitmap = u.b(paramString, this.ejt.cnh, 0);
    }
    while (!paramString.equals(this.ejt.username));
    this.cMS.post(new s(this, localBitmap));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.r
 * JD-Core Version:    0.6.2
 */