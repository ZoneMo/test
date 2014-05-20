package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n.ac;

final class jm
  implements DialogInterface.OnCancelListener
{
  jm(RegSetInfoUI paramRegSetInfoUI, ad paramad)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.gua);
    be.uA().b(126, this.gtZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.jm
 * JD-Core Version:    0.6.2
 */