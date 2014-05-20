package com.tencent.mm.ui.account;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.ui.base.ce;

public final class fl
{
  public static PopupWindow a(Context paramContext, View paramView, String[] paramArrayOfString, AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    View localView1 = View.inflate(paramContext, k.aXN, null);
    HorizontalListView localHorizontalListView = (HorizontalListView)localView1.findViewById(i.aMx);
    a locala = new a(paramContext, paramArrayOfString);
    localHorizontalListView.setAdapter(locala);
    localHorizontalListView.setOnItemClickListener(paramOnItemClickListener);
    localHorizontalListView.setBackgroundResource(h.aix);
    ce localce = new ce(localView1);
    localce.setHeight(com.tencent.mm.an.a.fromDPToPix(paramContext, 120));
    int i = 0;
    int j = 0;
    while (i < locala.getCount())
    {
      View localView2 = locala.getView(i, null, localHorizontalListView);
      localView2.measure(0, 0);
      j += localView2.getMeasuredWidth();
      i++;
    }
    localce.setWidth(j + com.tencent.mm.an.a.fromDPToPix(paramContext, 20));
    localce.showAsDropDown(paramView, (paramView.getWidth() - (j + com.tencent.mm.an.a.fromDPToPix(paramContext, 20))) / 2, 0);
    return localce;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fl
 * JD-Core Version:    0.6.2
 */