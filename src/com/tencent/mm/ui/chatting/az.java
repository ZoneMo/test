package com.tencent.mm.ui.chatting;

import android.app.Activity;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

final class az
  implements r
{
  az(ChatMoreSelectUI paramChatMoreSelectUI, String paramString)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    aa.e("MicroMsg.ChatMoreSelectUI", "on restran dialog return, result %B", arrayOfObject);
    if (!paramBoolean)
      return;
    ChatMoreSelectUI localChatMoreSelectUI = this.gLK;
    Activity localActivity = this.gLK.aal();
    this.gLK.getString(2131167675);
    ChatMoreSelectUI.a(localChatMoreSelectUI, h.a(localActivity, this.gLK.getString(2131165710), false, null));
    bh.a(this.gLK.aal(), this.gLL, new ba(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.az
 * JD-Core Version:    0.6.2
 */