package com.tencent.mm.ui.transmit;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.pluginsdk.model.app.ReportUtil;

final class x
  implements MenuItem.OnMenuItemClickListener
{
  x(SelectConversationUI paramSelectConversationUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hrR.SM();
    if (SelectConversationUI.h(this.hrR) != null)
      ReportUtil.a(this.hrR, SelectConversationUI.h(this.hrR));
    this.hrR.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.x
 * JD-Core Version:    0.6.2
 */