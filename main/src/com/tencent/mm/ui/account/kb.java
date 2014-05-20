package com.tencent.mm.ui.account;

import android.widget.EditText;

final class kb
  implements Runnable
{
  kb(ka paramka)
  {
  }

  public final void run()
  {
    RegSetInfoUI.a(this.gui.gtZ).clearFocus();
    RegSetInfoUI.a(this.gui.gtZ).requestFocus();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kb
 * JD-Core Version:    0.6.2
 */