package com.tencent.mm.plugin.c.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.modelsimple.x;
import com.tencent.mm.plugin.scanner.a;

final class e
  implements DialogInterface.OnClickListener
{
  e(Intent paramIntent, x paramx, i parami)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.dnh.putExtra("title", this.dUX.getTitle());
    this.dnh.putExtra("rawUrl", this.dUX.Cl());
    a.Tm().h(this.dnh, this.dUY.getContext());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.c.a.e
 * JD-Core Version:    0.6.2
 */