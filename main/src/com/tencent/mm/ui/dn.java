package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.m.c;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import java.io.IOException;
import java.util.Map;

final class dn extends BaseAdapter
{
  private Bitmap ekS;

  private dn(dm paramdm)
  {
  }

  private View e(ViewGroup paramViewGroup)
  {
    View localView1 = dm.d(this.goA).inflate(2130903684, paramViewGroup, false);
    String str1 = v.th();
    ImageView localImageView = (ImageView)localView1.findViewById(2131362905);
    Bitmap localBitmap = c.a(str1, false, -1);
    if (localBitmap != null)
      localImageView.setImageBitmap(localBitmap);
    while (true)
    {
      View localView2 = localView1.findViewById(2131363657);
      TextView localTextView1 = (TextView)localView1.findViewById(2131362002);
      String str2 = v.ti();
      if (au.hX(str2))
        str2 = v.th();
      if (!i.tD(str2))
      {
        localTextView1.setVisibility(0);
        localView2.setVisibility(0);
        localTextView1.setText(str2);
        TextView localTextView2 = (TextView)localView1.findViewById(2131363656);
        String str3 = (String)be.uz().sr().get(4);
        if ((str3 != null) && (str3.length() > 0))
          localTextView2.setText(com.tencent.mm.ao.b.e(dm.e(this.goA), str3, (int)localTextView2.getTextSize()));
        return localView1;
        if (this.ekS != null);
      }
      try
      {
        this.ekS = h.a(dm.e(this.goA).getAssets().open("avatar/default_nor_avatar.png"), a.getDensity(null));
        label211: localImageView.setImageBitmap(this.ekS);
        continue;
        localTextView1.setVisibility(8);
        localView2.setVisibility(8);
      }
      catch (IOException localIOException)
      {
        break label211;
      }
    }
  }

  public final int getCount()
  {
    return dm.a(this.goA);
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt == dm.b(this.goA))
      return e(paramViewGroup);
    do localdo = (do)dm.c(this.goA).get(Integer.valueOf(paramInt));
    View localView1 = dm.d(this.goA).inflate(2130903535, paramViewGroup, false);
    ((TextView)localView1.findViewById(2131361861)).setText(localdo.title);
    ImageView localImageView = (ImageView)localView1.findViewById(2131361860);
    View localView2;
    TextView localTextView;
    View localView3;
    if (localdo.icon > 0)
    {
      localImageView.setVisibility(0);
      localImageView.setImageResource(((do)dm.c(this.goA).get(Integer.valueOf(paramInt))).icon);
      localView2 = localView1.findViewById(2131362577);
      localTextView = (TextView)localView1.findViewById(2131363253);
      localView3 = localView1.findViewById(2131363252);
      if (!localdo.goz)
        break label199;
      localView2.setVisibility(0);
      label169: if (paramInt != -1 + getCount())
        break label300;
      localView1.setBackgroundResource(2130839489);
    }
    while (true)
    {
      return localView1;
      localImageView.setVisibility(8);
      break;
      label199: if (localdo.goC > 0)
      {
        localTextView.setVisibility(0);
        if (localdo.goC > 99)
        {
          localTextView.setText(2131167869);
          break label169;
        }
        localTextView.setText(localdo.goC);
        break label169;
      }
      if (localdo.goB)
      {
        localView3.setVisibility(0);
        break label169;
      }
      localView2.setVisibility(8);
      localTextView.setVisibility(8);
      localView3.setVisibility(8);
      break label169;
      label300: localView1.setBackgroundResource(2130839488);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dn
 * JD-Core Version:    0.6.2
 */