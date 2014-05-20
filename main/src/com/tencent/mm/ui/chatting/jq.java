package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.d.c.m;

final class jq
  implements DialogInterface.OnClickListener
{
  jq(ChattingUI paramChattingUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(14);
    arrayOfObject[1] = Integer.valueOf(0);
    arrayOfObject[2] = Integer.valueOf(0);
    arrayOfObject[3] = Integer.valueOf(0);
    localm.d(10997, arrayOfObject);
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jq
 * JD-Core Version:    0.6.2
 */