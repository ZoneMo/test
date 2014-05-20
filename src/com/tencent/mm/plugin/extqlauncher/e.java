package com.tencent.mm.plugin.extqlauncher;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

final class e extends Handler
{
  e(b paramb, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((al.getContext() == null) || (!be.se()))
      aa.w("MicroMsg.SubCoreExtQLauncher", "wrong status");
    int i;
    do
    {
      do
        return;
      while (!b.a(this.dgz));
      i = b.Mx();
    }
    while ((i <= 0) && (i >= b.d(this.dgz)));
    aa.d("MicroMsg.SubCoreExtQLauncher", "notify unread");
    Intent localIntent = new Intent("com.tencent.mm.ext.ACTION_EXT_NOTIFY");
    localIntent.putExtra("EXTRA_EXT_NOTIFY_TYPE", "NEW_UNREAD");
    al.getContext().sendBroadcast(localIntent);
    b.a(this.dgz, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.e
 * JD-Core Version:    0.6.2
 */