package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MultiTouchImageView;

final class cq
  implements AdapterView.OnItemSelectedListener
{
  cq(ImageGalleryUI paramImageGalleryUI)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    View localView;
    if ((paramView instanceof LinearLayout))
    {
      localView = paramView.findViewById(2131361818);
      if (localView != null);
    }
    else
    {
      localView = paramView;
    }
    if ((localView instanceof MultiTouchImageView))
      ((MultiTouchImageView)localView).aHE();
    if (ImageGalleryUI.b(this.hkn) != null)
    {
      int i = ImageGalleryUI.b(this.hkn).getCount();
      this.hkn.vT(paramInt + 1 + " / " + i);
    }
    while (true)
    {
      aa.d("MicroMsg.ImageGalleryUI", "onItemSelected, pos = " + paramInt);
      if (!ImageGalleryUI.f(this.hkn))
        break;
      this.hkn.g(true, paramInt);
      ImageGalleryUI.g(this.hkn);
      return;
      aa.e("MicroMsg.ImageGalleryUI", "[arthurdan.ImageGallery] Notice!!! adapter is null");
    }
    ImageGalleryUI.a(this.hkn, false);
    this.hkn.g(ImageGalleryUI.e(this.hkn), paramInt);
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cq
 * JD-Core Version:    0.6.2
 */