package com.tencent.mm.booter;

import android.content.Intent;
import com.tencent.mm.network.a;
import com.tencent.mm.network.ao;
import com.tencent.mm.platformtools.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class g
  implements az
{
  g(CoreService paramCoreService)
  {
  }

  public final boolean ok()
  {
    if (!CoreService.b(this.bZw).get())
    {
      aa.e("MicroMsg.CoreService", "checker frequency limited");
      return true;
    }
    Intent localIntent = new Intent(this.bZw, NotifyReceiver.class);
    localIntent.putExtra("notify_option_type", 1);
    localIntent.putExtra("notify_uin", CoreService.a(this.bZw).ES().sd());
    try
    {
      this.bZw.sendBroadcast(localIntent);
      return true;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.toString();
      aa.a("MicroMsg.CoreService", "checker frequency limited hasDestroyed %s", arrayOfObject);
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.g
 * JD-Core Version:    0.6.2
 */