package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;
import java.util.List;

final class ak
  implements View.OnClickListener
{
  ak(WalletCardImportUI paramWalletCardImportUI)
  {
  }

  public final void onClick(View paramView)
  {
    int i = 0;
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    localLinkedList1.add(this.eZk.getString(n.bFy));
    localLinkedList2.add(Integer.valueOf(0));
    localLinkedList1.add(this.eZk.getString(n.bFz));
    localLinkedList2.add(Integer.valueOf(1));
    if (WalletCardImportUI.c(this.eZk) != null)
    {
      String[] arrayOfString = WalletCardImportUI.ans();
      int j = arrayOfString.length;
      while (i < j)
      {
        if (arrayOfString[i].equals(WalletCardImportUI.c(this.eZk).eXo))
        {
          localLinkedList1.add(this.eZk.getString(n.bFx));
          localLinkedList2.add(Integer.valueOf(2));
        }
        i++;
      }
    }
    h.a(this.eZk, "", localLinkedList1, localLinkedList2, "", new al(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ak
 * JD-Core Version:    0.6.2
 */