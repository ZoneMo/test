package com.tencent.mm.ui.conversation;

import android.view.MenuItem;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.cd;

final class i
  implements cd
{
  i(BizConversationUI paramBizConversationUI)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return;
    case 1:
    }
    BizConversationUI.b(this.gXS, BizConversationUI.h(this.gXS));
    be.uz().sx().tX(BizConversationUI.h(this.gXS));
    be.uA().d(new com.tencent.mm.z.i(5));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.i
 * JD-Core Version:    0.6.2
 */