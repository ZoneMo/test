package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;
import java.util.List;

final class fu
  implements MenuItem.OnMenuItemClickListener
{
  fu(ShowImageUI paramShowImageUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    if ((ShowImageUI.a(this.hmt)) && (a.qc("favorite")))
    {
      localLinkedList2.add(Integer.valueOf(0));
      localLinkedList1.add(this.hmt.getString(2131165631));
      localLinkedList2.add(Integer.valueOf(1));
      localLinkedList1.add(this.hmt.getString(2131167820));
      localLinkedList2.add(Integer.valueOf(2));
      localLinkedList1.add(this.hmt.getString(2131165627));
    }
    while (true)
    {
      h.b(this.hmt, "", localLinkedList1, localLinkedList2, "", new fv(this));
      return true;
      localLinkedList2.add(Integer.valueOf(0));
      localLinkedList1.add(this.hmt.getString(2131165631));
      localLinkedList2.add(Integer.valueOf(2));
      localLinkedList1.add(this.hmt.getString(2131165627));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fu
 * JD-Core Version:    0.6.2
 */