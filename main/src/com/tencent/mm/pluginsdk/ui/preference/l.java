package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.text.ClipboardManager;
import com.tencent.mm.ui.base.v;

final class l
  implements v
{
  l(k paramk)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    ((ClipboardManager)this.frG.frE.getContext().getSystemService("clipboard")).setText(this.frG.frF.chj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.l
 * JD-Core Version:    0.6.2
 */