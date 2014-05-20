package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.plugin.scanner.a.i;
import com.tencent.mm.plugin.scanner.b;
import com.tencent.mm.plugin.scanner.b.n;
import com.tencent.mm.sdk.platformtools.aa;

final class ab
  implements Runnable
{
  ab(ProductUI paramProductUI, n paramn)
  {
  }

  public final void run()
  {
    if (this.edg != null);
    try
    {
      b.ZB().a(this.edg);
      return;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.b("MicroMsg.scanner.ProductUI", "error occur: insert product [%s]", arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.ab
 * JD-Core Version:    0.6.2
 */