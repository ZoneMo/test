package com.tencent.mm.ui.conversation;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class y
{
  private String bNl = null;
  private i cQI = null;
  private boolean cgf = false;
  private Integer gYz = null;

  public y(s params)
  {
  }

  public final i aLq()
  {
    if ((this.cgf) && (this.cQI == null))
      this.cQI = be.uz().su().tO(this.bNl);
    return this.cQI;
  }

  public final void uK(String paramString)
  {
    this.bNl = paramString;
    this.cQI = null;
    this.gYz = null;
    this.cgf = false;
    if (!au.hX(paramString))
      this.cgf = true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.y
 * JD-Core Version:    0.6.2
 */