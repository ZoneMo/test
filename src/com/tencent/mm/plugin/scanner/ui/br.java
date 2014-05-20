package com.tencent.mm.plugin.scanner.ui;

import android.content.Context;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class br
  implements AdapterView.OnItemClickListener
{
  br(SelectScanModePanel paramSelectScanModePanel)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    if ((paramAdapterView == null) || (SelectScanModePanel.e(this.efr) == null))
    {
      StringBuilder localStringBuilder1 = new StringBuilder("parent == null ? ");
      boolean bool2;
      StringBuilder localStringBuilder2;
      if (paramAdapterView == null)
      {
        bool2 = bool1;
        localStringBuilder2 = localStringBuilder1.append(bool2).append(", context == null ? ");
        if (SelectScanModePanel.e(this.efr) != null)
          break label82;
      }
      while (true)
      {
        aa.e("MicroMsg.scanner.SelectScanModePanel", bool1);
        return;
        bool2 = false;
        break;
        label82: bool1 = false;
      }
    }
    bo localbo = (bo)paramAdapterView.getAdapter().getItem(paramInt);
    if (localbo == null)
    {
      aa.e("MicroMsg.scanner.SelectScanModePanel", "clickItem == null");
      return;
    }
    ((bm)paramAdapterView.getAdapter()).hH(paramInt);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[bool1] = SelectScanModePanel.e(this.efr).getString(localbo.eeV);
    aa.e("MicroMsg.scanner.SelectScanModePanel", "position=[%s], clickItem=[%s]", arrayOfObject);
    if ((SelectScanModePanel.f(this.efr) != null) && (localbo != null))
      SelectScanModePanel.f(this.efr).hE(localbo.eeY);
    this.efr.hI(localbo.eeY);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.br
 * JD-Core Version:    0.6.2
 */