package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import com.tencent.mm.platformtools.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MultiTouchImageView;

final class fw extends BaseAdapter
{
  String imagePath;

  public final int getCount()
  {
    return 1;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Bitmap localBitmap = v.hN(this.imagePath);
    if (localBitmap == null)
    {
      aa.w("MicroMsg.ShowImageUI", "get image fail");
      if ((paramView == null) || ((paramView instanceof MultiTouchImageView)))
        paramView = View.inflate(paramViewGroup.getContext(), 2130903711, null);
      ((ImageView)paramView.findViewById(2131362591)).setImageResource(2130837976);
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      return paramView;
    }
    Context localContext = paramViewGroup.getContext();
    MultiTouchImageView localMultiTouchImageView;
    if ((paramView == null) || (!(paramView instanceof MultiTouchImageView)))
      localMultiTouchImageView = new MultiTouchImageView(localContext, localBitmap.getWidth(), localBitmap.getHeight());
    while (true)
    {
      localMultiTouchImageView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      localMultiTouchImageView.setImageBitmap(localBitmap);
      localMultiTouchImageView.aHD();
      return localMultiTouchImageView;
      localMultiTouchImageView = (MultiTouchImageView)paramView;
      localMultiTouchImageView.bk(localBitmap.getWidth(), localBitmap.getHeight());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fw
 * JD-Core Version:    0.6.2
 */