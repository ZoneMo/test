package com.tencent.mm.ui.transmit;

import com.tencent.mm.plugin.base.stub.r;
import com.tencent.mm.sdk.platformtools.aa;

final class y
  implements r
{
  y(SelectConversationUI paramSelectConversationUI)
  {
  }

  public final void ae(boolean paramBoolean)
  {
    boolean bool = this.hrR.isFinishing();
    aa.d("MicroMsg.SelectConversationUI", "onCheckEnd, isPass = " + paramBoolean + ", isFinishing = " + bool);
    if ((!paramBoolean) && (!bool))
      this.hrR.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.y
 * JD-Core Version:    0.6.2
 */