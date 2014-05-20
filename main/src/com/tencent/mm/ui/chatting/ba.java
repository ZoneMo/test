package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

final class ba
  implements Runnable
{
  ba(az paramaz)
  {
  }

  public final void run()
  {
    if ((ChatMoreSelectUI.d(this.gLM.gLK) != null) && (ChatMoreSelectUI.d(this.gLM.gLK).isShowing()))
      ChatMoreSelectUI.d(this.gLM.gLK).dismiss();
    h.an(this.gLM.gLK.aal(), this.gLM.gLK.aal().getString(2131165732));
    Intent localIntent = new Intent(this.gLM.gLK.aal(), ChattingUI.class);
    localIntent.putExtra("Chat_User", this.gLM.gLL);
    localIntent.addFlags(268435456);
    this.gLM.gLK.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ba
 * JD-Core Version:    0.6.2
 */