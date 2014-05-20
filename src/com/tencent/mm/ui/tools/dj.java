package com.tencent.mm.ui.tools;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.ca;
import com.tencent.mm.ui.base.cb;

final class dj extends BaseAdapter
{
  private dj(dg paramdg)
  {
  }

  public final int getCount()
  {
    return dg.a(this.hlp).size();
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
    dk localdk1;
    MenuItem localMenuItem;
    if (paramView == null)
    {
      paramView = dg.b(this.hlp).inflate(k.aWz, paramViewGroup, false);
      dk localdk2 = new dk(this, (byte)0);
      localdk2.dYB = ((TextView)paramView.findViewById(i.title));
      localdk2.dZa = ((ImageView)paramView.findViewById(i.icon));
      paramView.setTag(localdk2);
      localdk1 = localdk2;
      localMenuItem = dg.a(this.hlp).getItem(paramInt);
      localdk1.dYB.setText(localMenuItem.getTitle());
      Drawable localDrawable = dg.a(this.hlp).getItem(paramInt).getIcon();
      if (localDrawable == null)
        break label184;
      localdk1.dZa.setVisibility(0);
      localdk1.dZa.setImageDrawable(localDrawable);
    }
    while (true)
    {
      if (dg.d(this.hlp) != null)
        dg.d(this.hlp).a(localdk1.dYB, localMenuItem);
      return paramView;
      localdk1 = (dk)paramView.getTag();
      break;
      label184: if (dg.c(this.hlp) != null)
      {
        localdk1.dZa.setVisibility(0);
        dg.c(this.hlp).a(localdk1.dZa, localMenuItem);
      }
      else
      {
        localdk1.dZa.setVisibility(8);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dj
 * JD-Core Version:    0.6.2
 */