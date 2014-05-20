package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;

final class cy
  implements MenuItem.OnMenuItemClickListener
{
  cy(SayHiEditUI paramSayHiEditUI, String paramString, int paramInt)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gUF.SM();
    LinkedList localLinkedList1 = new LinkedList();
    localLinkedList1.add(this.gUD);
    LinkedList localLinkedList2 = new LinkedList();
    localLinkedList2.add(Integer.valueOf(this.gUE));
    j localj = new j(2, localLinkedList1, localLinkedList2, SayHiEditUI.a(this.gUF), "");
    be.uA().d(localj);
    SayHiEditUI localSayHiEditUI = this.gUF;
    Activity localActivity = this.gUF.aal();
    this.gUF.getString(2131167675);
    SayHiEditUI.a(localSayHiEditUI, h.a(localActivity, this.gUF.getString(2131167848), true, new cz(this, localj)));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cy
 * JD-Core Version:    0.6.2
 */