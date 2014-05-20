package com.tencent.mm.ui.account;

import android.widget.EditText;
import android.widget.ImageView;

final class js
  implements Runnable
{
  js(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void run()
  {
    RegSetInfoUI.i(this.gtZ).requestFocus();
    RegSetInfoUI.b(this.gtZ).clearFocus();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.js
 * JD-Core Version:    0.6.2
 */