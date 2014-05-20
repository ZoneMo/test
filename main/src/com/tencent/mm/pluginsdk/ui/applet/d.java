package com.tencent.mm.pluginsdk.ui.applet;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;
import java.util.List;

final class d
  implements DialogInterface.OnClickListener
{
  d(a parama, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.AddContact", "dealwith verify relation out of date");
    LinkedList localLinkedList = ((j)this.cmw).apL();
    List localList = ((j)this.cmw).apH();
    if ((localList != null) && (localList.size() > 0))
      this.fnD.e((String)localList.get(0), localLinkedList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.d
 * JD-Core Version:    0.6.2
 */