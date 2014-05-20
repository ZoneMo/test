package com.tencent.mm.app;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import com.tencent.mm.pluginsdk.q;
import com.tencent.mm.ui.tools.el;

final class r
  implements q
{
  private el bLv;

  r(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(Context paramContext, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    return el.a(paramContext, paramString, paramOnDismissListener);
  }

  public final boolean aH(String paramString)
  {
    return el.aH(paramString);
  }

  public final void detach()
  {
    this.bLv = null;
  }

  public final String h(Context paramContext, String paramString)
  {
    if (this.bLv == null)
      this.bLv = new el(paramContext);
    return this.bLv.pX(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.r
 * JD-Core Version:    0.6.2
 */