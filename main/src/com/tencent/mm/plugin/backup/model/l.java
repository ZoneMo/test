package com.tencent.mm.plugin.backup.model;

import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.n.x;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.plugin.backup.a.g;
import com.tencent.mm.plugin.backup.b.a;
import com.tencent.mm.plugin.backup.b.h;
import com.tencent.mm.plugin.backup.b.i;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;
import java.util.Set;

public final class l
  implements com.tencent.mm.n.m, com.tencent.mm.n.n, ac
{
  private static int cKf = 15;
  private al cKg;
  private u cKh = new u();
  private HashMap cKi = new HashMap();
  private HashMap cKj = new HashMap();
  private int cKk;
  private HashMap cKl = new HashMap();
  private int cKm = 0;
  private int cKn;
  private int cKo = 0;
  private z cKp = null;
  private boolean cKq = false;
  private final Random cgn = new Random();
  private final Handler ctk = new Handler(Looper.getMainLooper());
  private final Object lock = new Object();

  private void GA()
  {
    if (this.cKq)
      return;
    this.cKq = true;
    d.uA().a(323, this);
    d.uA().a(324, this);
    d.uA().a(321, this);
    d.uA().a(322, this);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "addSceneEndListener ");
  }

  private void GB()
  {
    this.ctk.post(new p(this));
  }

  private boolean GC()
  {
    while (true)
    {
      com.tencent.mm.plugin.backup.a.d locald2;
      int i;
      com.tencent.mm.plugin.backup.b.k localk;
      synchronized (this.lock)
      {
        Iterator localIterator1 = this.cKh.Hd().iterator();
        if (!localIterator1.hasNext())
          break label250;
        locald2 = (com.tencent.mm.plugin.backup.a.d)localIterator1.next();
        if (this.cKi.containsValue(locald2.cJh))
          continue;
        LinkedList localLinkedList = locald2.cJj;
        Iterator localIterator2 = this.cKh.Hc().iterator();
        if (localIterator2.hasNext())
        {
          g localg = (g)localIterator2.next();
          Iterator localIterator3 = localLinkedList.iterator();
          if (!localIterator3.hasNext())
            continue;
          if (((ae)localIterator3.next()).fzo != localg.csY)
            continue;
          i = 0;
          break label256;
          if (locald1 == null)
            break label248;
          localk = new com.tencent.mm.plugin.backup.b.k(this.cKh.GT(), this.cKh.GU(), locald1.cJh, locald1.cJj, locald1.cJi);
          if (d.uA().d(localk))
            break label215;
          e(3, -1, "send BakChatUploadMsg");
          return false;
        }
        i = 1;
      }
      label215: this.cKi.put(Integer.valueOf(localk.hashCode()), locald1.cJh);
      this.cKk = (1 + this.cKk);
      return true;
      label248: return false;
      label250: com.tencent.mm.plugin.backup.a.d locald1 = null;
      continue;
      label256: if (i != 0)
        locald1 = locald2;
    }
  }

  private boolean GD()
  {
    Object localObject1 = this.lock;
    Object localObject4;
    for (Object localObject2 = null; ; localObject2 = localObject4)
      while (true)
      {
        i locali;
        try
        {
          Iterator localIterator = this.cKh.Hc().iterator();
          if (!localIterator.hasNext())
            break label209;
          g localg = (g)localIterator.next();
          if (this.cKj.containsValue(localg.mediaId))
            continue;
          if (!c.as(localg.bRt))
          {
            this.cKh.fc(localg.csY);
            i = 1;
            localObject4 = localObject2;
            if (i != 0)
              break;
            if (localObject4 == null)
              break label207;
            locali = new i(this.cKh.GT(), this.cKh.GU(), ((g)localObject4).mediaId, ((g)localObject4).bRt, this, ((g)localObject4).cJh);
            if (!d.uA().d(locali))
            {
              e(3, -1, "send BakChatUploadMedia");
              return false;
            }
          }
          else
          {
            localObject4 = localg;
            i = 0;
            continue;
          }
        }
        finally
        {
        }
        this.cKj.put(Integer.valueOf(locali.hashCode()), ((g)localObject4).mediaId);
        this.cKk = (1 + this.cKk);
        return true;
        label207: return false;
        label209: localObject4 = localObject2;
        int i = 0;
      }
  }

  private int a(LinkedList paramLinkedList1, LinkedList paramLinkedList2, int paramInt)
  {
    String str = f.h((cj.FE() + this.cgn.nextDouble()).getBytes());
    synchronized (this.lock)
    {
      com.tencent.mm.plugin.backup.a.d locald = new com.tencent.mm.plugin.backup.a.d();
      locald.cJh = str;
      locald.cJj = paramLinkedList1;
      locald.cJi = paramInt;
      this.cKh.a(locald);
      Iterator localIterator = paramLinkedList2.iterator();
      if (localIterator.hasNext())
      {
        g localg = (g)localIterator.next();
        localg.cJh = str;
        this.cKh.a(localg);
      }
    }
    if (!at.cHx)
      GB();
    int i = this.cKh.He();
    if (i >= 30);
    try
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BackupServer", "prepareUpload work thread wait()");
      this.lock.wait();
      return 0;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    return -1;
  }

  private int e(String paramString1, String paramString2, int paramInt)
  {
    int i;
    LinkedList localLinkedList1;
    LinkedList localLinkedList2;
    PInt localPInt;
    if (bm.ac(com.tencent.mm.sdk.platformtools.al.getContext()))
    {
      i = 16384;
      localLinkedList1 = new LinkedList();
      localLinkedList2 = new LinkedList();
      localPInt = new PInt();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "backupChatMsg start " + paramString1);
      if ((!paramString1.equals(this.cKh.Hg())) || (this.cKh.Hh() == 0))
        break label160;
    }
    Cursor localCursor;
    int k;
    int n;
    Object localObject1;
    label160: for (int j = 1; ; j = 0)
    {
      localCursor = d.Gj().sw().vd(paramString1);
      if (!localCursor.moveToFirst())
        break label421;
      k = 0;
      n = j;
      localObject1 = localLinkedList1;
      if (localCursor.isAfterLast())
        break label428;
      if (!this.cKg.Hs())
        break label166;
      localCursor.close();
      return -1;
      i = 8192;
      break;
    }
    label166: ak localak = new ak();
    localak.convertFrom(localCursor);
    if (n != 0)
      if (localak.AH() != this.cKh.Hh())
        break label527;
    label520: label527: for (int i3 = 0; ; i3 = n)
    {
      localCursor.moveToNext();
      n = i3;
      break;
      boolean bool;
      if (paramInt > 0)
        bool = true;
      while (true)
      {
        try
        {
          ae localae2 = k.a(localak, false, paramString2, localPInt, localLinkedList2, bool);
          ae localae1 = localae2;
          paramInt--;
          if (localae1 == null)
            break label520;
          ((LinkedList)localObject1).add(localae1);
          int i1 = localae1.fzo;
          Object localObject2;
          if (localPInt.value > i)
          {
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "limitSize " + localPInt.value);
            int i2 = a((LinkedList)localObject1, localLinkedList2, localPInt.value);
            if (i2 < 0)
            {
              localCursor.close();
              return i2;
              bool = false;
              continue;
            }
          }
        }
        catch (Exception localException)
        {
          com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.BackupServer", "backupChatMsg %s" + localException);
          localae1 = null;
          continue;
          this.cKh.A(paramString1, i1);
          localPInt.value = 0;
          localObject2 = new LinkedList();
          localLinkedList2.clear();
        }
        while (true)
        {
          localCursor.moveToNext();
          k = i1;
          localObject1 = localObject2;
          break;
          label421: k = 0;
          localObject1 = localLinkedList1;
          label428: if (localPInt.value > 0)
          {
            int m = a((LinkedList)localObject1, localLinkedList2, localPInt.value);
            localPInt.value = 0;
            if (m < 0)
            {
              localCursor.close();
              return m;
            }
            this.cKh.A(paramString1, k);
          }
          localCursor.close();
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "backupChatMsg end " + paramString1);
          return 0;
          localObject2 = localObject1;
        }
        i1 = k;
      }
    }
  }

  private void e(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 == 3) && (paramInt2 == 9999))
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BackupServer", "dealWithErrType pause err ignore");
      return;
    }
    if (!this.cKh.Hb())
    {
      this.cKo = 2;
      com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.BackupServer", paramInt1 + ", " + paramInt2 + " " + paramString);
      com.tencent.mm.plugin.d.c.m.dZN.j(10341, "1," + paramInt1 + "/" + paramInt2 + "/" + paramString);
      q.GL();
      if (this.cKp != null)
        this.cKp.V(paramInt1, paramInt2);
    }
    i.pause();
    this.cKh.aa(true);
  }

  private void eW(int paramInt)
  {
    if (paramInt < 0)
    {
      com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.BackupServer", "startTask no tryCount left");
      return;
    }
    if ((this.cKg == null) || (!this.cKg.isAlive()))
    {
      this.cKg = new n(this, (String)d.Gj().sr().get(2));
      this.cKg.setPriority(1);
      this.cKg.start();
      return;
    }
    if (!this.cKg.Hs())
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BackupServer", "startTask the thread is normal run, no need to start new");
      return;
    }
    new Handler(Looper.getMainLooper()).postDelayed(new m(this, paramInt), 50L);
  }

  private void reset()
  {
    this.cgn.setSeed(cj.FE());
    this.cKl.clear();
    this.cKk = 0;
    this.cKm = 0;
    this.cKn = 0;
    this.cKi.clear();
    this.cKj.clear();
  }

  public final void GE()
  {
    if (!cj.hX(this.cKh.GU()))
    {
      this.cKm = d.Gm().u(this.cKh.Hf());
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "msgItemSize onCaluateFinish: " + cj.K(this.cKm));
      d.Gm().b(this);
      GB();
    }
  }

  public final void GF()
  {
  }

  public final boolean GG()
  {
    return !cj.hX(this.cKh.GU());
  }

  public final int GH()
  {
    return this.cKo;
  }

  public final void GI()
  {
    this.cKo = 0;
  }

  public final void Gw()
  {
    a(null, false, 0);
  }

  public final void Gx()
  {
    if ((this.cKg == null) || (!this.cKg.isAlive()))
    {
      a(null, false, 0);
      return;
    }
    this.cKo = 0;
    GA();
    i.resume();
    this.cKh.aa(false);
    GB();
  }

  public final boolean Gy()
  {
    return (this.cKh.Hb()) && ((this.cKg == null) || (!this.cKg.isAlive()));
  }

  public final boolean Gz()
  {
    return this.cKh.Hb();
  }

  public final void a(int paramInt1, int paramInt2, x paramx)
  {
    a locala;
    if (paramx.getType() == 324)
    {
      locala = (a)paramx;
      if (locala.iC(this.cKh.GU()))
        break label40;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "scene back is old");
    }
    label40: 
    do
    {
      return;
      this.cKn += locala.HI();
    }
    while ((this.cKh.Hb()) || (this.cKp == null));
    this.cKp.b(this.cKn, this.cKm);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "onGYNetEnd errType:" + paramInt1 + " errCode:" + paramInt2 + " " + paramx.getType());
    a locala1 = (a)paramx;
    if (!locala1.iC(this.cKh.GU()))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "scene back is old");
      return;
    }
    if (paramx.getType() == 321)
    {
      if (this.cKh.GV() != 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.BackupServer", "onSceneEnd redundancy uploadHead");
        return;
      }
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.BackupServer", "start error  ");
        e(paramInt1, paramInt2, "UploadHead " + paramString);
        return;
      }
      h localh = (h)paramx;
      this.cKh.fb(localh.HG());
      this.cKh.eY(1);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "bakchatSvrID  " + localh.HG());
      eW(100);
      return;
    }
    if (paramx.getType() == 322)
    {
      if ((!this.cKh.Hb()) && (this.cKp != null))
        this.cKp.b(this.cKm, this.cKm);
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.BackupServer", "end error  ");
        this.cKh.eY(2);
        e(paramInt1, paramInt2, "UploadEnd " + paramString);
        return;
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "end ok  ");
      i.HJ();
      this.cKo = 1;
      if (!this.cKh.Hb())
      {
        q.a(this.cKm, cj.FE(), 1);
        if (this.cKp != null)
          this.cKp.Hn();
      }
      g(true, false);
      c.a(new File(d.Gr()));
      d.Gq();
      return;
    }
    int i = this.cKk;
    int j = 0;
    if (i == 0)
    {
      this.cKk = j;
      switch (paramx.getType())
      {
      default:
      case 323:
      case 324:
      }
    }
    while (true)
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        e(paramInt1, paramInt2, paramString);
        return;
        j = -1 + this.cKk;
        break;
        synchronized (this.lock)
        {
          this.cKi.remove(Integer.valueOf(paramx.hashCode()));
        }
        synchronized (this.lock)
        {
          this.cKj.remove(Integer.valueOf(paramx.hashCode()));
        }
      }
    a locala2 = (a)paramx;
    switch (locala2.getType())
    {
    default:
    case 323:
    case 324:
    }
    while (true)
    {
      GB();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "bckMsgList: " + this.cKh.Hd().size() + " mediaList : " + this.cKh.Hc().size());
      if ((paramx.getType() != 323) || (this.cKp == null))
        break;
      this.cKn += locala1.HI();
      if ((this.cKh.Hb()) || (this.cKp == null))
        break;
      this.cKp.b(this.cKn, this.cKm);
      return;
      synchronized (this.lock)
      {
        String str3 = ((com.tencent.mm.plugin.backup.b.k)locala2).HL();
        this.cKh.iw(str3);
        int m = cj.a((Integer)this.cKl.get(str3), 0);
        this.cKh.U(m + this.cKh.Hi(), this.cKm);
      }
      synchronized (this.lock)
      {
        i locali = (i)locala2;
        String str1 = locali.oJ();
        this.cKh.iv(str1);
        String str2 = locali.HQ();
        int k = cj.a((Integer)this.cKl.get(str2), 0);
        this.cKl.put(str2, Integer.valueOf(k + locala2.vR()));
      }
    }
  }

  public final void a(z paramz)
  {
    this.cKp = paramz;
  }

  public final void a(LinkedList paramLinkedList, boolean paramBoolean, int paramInt)
  {
    boolean bool = false;
    this.cKo = 0;
    this.cKh.aa(false);
    GA();
    cKf = r.GS();
    i.resume();
    String str1 = f.h((cj.FE() + this.cgn.nextDouble()).getBytes());
    int i;
    if (paramLinkedList == null)
    {
      paramLinkedList = this.cKh.Hf();
      if (this.cKm == 0)
      {
        this.cKn = this.cKh.Hi();
        this.cKm = this.cKh.Ha();
      }
      if (this.cKp != null)
      {
        this.cKp.b(this.cKn, this.cKm);
        Object[] arrayOfObject = new Object[1];
        if (this.cKm == 0)
        {
          i = 0;
          arrayOfObject[0] = Integer.valueOf(i);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.BackupServer", "process: %d", arrayOfObject);
        }
      }
      else
      {
        if (this.cKh.GV() == 1)
          eW(100);
        if (this.cKh.GV() == 3)
          this.cKh.eY(2);
      }
    }
    while (true)
    {
      if (this.cKm == 0)
        break label249;
      GB();
      return;
      i = 100 * this.cKn / this.cKm;
      break;
      reset();
      this.cKh.a(str1, paramLinkedList, paramBoolean, paramInt);
    }
    label249: Iterator localIterator = paramLinkedList.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      bool |= d.Gm().iz(str2);
    }
    if (bool)
      d.Gm().a(this);
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "msgItemSize" + cj.K(this.cKm));
      return;
      this.cKm = d.Gm().u(paramLinkedList);
      GB();
    }
  }

  public final void b(z paramz)
  {
    if (paramz.equals(this.cKp))
      this.cKp = null;
  }

  public final void g(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2)
      q.a(this.cKn, cj.FE(), 2);
    this.cKq = false;
    d.uA().b(323, this);
    d.uA().b(324, this);
    d.uA().b(321, this);
    d.uA().b(322, this);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BackupServer", "removeSceneEndListener ");
    Iterator localIterator1 = this.cKi.keySet().iterator();
    while (localIterator1.hasNext())
    {
      int j = ((Integer)localIterator1.next()).intValue();
      d.uA().cancel(j);
    }
    Iterator localIterator2 = this.cKj.keySet().iterator();
    while (localIterator2.hasNext())
    {
      int i = ((Integer)localIterator2.next()).intValue();
      d.uA().cancel(i);
    }
    reset();
    this.cKh.aa(true);
    if (this.cKg != null)
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BackupServer", "cancelBak kill thread");
    synchronized (this.lock)
    {
      this.cKg.kill();
      if (paramBoolean1)
        this.cKh.reset();
      return;
    }
  }

  public final int getOffset()
  {
    if (this.cKn != 0)
      return this.cKn;
    return this.cKh.Hi();
  }

  public final void pause()
  {
    i.pause();
    this.cKh.aa(true);
    this.cKo = 0;
  }

  public final int vR()
  {
    if (this.cKm != 0)
      return this.cKm;
    return this.cKh.Ha();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.l
 * JD-Core Version:    0.6.2
 */