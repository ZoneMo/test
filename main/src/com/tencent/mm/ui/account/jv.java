package com.tencent.mm.ui.account;

import android.widget.EditText;

final class jv
  implements Runnable
{
  jv(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void run()
  {
    RegSetInfoUI.a(this.gtZ).clearFocus();
    RegSetInfoUI.a(this.gtZ).requestFocus();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jv
 * JD-Core Version:    0.6.2
 */