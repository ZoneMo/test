package com.tencent.mm.ui.contact.profile;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import com.tencent.mm.platformtools.v;
import com.tencent.mm.platformtools.w;

final class t extends BitmapDrawable
  implements w
{
  private String url;

  public t(Resources paramResources, String paramString)
  {
  }

  public final void draw(Canvas paramCanvas)
  {
    Bitmap localBitmap = v.a(new u(this));
    if ((localBitmap == null) || (localBitmap.isRecycled()))
      localBitmap = null;
    Rect localRect = getBounds();
    if (localBitmap != null)
      paramCanvas.drawBitmap(localBitmap, null, localRect, null);
  }

  public final void i(String paramString, Bitmap paramBitmap)
  {
    if (this.url.equals(paramString))
      invalidateSelf();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.t
 * JD-Core Version:    0.6.2
 */