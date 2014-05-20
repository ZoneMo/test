package com.tencent.mm.ui.contact;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.db;

final class bc
  implements db
{
  bc(ChatroomContactUI paramChatroomContactUI)
  {
  }

  public final void V(Object paramObject)
  {
    if (paramObject == null)
    {
      aa.e("MicroMsg.ChatroomContactUI", "onItemDel object null");
      return;
    }
    ChatroomContactUI.wJ(paramObject.toString());
    ChatroomContactUI.b(this.gTl);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bc
 * JD-Core Version:    0.6.2
 */