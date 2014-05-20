package com.tencent.mm.ui.transmit;

import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.contact.db;
import com.tencent.mm.ui.tools.ez;

final class p
  implements ez
{
  p(MulSelectConversationUI paramMulSelectConversationUI)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
    MulSelectConversationUI.a(this.hrJ, false);
    MulSelectConversationUI.c(this.hrJ).dP(false);
    MulSelectConversationUI.e(this.hrJ);
  }

  public final void FV()
  {
  }

  public final void ig(String paramString)
  {
    aa.e("MicroMsg.MulSelectConversationUI", "onSearchBarChange  %s", new Object[] { paramString });
    String str = au.hR(paramString);
    if (au.hX(str));
    do
    {
      return;
      MulSelectConversationUI.c(this.hrJ).dP(true);
      MulSelectConversationUI.c(this.hrJ).a("@micromsg.no.verify.biz.qq.com", str, 1, str);
    }
    while (MulSelectConversationUI.d(this.hrJ));
    MulSelectConversationUI.a(this.hrJ, true);
    MulSelectConversationUI.e(this.hrJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.p
 * JD-Core Version:    0.6.2
 */