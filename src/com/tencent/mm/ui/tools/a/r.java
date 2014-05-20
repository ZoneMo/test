package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

final class r extends a
{
  g hqk;

  r(ImageView paramImageView, ab paramab, boolean paramBoolean1, boolean paramBoolean2, int paramInt, Drawable paramDrawable, String paramString, g paramg)
  {
    super(paramImageView, paramab, paramBoolean1, paramBoolean2, paramInt, paramDrawable, paramString);
    this.hqk = paramg;
  }

  public final void a(Bitmap paramBitmap, s params)
  {
    if (paramBitmap == null)
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    ImageView localImageView = (ImageView)this.hpO.get();
    if (localImageView == null);
    do
    {
      return;
      Context localContext = u.aOH().context;
      boolean bool = u.aOH().hqB;
      z.a(localImageView, localContext, paramBitmap, params, this.hpP, bool);
    }
    while (this.hqk == null);
    this.hqk.p(paramBitmap);
  }

  final void cancel()
  {
    super.cancel();
    if (this.hqk != null)
      this.hqk = null;
  }

  public final void error()
  {
    ImageView localImageView = (ImageView)this.hpO.get();
    if (localImageView == null);
    while (true)
    {
      return;
      if (this.hpQ != 0)
        localImageView.setImageResource(this.hpQ);
      while (this.hqk != null)
      {
        return;
        if (this.hpR != null)
          localImageView.setImageDrawable(this.hpR);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.r
 * JD-Core Version:    0.6.2
 */