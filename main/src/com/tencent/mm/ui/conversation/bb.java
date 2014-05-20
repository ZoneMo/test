package com.tencent.mm.ui.conversation;

import android.widget.ListView;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class bb extends g
{
  private final long gZM = 3000L;
  private long gZN = 0L;
  private int gZO = -1;

  bb(MainUI paramMainUI)
  {
  }

  public final boolean a(e parame)
  {
    aa.d("MicroMsg.MainUI", "trigger double tab");
    MainUI.m(this.gZI).postDelayed(new bc(this), 100L);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bb
 * JD-Core Version:    0.6.2
 */