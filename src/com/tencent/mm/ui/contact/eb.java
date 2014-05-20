package com.tencent.mm.ui.contact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.LinkedList;

final class eb
  implements DialogInterface.OnClickListener
{
  eb(SelectContactUI paramSelectContactUI, LinkedList paramLinkedList)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SelectContactUI.a(this.gVn, this.gpn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.eb
 * JD-Core Version:    0.6.2
 */