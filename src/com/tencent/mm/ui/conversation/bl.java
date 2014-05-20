package com.tencent.mm.ui.conversation;

import android.app.ProgressDialog;

final class bl
  implements Runnable
{
  bl(MainUI paramMainUI, int paramInt)
  {
  }

  public final void run()
  {
    if (MainUI.w(this.gZI) != null)
      MainUI.w(this.gZI).setMessage(this.gZI.getString(2131167727) + this.cHX + "%");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bl
 * JD-Core Version:    0.6.2
 */