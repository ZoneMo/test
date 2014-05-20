package com.tencent.mm.pluginsdk.ui.simley;

import com.tencent.mm.sdk.e.al;

final class d
  implements al
{
  d(b paramb)
  {
  }

  public final void ca(String paramString)
  {
    if (this.fsN.VERSION < VPSmileyPanel.VERSION)
      this.fsN.VERSION = VPSmileyPanel.VERSION;
    do
    {
      return;
      if (paramString.equals("create_emoji_info_notify"))
      {
        this.fsN.clear();
        b localb2 = this.fsN;
        localb2.VERSION = (1 + localb2.VERSION);
        return;
      }
    }
    while (!paramString.equals("delete_emoji_info_notify"));
    this.fsN.clear();
    b localb1 = this.fsN;
    localb1.VERSION = (1 + localb1.VERSION);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.simley.d
 * JD-Core Version:    0.6.2
 */