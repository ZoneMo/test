package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.sdk.platformtools.ay;

final class co
  implements AdapterView.OnItemClickListener
{
  co(ImageGalleryUI paramImageGalleryUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((ImageGalleryUI.d(this.hkn) == null) || (ImageGalleryUI.d(this.hkn).azG()))
    {
      ImageGalleryUI.a(this.hkn, new ay(new cp(this, paramInt), false));
      ImageGalleryUI.d(this.hkn).bO(350L);
      return;
    }
    ImageGalleryUI.d(this.hkn).azn();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.co
 * JD-Core Version:    0.6.2
 */