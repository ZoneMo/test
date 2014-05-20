package com.tencent.mm.ui.base;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class bf
  implements AdapterView.OnItemClickListener
{
  bf(MMGridPaperGridView paramMMGridPaperGridView)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (MMGridPaperGridView.a(this.gzR) == null)
    {
      aa.w("MicroMsg.MMGridPaperGridView", "on item click, but main adapter is null");
      return;
    }
    MMGridPaperGridView.a(this.gzR);
    MMGridPaperGridView.b(this.gzR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bf
 * JD-Core Version:    0.6.2
 */