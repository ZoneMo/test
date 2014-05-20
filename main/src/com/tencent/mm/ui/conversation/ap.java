package com.tencent.mm.ui.conversation;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.db;

final class ap
  implements db
{
  ap(MainUI paramMainUI)
  {
  }

  public final void V(Object paramObject)
  {
    if (paramObject == null)
    {
      aa.e("MicroMsg.MainUI", "onItemDel object null");
      return;
    }
    MainUI.a(this.gZI, paramObject.toString());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ap
 * JD-Core Version:    0.6.2
 */