package com.tencent.mm.ui.contact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class dy
  implements DialogInterface.OnCancelListener
{
  dy(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    SelectContactUI.b(this.gVn, false);
    be.uA().c(SelectContactUI.z(this.gVn));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dy
 * JD-Core Version:    0.6.2
 */