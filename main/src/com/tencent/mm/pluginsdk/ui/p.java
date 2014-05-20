package com.tencent.mm.pluginsdk.ui;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.MultiTouchImageView;

final class p extends BaseAdapter
{
  private p(GetHdHeadImageGalleryView paramGetHdHeadImageGalleryView)
  {
  }

  public final int getCount()
  {
    return 1;
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
    q localq1;
    if (paramView == null)
    {
      localq1 = new q(this);
      paramView = View.inflate(this.fkW.getContext(), k.bbj, null);
      localq1.dqr = ((ProgressBar)paramView.findViewById(i.avR));
      localq1.cXH = ((ImageView)paramView.findViewById(i.avQ));
      localq1.fkX = paramView.findViewById(i.avS);
      paramView.setTag(localq1);
    }
    for (q localq2 = localq1; ; localq2 = (q)paramView.getTag())
    {
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      if (GetHdHeadImageGalleryView.d(this.fkW) == null)
        break;
      localq2.dqr.setVisibility(8);
      localq2.cXH.setVisibility(8);
      localq2.fkX.setVisibility(8);
      MultiTouchImageView localMultiTouchImageView = new MultiTouchImageView(this.fkW.getContext(), GetHdHeadImageGalleryView.d(this.fkW).getWidth(), GetHdHeadImageGalleryView.d(this.fkW).getHeight());
      localMultiTouchImageView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      localMultiTouchImageView.setImageBitmap(GetHdHeadImageGalleryView.d(this.fkW));
      localMultiTouchImageView.aHC();
      localMultiTouchImageView.aHD();
      return localMultiTouchImageView;
    }
    localq2.dqr.setVisibility(0);
    localq2.fkX.setVisibility(0);
    if (GetHdHeadImageGalleryView.e(this.fkW) != null)
    {
      localq2.cXH.setVisibility(0);
      localq2.cXH.setImageBitmap(GetHdHeadImageGalleryView.e(this.fkW));
      return paramView;
    }
    localq2.cXH.setVisibility(8);
    return paramView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.p
 * JD-Core Version:    0.6.2
 */