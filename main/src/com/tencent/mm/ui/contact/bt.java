package com.tencent.mm.ui.contact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bt
  implements DialogInterface.OnClickListener
{
  bt(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.gTN.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bt
 * JD-Core Version:    0.6.2
 */