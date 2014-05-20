package com.tencent.mm.ui.contact;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.a;
import com.tencent.mm.ui.tools.dg;
import com.tencent.mm.ui.voicesearch.j;

final class af
  implements AdapterView.OnItemLongClickListener
{
  af(m paramm)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    aa.d("MicroMsg.AddressUI", "onItemLongClick, targetview is SearchBar::ListView, pos = " + paramInt);
    if (paramInt < m.c(this.gSV).getHeaderViewsCount())
      aa.w("MicroMsg.AddressUI", "on item long click, but match header view");
    String str;
    do
    {
      do
        return true;
      while ((m.d(this.gSV) != null) && (m.d(this.gSV).aPm()));
      str = ((a)m.a(this.gSV).getItem(paramInt - m.c(this.gSV).getHeaderViewsCount())).getUsername();
    }
    while ((w.cT(str)) || (w.cU(str)));
    m.b(this.gSV, str);
    m.g(this.gSV).a(paramView, paramInt, paramLong, this.gSV, m.f(this.gSV));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.af
 * JD-Core Version:    0.6.2
 */