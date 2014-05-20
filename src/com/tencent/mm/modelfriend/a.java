package com.tencent.mm.modelfriend;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;

final class a extends Handler
{
  a(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    aa.i("MicroMsg.AddrBookObserver", "time's up, start");
    Context localContext = (Context)paramMessage.obj;
    if (AddrBookObserver.yC() == null)
    {
      AddrBookObserver.e(new Intent());
      AddrBookObserver.yC().setClass(localContext, AddrBookObserver.AddrBookService.class);
    }
    localContext.startService(AddrBookObserver.yC());
    AddrBookObserver.yD();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.a
 * JD-Core Version:    0.6.2
 */