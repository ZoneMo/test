package com.tencent.mm.ui.chatting;

import android.text.TextUtils;
import com.tencent.mm.sdk.e.al;

final class ji
  implements al
{
  ji(ChattingUI paramChattingUI)
  {
  }

  public final void ca(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramString.equals("event_update_group")))
      ChattingUI.k(this.gPG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ji
 * JD-Core Version:    0.6.2
 */