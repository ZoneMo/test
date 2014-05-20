package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.model.r;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import java.util.List;

final class cp extends BaseAdapter
{
  public cp(GroupCardSelectUI paramGroupCardSelectUI)
  {
  }

  public final int getCount()
  {
    return GroupCardSelectUI.d(this.gUp).size();
  }

  public final Object getItem(int paramInt)
  {
    return GroupCardSelectUI.d(this.gUp).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    i locali = (i)GroupCardSelectUI.d(this.gUp).get(paramInt);
    cq localcq1;
    if (paramView == null)
    {
      localcq1 = new cq(this.gUp);
      paramView = View.inflate(this.gUp, 2130903359, null);
      localcq1.erL = ((TextView)paramView.findViewById(2131362852));
      localcq1.gUq = ((TextView)paramView.findViewById(2131362851));
      localcq1.cqS = ((ImageView)paramView.findViewById(2131362850));
      paramView.setTag(localcq1);
    }
    for (cq localcq2 = localcq1; ; localcq2 = (cq)paramView.getTag())
    {
      c.a(localcq2.cqS, locali.getUsername());
      TextView localTextView = localcq2.gUq;
      localTextView.setText(b.e(this.gUp, w.cu(locali.getUsername()), (int)localcq2.gUq.getTextSize()));
      localcq2.erL.setText("(" + r.ci(locali.getUsername()) + ")");
      return paramView;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cp
 * JD-Core Version:    0.6.2
 */