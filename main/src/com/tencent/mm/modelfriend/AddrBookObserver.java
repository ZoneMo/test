package com.tencent.mm.modelfriend;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ch;
import java.util.List;

public final class AddrBookObserver extends ContentObserver
  implements g
{
  private static e cpO;
  private static boolean cpT = false;
  private static boolean cpU = false;
  private static boolean cpV = false;
  private static Intent cpW;
  private static Handler handler = new a(Looper.getMainLooper());
  private final Context context;
  private List cpP;
  private List cpQ;
  private d cpR;
  private ch cpS;
  private Handler cpX = new c(this);

  public AddrBookObserver(Context paramContext, Handler paramHandler)
  {
    super(paramHandler);
    this.context = paramContext;
    Intent localIntent = new Intent();
    cpW = localIntent;
    localIntent.setClass(paramContext, AddrBookObserver.AddrBookService.class);
  }

  public static boolean N(Context paramContext)
  {
    if (!z.zn())
    {
      aa.e("MicroMsg.AddrBookObserver", "this user has not agreed to upload address book");
      return false;
    }
    z.zm();
    return new AddrBookObserver(paramContext, new Handler()).a(new b());
  }

  public static void yA()
  {
    cpU = true;
  }

  public static boolean yB()
  {
    return (cpT) || (cpV);
  }

  public final void a(List paramList1, List paramList2)
  {
    this.cpP = paramList1;
    this.cpQ = paramList2;
    this.cpX.sendEmptyMessage(0);
    cpO = null;
  }

  public final boolean a(d paramd)
  {
    boolean bool = z.zs();
    if ((cpT) || (!bool))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.b("MicroMsg.AddrBookObserver", "already syncing or canSync:%b, skip", arrayOfObject);
      return false;
    }
    cpT = true;
    cpU = false;
    this.cpR = paramd;
    cpO = new e(this.context, this);
    this.cpS = new ch("MicroMsg.AddrBookObserver", "sync addrBook");
    this.cpS.addSplit("sync begin");
    cpO.setPriority(1);
    cpO.start();
    return true;
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    aa.i("MicroMsg.AddrBookObserver", "address book changed, start sync after 20 second");
    if (!cpT)
    {
      z.zt();
      cpV = true;
      handler.removeMessages(0);
      Message localMessage = handler.obtainMessage();
      localMessage.obj = this.context;
      localMessage.what = 0;
      handler.sendMessageDelayed(localMessage, 20000L);
      return;
    }
    aa.e("MicroMsg.AddrBookObserver", "isSyncing:" + cpT + ", is time to sync:" + z.zt() + " , return");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.AddrBookObserver
 * JD-Core Version:    0.6.2
 */