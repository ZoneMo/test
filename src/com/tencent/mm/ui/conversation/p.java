package com.tencent.mm.ui.conversation;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.db;
import com.tencent.mm.z.i;

final class p
  implements db
{
  p(BizConversationUI paramBizConversationUI)
  {
  }

  public final void V(Object paramObject)
  {
    if (paramObject == null)
    {
      aa.e("MicroMsg.BizConversationUI", "onItemDel object null");
      return;
    }
    String str = paramObject.toString();
    BizConversationUI.b(this.gXS, str);
    be.uz().sx().tX(str);
    be.uA().d(new i(5));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.p
 * JD-Core Version:    0.6.2
 */