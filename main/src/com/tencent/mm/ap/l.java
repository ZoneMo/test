package com.tencent.mm.ap;

import android.content.ContentValues;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public final class l
{
  private ay cBV = new ay(Looper.getMainLooper(), new m(this), false);
  private String gfC = null;
  private BlockingQueue gjF = new LinkedBlockingQueue();
  private i gjx;

  public l(i parami, String paramString)
  {
    this.gjx = parami;
    this.gfC = paramString;
  }

  private int a(n paramn)
  {
    this.gjF.add(paramn);
    if (this.gjF.size() >= 40)
      aDC();
    if (this.cBV.azG())
      this.cBV.bO(60000L);
    return 0;
  }

  public final int a(ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    n localn = new n();
    localn.gjH = 3;
    localn.gjI = paramString;
    localn.values = new ContentValues(paramContentValues);
    localn.A(paramArrayOfString);
    return a(localn);
  }

  public final int a(String paramString, ContentValues paramContentValues)
  {
    n localn = new n();
    localn.gjH = 2;
    localn.gfz = paramString;
    localn.values = new ContentValues(paramContentValues);
    return a(localn);
  }

  public final int aDC()
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = this.gfC;
    arrayOfObject1[1] = Boolean.valueOf(this.gjx.inTransaction());
    arrayOfObject1[2] = Integer.valueOf(this.gjF.size());
    aa.e("MicroMsg.MemoryStorage.Holder", "appendAllToDisk table:%s trans:%b queue:%d", arrayOfObject1);
    if (this.gjF.isEmpty())
      return 0;
    long l;
    if (!this.gjx.inTransaction())
      l = this.gjx.ca(Thread.currentThread().getId());
    while (true)
      if (!this.gjF.isEmpty())
      {
        n localn = (n)this.gjF.poll();
        if (localn == null)
        {
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = this.gfC;
          aa.c("MicroMsg.MemoryStorage.Holder", "appendToDisk Holder == null. table:%s", arrayOfObject3);
        }
        else if ((this.gjx == null) || (!this.gjx.isOpen()))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.gfC;
          aa.b("MicroMsg.MemoryStorage.Holder", "appendToDisk diskDB already close. table:%s", arrayOfObject2);
        }
        else if (localn.gjH == 2)
        {
          this.gjx.insert(this.gfC, localn.gfz, localn.values);
        }
        else if (localn.gjH == 5)
        {
          this.gjx.delete(this.gfC, localn.gjI, localn.gjJ);
        }
        else if (localn.gjH == 1)
        {
          this.gjx.aQ(this.gfC, localn.cjp);
        }
        else if (localn.gjH == 4)
        {
          this.gjx.replace(this.gfC, localn.gfz, localn.values);
        }
        else if (localn.gjH == 3)
        {
          this.gjx.update(this.gfC, localn.values, localn.gjI, localn.gjJ);
        }
      }
      else
      {
        if (l <= 0L)
          break;
        this.gjx.cb(l);
        return 0;
        l = 0L;
      }
  }

  public final int b(String paramString, ContentValues paramContentValues)
  {
    n localn = new n();
    localn.gjH = 4;
    localn.gfz = paramString;
    localn.values = new ContentValues(paramContentValues);
    return a(localn);
  }

  public final int c(String paramString, String[] paramArrayOfString)
  {
    n localn = new n();
    localn.gjH = 5;
    localn.gjI = paramString;
    localn.A(paramArrayOfString);
    return a(localn);
  }

  public final int vP(String paramString)
  {
    n localn = new n();
    localn.gjH = 1;
    localn.cjp = paramString;
    return a(localn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ap.l
 * JD-Core Version:    0.6.2
 */