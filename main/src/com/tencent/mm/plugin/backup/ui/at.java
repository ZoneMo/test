package com.tencent.mm.plugin.backup.ui;

import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.tools.ez;

final class at
  implements ez
{
  at(BakChatUploadSelectUI paramBakChatUploadSelectUI)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
  }

  public final void FV()
  {
  }

  public final void ig(String paramString)
  {
    String str = au.hR(paramString);
    if ((str == null) || (str.equals("")))
      this.cNp.l(1, true);
    while (true)
    {
      BakChatUploadSelectUI.a(this.cNp).iD(str);
      return;
      this.cNp.l(1, false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.at
 * JD-Core Version:    0.6.2
 */