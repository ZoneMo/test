package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.backup.a.e;
import com.tencent.mm.plugin.backup.a.g;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class u
{
  private final String bRt = d.Gr() + "bakchatUpload.info";
  private long cKB = 0L;
  private boolean cKC;
  private e cKF;

  public u()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.bRt;
    aa.d("MicroMsg.BckUploadInfoMgr", "init path %s", arrayOfObject);
    Hl();
  }

  private boolean Hl()
  {
    if (this.cKF != null)
      return true;
    if (!c.as(this.bRt))
    {
      this.cKF = new e();
      return false;
    }
    try
    {
      byte[] arrayOfByte = c.h(this.bRt, 0, -1);
      this.cKF = new e().E(arrayOfByte);
      this.cKF.cJg = 0;
      return true;
    }
    catch (Exception localException)
    {
      this.cKF = new e();
    }
    return false;
  }

  private boolean ab(boolean paramBoolean)
  {
    if (this.cKF.cJn.isEmpty())
    {
      c.deleteFile(this.bRt);
      return false;
    }
    int i;
    if (!paramBoolean)
    {
      if ((this.cKB != 0L) && (cj.O(this.cKB) <= 20000L))
        break label96;
      i = 1;
    }
    while (true)
    {
      if (i != 0);
      try
      {
        this.cKB = cj.FE();
        byte[] arrayOfByte = this.cKF.toByteArray();
        this.cKC = false;
        be.ut().o(new v(this, arrayOfByte));
        return true;
        label96: i = 0;
      }
      catch (Exception localException)
      {
      }
    }
    return false;
  }

  public final void A(String paramString, int paramInt)
  {
    try
    {
      this.cKF.cJo = paramString;
      this.cKF.cJp = paramInt;
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int GT()
  {
    try
    {
      int i = this.cKF.cIZ;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String GU()
  {
    try
    {
      String str = this.cKF.cJa;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int GV()
  {
    try
    {
      int i = this.cKF.cJb;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int Ha()
  {
    try
    {
      int i = this.cKF.cIK;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean Hb()
  {
    try
    {
      int i = this.cKF.cJg;
      if (i == 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final LinkedList Hc()
  {
    try
    {
      LinkedList localLinkedList = this.cKF.cJm;
      return localLinkedList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final LinkedList Hd()
  {
    try
    {
      LinkedList localLinkedList = this.cKF.cJl;
      return localLinkedList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int He()
  {
    try
    {
      int i = this.cKF.cJl.size();
      int j = this.cKF.cJm.size();
      int k = i + j;
      return k;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final LinkedList Hf()
  {
    try
    {
      LinkedList localLinkedList = this.cKF.cJn;
      return localLinkedList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String Hg()
  {
    try
    {
      String str = this.cKF.cJo;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int Hh()
  {
    try
    {
      int i = this.cKF.cJp;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int Hi()
  {
    try
    {
      int i = this.cKF.cJq;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean Hj()
  {
    try
    {
      int i = this.cKF.cJr;
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final int Hk()
  {
    try
    {
      int i = this.cKF.cJs;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void U(int paramInt1, int paramInt2)
  {
    try
    {
      this.cKF.cJq = paramInt1;
      this.cKF.cIK = paramInt2;
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(com.tencent.mm.plugin.backup.a.d paramd)
  {
    try
    {
      this.cKF.cJl.add(paramd);
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(g paramg)
  {
    try
    {
      this.cKF.cJm.add(paramg);
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString, LinkedList paramLinkedList, boolean paramBoolean, int paramInt)
  {
    try
    {
      this.cKF = new e();
      this.cKF.cJa = paramString;
      this.cKF.cJb = 0;
      this.cKF.cJn = paramLinkedList;
      this.cKF.cJg = 1;
      if (paramBoolean)
      {
        this.cKF.cJr = 1;
        this.cKF.cJs = paramInt;
      }
      ab(true);
      return;
    }
    finally
    {
    }
  }

  public final void aa(boolean paramBoolean)
  {
    int i = 1;
    try
    {
      e locale = this.cKF;
      if (paramBoolean)
        i = 0;
      locale.cJg = i;
      if (paramBoolean)
        ab(true);
      return;
    }
    finally
    {
    }
  }

  public final void eY(int paramInt)
  {
    try
    {
      this.cKF.cJb = paramInt;
      ab(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void fb(int paramInt)
  {
    try
    {
      this.cKF.cIZ = paramInt;
      ab(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void fc(int paramInt)
  {
    while (true)
    {
      try
      {
        Iterator localIterator1 = this.cKF.cJm.iterator();
        if (localIterator1.hasNext())
        {
          g localg = (g)localIterator1.next();
          if (localg.csY != paramInt)
            continue;
          this.cKF.cJm.remove(localg);
          i = 1;
          if (i != 0)
            continue;
          Iterator localIterator2 = this.cKF.cJl.iterator();
          if (localIterator2.hasNext())
          {
            com.tencent.mm.plugin.backup.a.d locald = (com.tencent.mm.plugin.backup.a.d)localIterator2.next();
            Iterator localIterator3 = locald.cJj.iterator();
            if (!localIterator3.hasNext())
              continue;
            ae localae = (ae)localIterator3.next();
            if (localae.fzo != paramInt)
              continue;
            locald.cJj.remove(localae);
            ab(false);
            return;
          }
          ab(false);
          continue;
        }
      }
      finally
      {
      }
      int i = 0;
    }
  }

  public final void iv(String paramString)
  {
    try
    {
      Iterator localIterator = this.cKF.cJm.iterator();
      while (localIterator.hasNext())
      {
        g localg = (g)localIterator.next();
        if (paramString.equals(localg.mediaId))
          this.cKF.cJm.remove(localg);
      }
      ab(false);
      return;
    }
    finally
    {
    }
  }

  public final void iw(String paramString)
  {
    try
    {
      Iterator localIterator = this.cKF.cJl.iterator();
      while (localIterator.hasNext())
      {
        com.tencent.mm.plugin.backup.a.d locald = (com.tencent.mm.plugin.backup.a.d)localIterator.next();
        if (paramString.equals(locald.cJh))
          this.cKF.cJl.remove(locald);
      }
      ab(false);
      return;
    }
    finally
    {
    }
  }

  public final void reset()
  {
    try
    {
      this.cKF = new e();
      c.deleteFile(this.bRt);
      this.cKC = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.u
 * JD-Core Version:    0.6.2
 */