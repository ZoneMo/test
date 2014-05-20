package com.tencent.mm.ui.gallery;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.tencent.mm.model.y;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

final class f
  implements AdapterView.OnItemSelectedListener
{
  f(GestureGalleryUI paramGestureGalleryUI)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    GestureGalleryUI.a(this.hcy, paramInt);
    this.hcy.vT(1 + GestureGalleryUI.b(this.hcy) + " / " + GestureGalleryUI.c(this.hcy).size());
    aa.d("MicroMsg.GestureGalleryUI", "pos:" + paramInt);
    GestureGalleryUI.b(this.hcy, GestureGalleryUI.e(this.hcy).j((String)GestureGalleryUI.c(this.hcy).get(paramInt), GestureGalleryUI.d(this.hcy), paramInt));
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.gallery.f
 * JD-Core Version:    0.6.2
 */