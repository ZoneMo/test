package com.tencent.mm.ui.tools;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.ca;
import com.tencent.mm.ui.base.cb;

final class dm extends BaseAdapter
{
  private dm(dl paramdl)
  {
  }

  public final int getCount()
  {
    if (dl.a(this.hls))
      return 1 + dl.b(this.hls).size();
    return dl.b(this.hls).size();
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final int getItemViewType(int paramInt)
  {
    int i = 1;
    if ((dl.a(this.hls)) && (paramInt == 0))
      i = 0;
    return i;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((dl.a(this.hls)) && (paramInt == 0))
    {
      dn localdn4;
      if (paramView == null)
      {
        paramView = dl.c(this.hls).inflate(k.aXk, paramViewGroup, false);
        localdn4 = new dn(this, (byte)0);
        localdn4.dYB = ((TextView)paramView.findViewById(i.title));
        localdn4.dZa = ((ImageView)paramView.findViewById(i.icon));
        paramView.setTag(localdn4);
      }
      for (dn localdn3 = localdn4; ; localdn3 = (dn)paramView.getTag())
      {
        localdn3.dYB.setText(dl.f(this.hls));
        return paramView;
      }
    }
    if (dl.a(this.hls))
      paramInt--;
    dn localdn1;
    MenuItem localMenuItem;
    if (paramView == null)
    {
      paramView = dl.c(this.hls).inflate(k.aXj, paramViewGroup, false);
      dn localdn2 = new dn(this, (byte)0);
      localdn2.dYB = ((TextView)paramView.findViewById(i.title));
      localdn2.dZa = ((ImageView)paramView.findViewById(i.icon));
      localdn2.dmp = paramView.findViewById(i.aHM);
      paramView.setTag(localdn2);
      localdn1 = localdn2;
      localMenuItem = dl.b(this.hls).getItem(paramInt);
      localdn1.dYB.setText(localMenuItem.getTitle());
      if (localMenuItem.getIcon() == null)
        break label342;
      localdn1.dZa.setVisibility(0);
      localdn1.dZa.setImageDrawable(localMenuItem.getIcon());
    }
    while (true)
    {
      if (dl.e(this.hls) != null)
        dl.e(this.hls).a(localdn1.dYB, localMenuItem);
      if (paramInt != -1 + dl.b(this.hls).size())
        break label396;
      localdn1.dmp.setBackgroundResource(h.ajb);
      return paramView;
      localdn1 = (dn)paramView.getTag();
      break;
      label342: if (dl.d(this.hls) != null)
      {
        localdn1.dZa.setVisibility(0);
        dl.d(this.hls).a(localdn1.dZa, localMenuItem);
      }
      else
      {
        localdn1.dZa.setVisibility(8);
      }
    }
    label396: localdn1.dmp.setBackgroundResource(h.aja);
    return paramView;
  }

  public final int getViewTypeCount()
  {
    if (dl.a(this.hls))
      return 2;
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dm
 * JD-Core Version:    0.6.2
 */