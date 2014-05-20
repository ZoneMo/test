package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;
import java.util.List;

final class z
  implements View.OnClickListener
{
  z(WalletCardElmentUI paramWalletCardElmentUI)
  {
  }

  public final void onClick(View paramView)
  {
    int i = 0;
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    localLinkedList1.add(this.eZd.getString(n.bFy));
    localLinkedList2.add(Integer.valueOf(0));
    localLinkedList1.add(this.eZd.getString(n.bFz));
    localLinkedList2.add(Integer.valueOf(1));
    if (WalletCardElmentUI.a(this.eZd) != null)
    {
      String[] arrayOfString = WalletCardElmentUI.anr();
      int j = arrayOfString.length;
      while (i < j)
      {
        if (arrayOfString[i].equals(WalletCardElmentUI.a(this.eZd).eXo))
        {
          localLinkedList1.add(this.eZd.getString(n.bFx));
          localLinkedList2.add(Integer.valueOf(2));
        }
        i++;
      }
    }
    h.a(this.eZd, "", localLinkedList1, localLinkedList2, "", new aa(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.z
 * JD-Core Version:    0.6.2
 */