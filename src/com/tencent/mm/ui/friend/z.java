package com.tencent.mm.ui.friend;

import com.tencent.mm.ui.bd;

final class z
  implements bd
{
  z(FMessageConversationUI paramFMessageConversationUI)
  {
  }

  public final void FW()
  {
    if (FMessageConversationUI.b(this.hbe).getCount() >= 0)
    {
      this.hbe.l(0, true);
      return;
    }
    this.hbe.l(0, false);
  }

  public final void FX()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.z
 * JD-Core Version:    0.6.2
 */