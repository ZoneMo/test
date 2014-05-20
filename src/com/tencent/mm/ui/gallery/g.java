package com.tencent.mm.ui.gallery;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import com.tencent.mm.an.a;
import com.tencent.mm.model.y;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.platformtools.b;
import com.tencent.mm.platformtools.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MultiTouchImageView;
import java.util.List;

final class g extends BaseAdapter
{
  public g(GestureGalleryUI paramGestureGalleryUI)
  {
  }

  public final int getCount()
  {
    aa.d("MicroMsg.GestureGalleryUI", "lstpicurl:" + GestureGalleryUI.c(this.hcy).size());
    return GestureGalleryUI.c(this.hcy).size();
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    h localh;
    if (paramView == null)
    {
      localh = new h(this);
      paramView = View.inflate(this.hcy, 2130903617, null);
      localh.dqr = ((ProgressBar)paramView.findViewById(2131362877));
      localh.cXH = ((ImageView)paramView.findViewById(2131361818));
      paramView.setTag(localh);
    }
    Bitmap localBitmap;
    while (true)
    {
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      String str = GestureGalleryUI.e(this.hcy).j((String)GestureGalleryUI.c(this.hcy).get(paramInt), GestureGalleryUI.d(this.hcy), paramInt);
      if (au.hX(str))
        break label259;
      localh.dqr.setVisibility(8);
      localBitmap = b.e(str, a.getDensity(this.hcy.aal()));
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        if (!q.Fq())
          break;
        localh.cXH.setVisibility(8);
        paramView = new MultiTouchImageView(this.hcy, localBitmap.getWidth(), localBitmap.getHeight());
        paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
        paramView.setImageBitmap(localBitmap);
      }
      return paramView;
      localh = (h)paramView.getTag();
    }
    localh.cXH.setImageBitmap(localBitmap);
    localh.cXH.setVisibility(0);
    localh.cXH.setScaleType(ImageView.ScaleType.MATRIX);
    return paramView;
    label259: localh.dqr.setVisibility(0);
    localh.cXH.setVisibility(8);
    return paramView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.gallery.g
 * JD-Core Version:    0.6.2
 */