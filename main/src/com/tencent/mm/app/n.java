package com.tencent.mm.app;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.c.a.gm;
import com.tencent.mm.c.a.gn;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.WebViewUI;

final class n extends g
{
  n(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(e parame)
  {
    gm localgm = (gm)parame;
    Context localContext = localgm.bQH.context;
    String str = localgm.bQH.bQI;
    if ((localContext == null) || (cj.hX(str)))
      return false;
    Intent localIntent = new Intent();
    localIntent.putExtra("rawUrl", str);
    localIntent.setClass(localContext, WebViewUI.class);
    localContext.startActivity(localIntent);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.n
 * JD-Core Version:    0.6.2
 */