package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import java.io.IOException;
import java.io.InputStream;

final class bo extends BaseAdapter
{
  private int dwl = 0;

  bo(FilterImageView paramFilterImageView)
  {
  }

  public final void db(int paramInt)
  {
    this.dwl = paramInt;
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    return FilterImageView.hiZ.length;
  }

  public final Object getItem(int paramInt)
  {
    return FilterImageView.hiZ[paramInt];
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    br localbr = (br)getItem(paramInt);
    bp localbp2;
    if ((paramView == null) || (!(paramView.getTag() instanceof bp)))
    {
      paramView = View.inflate(FilterImageView.b(this.hja), k.aUj, null);
      bp localbp1 = new bp(this);
      localbp1.cQf = ((TextView)paramView.findViewById(i.atw));
      localbp1.hjb = ((ImageView)paramView.findViewById(i.atv));
      paramView.setTag(localbp1);
      localbp2 = localbp1;
    }
    while (true)
    {
      localbp2.cQf.setText(localbr.hjh.getDisplayName());
      try
      {
        InputStream localInputStream = FilterImageView.b(this.hja).getAssets().open("filter/" + localbr.icon);
        localbp2.hjc = com.tencent.mm.sdk.platformtools.h.decodeStream(localInputStream);
        localInputStream.close();
        localbp2.hjb.setImageBitmap(localbp2.hjc);
        label168: paramView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        if (paramInt == this.dwl)
        {
          paramView.findViewById(i.atv).setBackgroundResource(com.tencent.mm.h.ada);
          return paramView;
          localbp2 = (bp)paramView.getTag();
          if (localbp2.hjc == null)
            continue;
          localbp2.hjc.recycle();
          continue;
        }
        paramView.findViewById(i.atv).setBackgroundResource(com.tencent.mm.h.adb);
        return paramView;
      }
      catch (IOException localIOException)
      {
        break label168;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bo
 * JD-Core Version:    0.6.2
 */