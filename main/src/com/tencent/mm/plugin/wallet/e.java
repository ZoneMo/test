package com.tencent.mm.plugin.wallet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.c.a.cl;

final class e
  implements DialogInterface.OnClickListener
{
  e(c paramc)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (c.a(this.eVV).gbX != null)
    {
      c.a(this.eVV).bNP.ret = 1;
      c.a(this.eVV).gbX.run();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.e
 * JD-Core Version:    0.6.2
 */