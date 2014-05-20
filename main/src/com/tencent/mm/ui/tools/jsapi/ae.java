package com.tencent.mm.ui.tools.jsapi;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.tencent.mm.m.c;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.ui.base.ce;

final class ae
  implements Runnable
{
  ae(p paramp)
  {
  }

  public final void run()
  {
    ImageView localImageView = (ImageView)p.l(this.hpx).getContentView().findViewById(com.tencent.mm.i.apZ);
    if (localImageView != null)
    {
      Bitmap localBitmap = c.a(p.f(this.hpx).getUsername(), false, -1);
      if ((localBitmap != null) && (p.f(this.hpx).aAp()))
        localBitmap = h.a(localBitmap, false, localBitmap.getWidth() / 2);
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        localImageView.setImageBitmap(localBitmap);
        localImageView.setVisibility(0);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ae
 * JD-Core Version:    0.6.2
 */