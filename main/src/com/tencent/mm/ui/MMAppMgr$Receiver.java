package com.tencent.mm.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.booter.al;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;

public class MMAppMgr$Receiver extends BroadcastReceiver
{
  private MMAppMgr bLo;

  public MMAppMgr$Receiver()
  {
  }

  public MMAppMgr$Receiver(MMAppMgr paramMMAppMgr)
  {
    this.bLo = paramMMAppMgr;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    int i;
    do
    {
      do
      {
        do
          return;
        while (be.un());
        String str = paramIntent.getAction();
        if ("com.tencent.mm.ui.ACTION_ACTIVE".equals(str))
        {
          MMAppMgr.a(this.bLo, paramIntent, true);
          this.bLo.V(true);
          return;
        }
        if (!"com.tencent.mm.ui.ACTION_DEACTIVE".equals(str))
          break;
        al.oS();
        MMAppMgr.a(this.bLo, paramIntent, false);
        this.bLo.V(false);
      }
      while ((MMAppMgr.aFl() == null) || (MMAppMgr.aFl().length() <= 800));
      new Handler(Looper.getMainLooper()).post(new ck(this));
      return;
      if (!paramIntent.getAction().equals("com.tencent.mm.sandbox.updater.intent.ACTION_UPDATE"))
        break;
      i = paramIntent.getIntExtra("intent_extra_opcode", 0);
      aa.d("MicroMsg.MMAppMgr", "incremental_update = " + i);
    }
    while (!be.se());
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    localm.d(10328, arrayOfObject);
    return;
    if (paramIntent.getAction().equals("com.tencent.mm.sandbox.updater.intent.ACTION_EXIT_APP"))
      MMAppMgr.a(paramContext, null);
    aa.e("MicroMsg.MMAppMgr", "unknown broadcast action");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.MMAppMgr.Receiver
 * JD-Core Version:    0.6.2
 */