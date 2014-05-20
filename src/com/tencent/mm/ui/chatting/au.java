package com.tencent.mm.ui.chatting;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.p.h;
import java.util.List;

final class au extends BaseAdapter
{
  private au(aq paramaq)
  {
  }

  private h nx(int paramInt)
  {
    return (h)aq.b(this.gLC).cnH.get(paramInt);
  }

  public final int getCount()
  {
    return aq.a(this.gLC);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (TextView localTextView = (TextView)aq.c(this.gLC).inflate(2130903149, paramViewGroup, false); ; localTextView = (TextView)paramView)
    {
      h localh = nx(paramInt);
      localTextView.setTag(localh);
      localTextView.setText(b.e(aq.d(this.gLC), localh.name, -1));
      return localTextView;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.au
 * JD-Core Version:    0.6.2
 */