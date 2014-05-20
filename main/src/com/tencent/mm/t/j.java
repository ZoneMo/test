package com.tencent.mm.t;

import com.tencent.mm.model.au;
import com.tencent.mm.sdk.platformtools.cj;

final class j
  implements Runnable
{
  j(i parami, au paramau1, String paramString1, boolean paramBoolean, au paramau2, String paramString2)
  {
  }

  public final void run()
  {
    if (this.csp != null)
      this.csp.g(this.csq, this.csr);
    if ((this.css != null) && (!cj.hX(this.cst)))
      this.css.g(this.cst, this.csr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.j
 * JD-Core Version:    0.6.2
 */