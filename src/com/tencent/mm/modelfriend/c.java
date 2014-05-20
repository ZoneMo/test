package com.tencent.mm.modelfriend;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ch;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class c extends Handler
{
  private int cpY = 0;
  private List cpZ;

  c(AddrBookObserver paramAddrBookObserver)
  {
  }

  private static List a(List paramList, int paramInt1, int paramInt2)
  {
    LinkedList localLinkedList = new LinkedList();
    while (paramInt1 < paramInt2)
    {
      localLinkedList.add(paramList.get(paramInt1));
      paramInt1++;
    }
    return localLinkedList;
  }

  private void yI()
  {
    ch localch = new ch("MicroMsg.AddrBookObserver", "delete");
    ArrayList localArrayList = new ArrayList();
    List localList = com.tencent.mm.pluginsdk.c.aR(AddrBookObserver.c(this.cqa));
    Iterator localIterator = ax.Al().zb().iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = (String[])localIterator.next();
      String str1 = cj.hW(arrayOfString[0]);
      String str2 = cj.hW(arrayOfString[1]);
      if ((!str1.equals("")) && (!localList.contains(str1)))
        localArrayList.add(str2);
    }
    if (localArrayList.size() > 0)
    {
      ax.Al().j(localArrayList);
      z.m(localArrayList);
    }
    localch.addSplit("end");
    localch.dumpToLog();
  }

  public final void handleMessage(Message paramMessage)
  {
    if (AddrBookObserver.yE())
      AddrBookObserver.yF();
    label136: label330: 
    while (true)
    {
      return;
      if (paramMessage.what == 0)
      {
        if ((AddrBookObserver.a(this.cqa) != null) && (AddrBookObserver.a(this.cqa).size() != 0))
          break label136;
        sendEmptyMessage(1);
      }
      while (true)
      {
        if (paramMessage.what != 1)
          break label330;
        if ((AddrBookObserver.b(this.cqa) != null) && (AddrBookObserver.b(this.cqa).size() != 0))
          break label332;
        AddrBookObserver.yG();
        if (AddrBookObserver.yC() != null)
        {
          aa.i("MicroMsg.AddrBookObserver", "list null stop service");
          AddrBookObserver.c(this.cqa).stopService(AddrBookObserver.yC());
        }
        if (AddrBookObserver.d(this.cqa) == null)
          break;
        AddrBookObserver.d(this.cqa).yH();
        return;
        aa.i("MicroMsg.AddrBookObserver", "sync email index: " + this.cpY);
        if (this.cpY < AddrBookObserver.a(this.cqa).size())
        {
          if (100 + this.cpY < AddrBookObserver.a(this.cqa).size());
          for (this.cpZ = a(AddrBookObserver.a(this.cqa), this.cpY, 100 + this.cpY); ; this.cpZ = a(AddrBookObserver.a(this.cqa), this.cpY, AddrBookObserver.a(this.cqa).size()))
          {
            aa.i("MicroMsg.AddrBookObserver", "sync email listToSync size: " + this.cpZ.size());
            z.n(this.cpZ);
            this.cpY = (100 + this.cpY);
            sendEmptyMessageDelayed(0, 250L);
            break;
          }
        }
        sendEmptyMessage(1);
        this.cpY = 0;
      }
    }
    label332: aa.i("MicroMsg.AddrBookObserver", "sync mobile index: " + this.cpY);
    if (this.cpY < AddrBookObserver.b(this.cqa).size())
    {
      if (100 + this.cpY < AddrBookObserver.b(this.cqa).size());
      for (this.cpZ = a(AddrBookObserver.b(this.cqa), this.cpY, 100 + this.cpY); ; this.cpZ = a(AddrBookObserver.b(this.cqa), this.cpY, AddrBookObserver.b(this.cqa).size()))
      {
        aa.i("MicroMsg.AddrBookObserver", "sync mobile listToSync size: " + this.cpZ.size());
        z.n(this.cpZ);
        this.cpY = (100 + this.cpY);
        sendEmptyMessageDelayed(1, 250L);
        return;
      }
    }
    AddrBookObserver.yG();
    if (AddrBookObserver.yC() != null)
    {
      aa.i("MicroMsg.AddrBookObserver", "sync ok, stop service");
      AddrBookObserver.c(this.cqa).stopService(AddrBookObserver.yC());
    }
    yI();
    System.currentTimeMillis();
    z.zu();
    if (AddrBookObserver.d(this.cqa) != null)
    {
      AddrBookObserver.e(this.cqa).addSplit("sync ok");
      AddrBookObserver.e(this.cqa).dumpToLog();
      AddrBookObserver.d(this.cqa).yH();
      return;
    }
    AddrBookObserver.e(this.cqa).addSplit("sync ok");
    AddrBookObserver.e(this.cqa).dumpToLog();
    this.cpY = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.c
 * JD-Core Version:    0.6.2
 */