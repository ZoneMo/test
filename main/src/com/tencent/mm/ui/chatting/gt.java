package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ak.a;

final class gt
  implements MenuItem.OnMenuItemClickListener
{
  gt(ChattingUI paramChattingUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    new Intent().putExtra("composeType", 1);
    a.l(this.gPG, "qqmail", ".ui.ComposeUI");
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gt
 * JD-Core Version:    0.6.2
 */