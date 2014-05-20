package com.tencent.mm.ui.conversation;

import android.app.ProgressDialog;
import com.tencent.mm.model.ca;

final class bj
  implements ca
{
  bj(MainUI paramMainUI)
  {
  }

  public final void uW()
  {
    if (MainUI.w(this.gZI) != null)
    {
      MainUI.w(this.gZI).dismiss();
      MainUI.a(this.gZI, null);
    }
  }

  public final boolean uX()
  {
    return MainUI.v(this.gZI);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bj
 * JD-Core Version:    0.6.2
 */