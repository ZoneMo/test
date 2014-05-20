package com.tencent.mm.ui.contact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class dz
  implements DialogInterface.OnCancelListener
{
  dz(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    SelectContactUI.A(this.gVn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dz
 * JD-Core Version:    0.6.2
 */