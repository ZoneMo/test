package com.tencent.mm.ui.gallery;

import android.content.res.Resources;
import com.tencent.mm.pluginsdk.ac;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.ui.base.h;

final class e
  implements r
{
  e(GestureGalleryUI paramGestureGalleryUI, String paramString)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (paramBoolean)
    {
      if (aq.apx() != null)
      {
        aq.apx().ap(this.cGX, paramString);
        aq.apx().afA();
      }
      h.an(this.hcy, this.hcy.getResources().getString(2131167783));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.gallery.e
 * JD-Core Version:    0.6.2
 */