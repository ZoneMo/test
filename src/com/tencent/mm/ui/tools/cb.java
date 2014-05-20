package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

final class cb
  implements Runnable
{
  cb(ImageGalleryGridUI paramImageGalleryGridUI)
  {
  }

  public final void run()
  {
    if (ImageGalleryGridUI.b(this.hjY) == null);
    View localView;
    do
    {
      return;
      ImageGalleryGridUI.b(this.hjY).setImageDrawable(null);
      ImageGalleryGridUI.c(this.hjY).removeView(ImageGalleryGridUI.b(this.hjY));
      localView = (View)ImageGalleryGridUI.d(this.hjY).get();
    }
    while (localView == null);
    localView.setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cb
 * JD-Core Version:    0.6.2
 */