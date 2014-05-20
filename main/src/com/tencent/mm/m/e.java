package com.tencent.mm.m;

import android.graphics.Bitmap;
import com.tencent.mm.a.d;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.protocal.a.lt;
import com.tencent.mm.protocal.a.ob;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.k;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.Stack;

public final class e
  implements com.tencent.mm.n.m
{
  private boolean ckk = false;
  private Set ckl = new HashSet();
  private d ckm = new d(400);
  private Stack ckn = new Stack();
  private bu cko = null;
  private bu ckp = null;
  private String ckq = null;
  private ay ckr = new ay(new h(this), false);

  public e()
  {
    be.uA().a(123, this);
    this.ckk = false;
    this.ckq = v.th();
    q.ckJ = new f(this);
  }

  private int a(bw parambw)
  {
    if (parambw == null)
      return -1;
    if ((parambw instanceof i))
    {
      if (this.cko == null)
        this.cko = new bu(1, "getavatar", 2, be.ut().getLooper());
      return this.cko.c(parambw);
    }
    if (this.ckp == null)
      this.ckp = new bu(1, "readsave", 1, be.ut().getLooper());
    return this.ckp.c(parambw);
  }

  private static x ea(String paramString)
  {
    x localx1 = af.wm().eq(paramString);
    if ((localx1 != null) && (localx1.getUsername().equals(paramString)));
    byte[] arrayOfByte;
    do
    {
      return localx1;
      com.tencent.mm.storage.i locali = be.uz().su().tO(paramString);
      if ((locali == null) || (!locali.getUsername().equals(paramString)))
        return null;
      if (locali.rz() == 4)
      {
        c.p(paramString, locali.rz());
        return null;
      }
      localx1 = new x();
      localx1.setUsername(paramString);
      localx1.bU(3);
      arrayOfByte = be.uz().su().tS(paramString);
    }
    while (cj.A(arrayOfByte));
    try
    {
      x localx2 = c.a(paramString, new ob().by(arrayOfByte));
      return localx2;
    }
    catch (Exception localException)
    {
    }
    return localx1;
  }

  private static m vJ()
  {
    if (be.se())
      return af.vJ();
    return null;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (paramx.getType() != 123);
    do
    {
      return;
      z localz = (z)paramx;
      HashSet localHashSet = new HashSet();
      if (localz.wd() != null)
      {
        Iterator localIterator2 = localz.wd().iterator();
        while (localIterator2.hasNext())
        {
          lt locallt = (lt)localIterator2.next();
          String str2 = locallt.fMZ.getString();
          if ((locallt.fzx != null) && (locallt.fzx.ayh() != null) && (locallt.fzx.ayh().getBytes() != null))
          {
            localHashSet.add(str2);
            x localx = new x();
            localx.setUsername(str2);
            localx.bU(3);
            a(new l(this, localx, locallt.fzx.ayh().getBytes()));
          }
        }
      }
      if (localz.wc() != null)
      {
        Iterator localIterator1 = localz.wc().iterator();
        while (localIterator1.hasNext())
        {
          String str1 = ((rw)localIterator1.next()).getString();
          if (!localHashSet.contains(str1))
            this.ckl.remove(str1);
        }
      }
      this.ckk = false;
    }
    while (this.ckn.size() <= 0);
    this.ckr.bO(0L);
  }

  public final Bitmap b(String paramString, boolean paramBoolean, int paramInt)
  {
    m localm = vJ();
    if (localm != null)
      if (paramInt > 5)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = paramString;
        arrayOfObject3[1] = Integer.valueOf(paramInt);
        localBitmap1 = m.ec(String.format("%s$$%d", arrayOfObject3));
        if (localBitmap1 != null)
        {
          Object[] arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = Integer.valueOf(paramInt);
          aa.d("MicroMsg.AvatarService", "find custom corner avatar, custom corner %d", arrayOfObject5);
          return localBitmap1;
        }
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Integer.valueOf(paramInt);
        aa.d("MicroMsg.AvatarService", "can not find custom corner avatar, custom corner %d", arrayOfObject4);
        label103: if (localBitmap1 != null);
      }
    for (Bitmap localBitmap1 = m.ec(paramString); ; localBitmap1 = null)
    {
      if (localBitmap1 != null)
      {
        if (paramInt <= 5)
          break;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(paramInt);
        aa.d("MicroMsg.AvatarService", "create custom corner avatar, custom corner %d", arrayOfObject1);
        Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(localBitmap1, false, paramInt);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = paramString;
        arrayOfObject2[1] = Integer.valueOf(paramInt);
        localm.c(String.format("%s$$%d", arrayOfObject2), localBitmap2);
        return localBitmap2;
      }
      if (paramBoolean)
        return null;
      aa.f("MicroMsg.AvatarService", "get bitmap from cache failed, try to load :%s", new Object[] { paramString });
      if (this.ckl.contains(paramString))
        return null;
      this.ckl.add(paramString);
      a(new j(this, paramString));
      return null;
      localBitmap1 = null;
      break label103;
    }
  }

  public final void cancel()
  {
    while (this.ckn.size() > 0)
      this.ckl.remove(this.ckn.pop());
  }

  public final void dY(String paramString)
  {
    a(new j(this, paramString));
  }

  public final void dZ(String paramString)
  {
    be.ut().o(new g(this, paramString));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.e
 * JD-Core Version:    0.6.2
 */