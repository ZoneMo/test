package com.tencent.mm.ui.friend;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.db;

final class y
  implements db
{
  y(FMessageConversationUI paramFMessageConversationUI)
  {
  }

  public final void V(Object paramObject)
  {
    if (paramObject == null)
    {
      aa.e("MicroMsg.FMessageConversationUI", "onItemDel object null");
      return;
    }
    FMessageConversationUI.xl(paramObject.toString());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.y
 * JD-Core Version:    0.6.2
 */