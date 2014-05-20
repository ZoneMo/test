package com.tencent.mm.ui.setting;

import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.backup.ui.BakChatUI;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.br;

final class bb
  implements br
{
  bb(SettingsAboutSystemUI paramSettingsAboutSystemUI)
  {
  }

  public final void b(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 10000)
      be.uz().sr().set(68416, Integer.valueOf(BakChatUI.cMY));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bb
 * JD-Core Version:    0.6.2
 */