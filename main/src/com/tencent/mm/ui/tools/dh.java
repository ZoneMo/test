package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemLongClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.by;
import java.util.Iterator;
import java.util.List;

final class dh
  implements AdapterView.OnItemLongClickListener
{
  dh(dg paramdg, View.OnCreateContextMenuListener paramOnCreateContextMenuListener)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    dg.a(this.hlp).clear();
    aa.v("MicroMsg.MMSubMenuHelper", "registerForContextMenu AbsListView long click");
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = new AdapterView.AdapterContextMenuInfo(paramView, paramInt, paramLong);
    this.hlo.onCreateContextMenu(dg.a(this.hlp), paramView, localAdapterContextMenuInfo);
    Iterator localIterator = dg.a(this.hlp).aHf().iterator();
    while (localIterator.hasNext())
      ((by)localIterator.next()).a(localAdapterContextMenuInfo);
    this.hlp.aNy();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dh
 * JD-Core Version:    0.6.2
 */