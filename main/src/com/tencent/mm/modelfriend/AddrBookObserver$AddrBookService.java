package com.tencent.mm.modelfriend;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.sdk.platformtools.aa;

public class AddrBookObserver$AddrBookService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    Object[] arrayOfObject1 = new Object[1];
    boolean bool;
    if (paramIntent == null)
    {
      bool = true;
      arrayOfObject1[0] = Boolean.valueOf(bool);
      aa.d("MicroMsg.AddrBookObserver", "service start intent:%b", arrayOfObject1);
      if (!AddrBookObserver.yE())
        break label68;
      aa.i("MicroMsg.AddrBookObserver", "service canceled");
      AddrBookObserver.yF();
      stopSelf();
    }
    label68: 
    do
    {
      return 2;
      bool = false;
      break;
      be.uE();
      try
      {
        if (!be.se())
        {
          aa.i("MicroMsg.AddrBookObserver", "account not ready, stop sync");
          stopSelf();
          return 2;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException.getMessage();
        aa.b("MicroMsg.AddrBookObserver", "AddrBookService onStart [%s]", arrayOfObject2);
        return 2;
      }
      if ((!z.zs()) || (z.zo()))
        break label155;
      aa.i("MicroMsg.AddrBookObserver", "start sync");
    }
    while (f.Y(this));
    AddrBookObserver.N(getApplicationContext());
    return 2;
    label155: aa.e("MicroMsg.AddrBookObserver", "not time to sync addr book, stop service");
    stopSelf();
    return 2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.AddrBookObserver.AddrBookService
 * JD-Core Version:    0.6.2
 */