package com.tencent.mm.ui.conversation;

import com.tencent.mm.model.am;

final class bv
  implements am
{
  bv(MainUI paramMainUI)
  {
  }

  public final void B(int paramInt1, int paramInt2)
  {
  }

  public final void onFinish()
  {
    MainUI.h(this.gZI);
  }

  public final void onPause()
  {
    MainUI.h(this.gZI);
  }

  public final void onResume()
  {
    MainUI.g(this.gZI);
    if (MainUI.b(this.gZI) != null)
      MainUI.b(this.gZI).notifyDataSetChanged();
  }

  public final void onStart()
  {
  }

  public final void onStop()
  {
    MainUI.h(this.gZI);
  }

  public final void pB()
  {
    MainUI.h(this.gZI);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bv
 * JD-Core Version:    0.6.2
 */