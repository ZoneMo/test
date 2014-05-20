package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;

final class jr
  implements Runnable
{
  jr(ChattingUI paramChattingUI)
  {
  }

  public final void run()
  {
    js localjs = new js(this);
    if (ChattingUI.j(this.gPG) != null)
      ChattingUI.j(this.gPG).setOnDragListener(localjs);
    if (this.gPG.dKO != null)
    {
      this.gPG.dKO.setOnDragListener(localjs);
      this.gPG.dKO.a(localjs);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jr
 * JD-Core Version:    0.6.2
 */