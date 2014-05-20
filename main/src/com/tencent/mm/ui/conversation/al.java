package com.tencent.mm.ui.conversation;

import android.widget.ListView;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.k;

final class al
  implements k
{
  al(MainUI paramMainUI)
  {
  }

  public final void FW()
  {
    MainUI.l(this.gZI);
    if (MainUI.b(this.gZI) != null)
      MainUI.b(this.gZI).aLy();
    MainUI.m(this.gZI).post(new am(this));
  }

  public final void FX()
  {
    m.dZN.hx(12);
    MainUI.k(this.gZI);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.al
 * JD-Core Version:    0.6.2
 */