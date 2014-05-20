package com.tencent.mm.plugin.backup.ui;

import com.tencent.mm.plugin.backup.model.d;

final class bg
  implements Runnable
{
  bg(BakChatUploadingUI paramBakChatUploadingUI)
  {
  }

  public final void run()
  {
    d.a(new bh(this), 100);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bg
 * JD-Core Version:    0.6.2
 */