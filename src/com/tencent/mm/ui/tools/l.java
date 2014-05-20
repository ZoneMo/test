package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class l
  implements AdapterView.OnItemClickListener
{
  l(BrowserChooseActivity paramBrowserChooseActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (BrowserChooseActivity.a(this.hhl) != null)
    {
      BrowserChooseActivity.a(this.hhl, BrowserChooseActivity.a(this.hhl).nV(paramInt));
      BrowserChooseActivity.a(this.hhl).notifyDataSetChanged();
      if ((BrowserChooseActivity.b(this.hhl) != null) && (BrowserChooseActivity.b(this.hhl).isShowing()))
      {
        if ((BrowserChooseActivity.c(this.hhl) == null) || (!BrowserChooseActivity.c(this.hhl).hhu) || ((BrowserChooseActivity.c(this.hhl).doL) && ((!BrowserChooseActivity.c(this.hhl).doL) || (BrowserChooseActivity.d(this.hhl)))))
          break label133;
        BrowserChooseActivity.b(this.hhl).en(false);
      }
    }
    return;
    label133: BrowserChooseActivity.b(this.hhl).en(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.l
 * JD-Core Version:    0.6.2
 */