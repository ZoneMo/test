package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;

final class ce
  implements View.OnClickListener
{
  ce(ImageGalleryUI paramImageGalleryUI)
  {
  }

  public final void onClick(View paramView)
  {
    ImageGalleryUI.b(this.hkn).nX(ImageGalleryUI.a(this.hkn).getSelectedItemPosition());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ce
 * JD-Core Version:    0.6.2
 */