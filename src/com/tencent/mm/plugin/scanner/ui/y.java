package com.tencent.mm.plugin.scanner.ui;

import android.content.Intent;
import com.tencent.mm.c.a.u;
import com.tencent.mm.c.a.v;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;

final class y
  implements com.tencent.mm.ui.base.w
{
  y(x paramx)
  {
  }

  public final void ai(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default:
      aa.d("MicroMsg.scanner.ProductUI", "do del cancel");
    case -1:
    }
    u localu;
    do
    {
      return;
      localu = new u();
      localu.bMi.bMk = this.edf.ede.getIntent().getLongExtra("key_favorite_local_id", -1L);
      a.ayH().f(localu);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(localu.bMi.bMk);
      arrayOfObject[1] = Boolean.valueOf(localu.bMj.bMh);
      aa.e("MicroMsg.scanner.ProductUI", "do del fav product, local id %d, result %B", arrayOfObject);
    }
    while (!localu.bMj.bMh);
    this.edf.ede.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.y
 * JD-Core Version:    0.6.2
 */