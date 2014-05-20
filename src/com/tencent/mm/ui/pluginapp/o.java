package com.tencent.mm.ui.pluginapp;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;

final class o
  implements DialogInterface.OnCancelListener
{
  o(ContactSearchUI paramContactSearchUI, aj paramaj)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.cPJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.o
 * JD-Core Version:    0.6.2
 */