package com.tencent.mm.plugin.gwallet.a;

import android.content.Intent;
import android.os.Handler;
import android.os.RemoteException;
import org.json.JSONException;

final class f
  implements Runnable
{
  f(b paramb, String paramString, Handler paramHandler, i parami)
  {
  }

  public final void run()
  {
    k localk = new k(0, "Inventory refresh successful.");
    Intent localIntent = new Intent();
    try
    {
      int i = b.a(this.dsY, localIntent, this.dtd);
      if (i != 0)
        localk = new k(i, "Error refreshing inventory (querying owned items).");
      localIntent.putExtra("RESPONSE_CODE", localk.dti);
      this.cQP.post(new g(this, localk, localIntent));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localk = new k(-1001, "Remote exception while refreshing inventory.");
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localk = new k(-1002, "Error parsing JSON response while refreshing inventory.");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a.f
 * JD-Core Version:    0.6.2
 */