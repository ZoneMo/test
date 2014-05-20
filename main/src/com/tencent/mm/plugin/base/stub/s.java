package com.tencent.mm.plugin.base.stub;

import android.content.Intent;
import com.tencent.mm.model.cd;
import com.tencent.mm.network.r;

final class s
  implements cd
{
  s(UIEntryStub paramUIEntryStub)
  {
  }

  public final void a(r paramr)
  {
    if (paramr == null)
    {
      this.cOu.finish();
      return;
    }
    UIEntryStub.a(this.cOu, UIEntryStub.a(this.cOu).getExtras());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.s
 * JD-Core Version:    0.6.2
 */