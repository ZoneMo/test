package com.tencent.mm.ui.base;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class bg
  implements AdapterView.OnItemLongClickListener
{
  bg(MMGridPaperGridView paramMMGridPaperGridView)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
    {
      aa.w("MicroMsg.MMGridPaperGridView", "on item long click, but main adapter is null");
      return false;
    }
    MMGridPaperGridView.a(this.gzR);
    MMGridPaperGridView.b(this.gzR);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bg
 * JD-Core Version:    0.6.2
 */