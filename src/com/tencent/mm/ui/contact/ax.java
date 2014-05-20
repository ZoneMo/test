package com.tencent.mm.ui.contact;

import android.widget.ListView;
import com.tencent.mm.pluginsdk.ui.bi;
import com.tencent.mm.sdk.platformtools.aa;

final class ax
  implements bi
{
  ax(ChatroomContactUI paramChatroomContactUI)
  {
  }

  public final void co(boolean paramBoolean)
  {
    aa.d("MicroMsg.ChatroomContactUI", "visible " + paramBoolean);
    if (paramBoolean)
    {
      int i = ChatroomContactUI.a(this.gTl).getFirstVisiblePosition();
      aa.d("MicroMsg.ChatroomContactUI", "getFirstVisiblePosition  " + i);
      if (i > 0)
        ChatroomContactUI.a(this.gTl).post(new ay(this));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ax
 * JD-Core Version:    0.6.2
 */