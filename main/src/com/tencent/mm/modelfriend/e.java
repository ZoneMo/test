package com.tencent.mm.modelfriend;

import android.content.Context;
import android.os.Handler;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class e extends Thread
{
  private static byte[] cbL = new byte[0];
  private final Context context;
  private List cpP;
  private List cpQ;
  private final g cqb;
  private List cqc;
  private List cqd;
  private final Handler handler = new f(this);

  public e(Context paramContext, g paramg)
  {
    super("addrbook-reader");
    this.cqb = paramg;
    this.context = paramContext;
  }

  private static List a(int paramInt, List paramList)
  {
    if (paramList == null)
    {
      aa.e("MicroMsg.AddrBookReadThread", "sync address book failed, null info list");
      return new LinkedList();
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = (String[])localIterator.next();
      if (arrayOfString != null)
      {
        String str1 = arrayOfString[0];
        String str2 = arrayOfString[1];
        String str3 = arrayOfString[2];
        String str4 = arrayOfString[3];
        if ((str3 != null) && (!str3.equals("")))
        {
          String str5 = "";
          if (paramInt == 1)
            str5 = com.tencent.mm.a.f.h(str3.getBytes());
          if (paramInt == 0)
            str5 = com.tencent.mm.a.f.h(c.kH(str3).getBytes());
          h localh = new h();
          localh.eZ(str2);
          localh.fa(com.tencent.mm.platformtools.h.hJ(str2));
          localh.fb(com.tencent.mm.platformtools.h.hI(str2));
          localh.eY(str1);
          localh.fo(str4);
          localh.eX(str5);
          if (paramInt == 1)
            localh.bF(str3);
          if (paramInt == 0)
            localh.ff(str3);
          localh.setType(paramInt);
          localh.cL(47222);
          localArrayList.add(localh);
        }
      }
    }
    return localArrayList;
  }

  public final void run()
  {
    synchronized (cbL)
    {
      aa.d("MicroMsg.AddrBookReadThread", "reading email info");
      this.cqc = c.aP(this.context);
      if (this.cqc != null)
        aa.i("MicroMsg.AddrBookReadThread", "sync address book email size: " + this.cqc.size());
      this.cpP = a(1, this.cqc);
      aa.d("MicroMsg.AddrBookReadThread", "reading mobile info");
      this.cqd = c.aO(this.context);
      if (this.cqd != null)
        aa.i("MicroMsg.AddrBookReadThread", "sync address book mobile size: " + this.cqd.size());
      this.cpQ = a(0, this.cqd);
      aa.d("MicroMsg.AddrBookReadThread", "reading done");
      this.handler.sendEmptyMessage(0);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.e
 * JD-Core Version:    0.6.2
 */