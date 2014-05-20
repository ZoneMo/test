package com.tencent.mm.ui.tools.jsapi;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.webview.b.d;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.c;
import com.tencent.mm.protocal.a.bw;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

final class f
  implements DialogInterface.OnClickListener
{
  f(e parame, bw parambw, String paramString1, String paramString2, h paramh)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.JSOAuthHelper", "showDlgForJSOAuth click ok");
    this.hoT.fCB = 1;
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(this.hoT);
    ba.PE().a(13, this.hoX);
    d locald = new d(this.hoU, localLinkedList.size(), localLinkedList);
    locald.pS(this.hoV);
    ba.PE();
    c.a(13, locald);
    this.hoW.a(i.hoZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.f
 * JD-Core Version:    0.6.2
 */