package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.applet.a;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.LinkedList;

final class hb
  implements View.OnClickListener
{
  hb(ChattingUI paramChattingUI, LinearLayout paramLinearLayout)
  {
  }

  public final void onClick(View paramView)
  {
    if ((ChattingUI.l(this.gPG).rj() == 0) && (be.uz().su().C(ChattingUI.l(this.gPG)) != -1))
      ChattingUI.a(this.gPG, be.uz().su().tO(this.gPG.aJe()));
    a locala = new a(this.gPG, new hc(this));
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(Integer.valueOf(3));
    locala.e(this.gPG.aJe(), localLinkedList);
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.gPG.aJe();
    arrayOfObject[1] = Integer.valueOf(3);
    localm.d(11004, arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hb
 * JD-Core Version:    0.6.2
 */