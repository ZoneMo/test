package com.tencent.mm.pluginsdk.ui.simley;

import android.text.TextUtils;
import com.tencent.mm.sdk.e.al;

final class c
  implements al
{
  c(b paramb)
  {
  }

  public final void ca(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.equals("event_update_group")))
    {
      if (this.fsN.VERSION < VPSmileyPanel.VERSION)
        this.fsN.VERSION = VPSmileyPanel.VERSION;
    }
    else
      return;
    b localb = this.fsN;
    localb.VERSION = (1 + localb.VERSION);
    this.fsN.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.c
 * JD-Core Version:    0.6.2
 */