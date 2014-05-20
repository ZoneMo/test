package com.tencent.mm.plugin.d.c;

import android.util.SparseArray;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;

final class j
{
  private static SparseArray dZK;

  static
  {
    SparseArray localSparseArray = new SparseArray();
    dZK = localSparseArray;
    localSparseArray.put(3, new a());
    dZK.put(1, new e());
    dZK.put(0, new b());
  }

  static void Zh()
  {
    for (int i = 0; i < dZK.size(); i++)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(dZK.keyAt(i));
      aa.f("MicroMsg.ReportLogic", "do save, key = %d", arrayOfObject);
      ((l)dZK.valueAt(i)).save();
    }
  }

  static void Zi()
  {
    for (int i = 0; i < dZK.size(); i++)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(dZK.keyAt(i));
      aa.f("MicroMsg.ReportLogic", "do clear, key = %d", arrayOfObject);
      ((l)dZK.valueAt(i)).clear();
    }
  }

  static String Zj()
  {
    if (be.se())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = be.uz().sS();
      arrayOfObject[1] = f.h("__report_rule__".getBytes());
      return String.format("%s/%s", arrayOfObject);
    }
    return "";
  }

  static void a(com.tencent.mm.plugin.d.a.e parame, boolean paramBoolean)
  {
    if (parame == null)
    {
      aa.w("MicroMsg.ReportLogic", "inqueue info is null");
      return;
    }
    int i = parame.getType();
    l locall = (l)dZK.get(i);
    if (locall != null)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = Boolean.valueOf(paramBoolean);
      aa.f("MicroMsg.ReportLogic", "get reportHelper ok, type=%d, sync=%B", arrayOfObject2);
      if (!paramBoolean)
      {
        be.ut().o(new k(locall, parame));
        return;
      }
      locall.b(parame);
      return;
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    aa.e("MicroMsg.ReportLogic", "get reportHelper fail, it is null, type=%d", arrayOfObject1);
  }

  static x hA(int paramInt)
  {
    l locall = (l)dZK.get(paramInt);
    if (locall != null)
      return locall.Za();
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.j
 * JD-Core Version:    0.6.2
 */