package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.voicereminder.a.a;
import com.tencent.mm.plugin.voicereminder.a.k;
import com.tencent.mm.protocal.a.zj;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;

final class eb
  implements DialogInterface.OnClickListener
{
  eb(ea paramea)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    be.uA().a(331, dw.a(this.gNg.gNd, new ec(this)));
    LinkedList localLinkedList = new LinkedList();
    zj localzj = new zj();
    localzj.fzW = this.gNg.gNf.ePf;
    localLinkedList.add(localzj);
    a locala = new a(localLinkedList, localLinkedList.size());
    be.uA().d(locala);
    dw localdw = this.gNg.gNd;
    ChattingUI localChattingUI = dw.a(this.gNg.gNd);
    dw.a(this.gNg.gNd).getString(2131167675);
    dw.a(localdw, h.a(localChattingUI, dw.a(this.gNg.gNd).getString(2131167075), true, new ed(this, locala)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.eb
 * JD-Core Version:    0.6.2
 */