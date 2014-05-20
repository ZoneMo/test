package com.tencent.mm.af;

import com.tencent.mm.a.d;
import com.tencent.mm.ab.j;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ab;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class c
  implements m
{
  private static final d chd = new d(5);
  public static int cxX = 0;
  private static c cxY;
  private boolean cvF = false;
  private int cvG = 3;

  public static c CD()
  {
    if (cxY == null)
      cxY = new c();
    return cxY;
  }

  public static void CE()
  {
    Integer localInteger = Integer.valueOf(cj.c((Integer)be.uz().sr().get(16646145)));
    if (localInteger.intValue() < 0)
      localInteger = Integer.valueOf(0);
    be.uz().sr().set(16646145, Integer.valueOf(1 + localInteger.intValue()));
  }

  public static String getPrefix()
  {
    switch (cxX)
    {
    default:
      return "single_";
    case 0:
      return "single_";
    case 1:
      return "chatroom_";
    case 2:
    }
    return "app_";
  }

  public static int gu(String paramString)
  {
    int i = 5;
    if ((paramString == null) || (paramString.length() == 0))
      return i;
    if ((!paramString.startsWith("single")) || (paramString.startsWith("chatroom")))
      i = 7;
    if (paramString.startsWith("app"))
      i = 8;
    aa.d("upload", "type " + i);
    return i;
  }

  private void release()
  {
    this.cvF = false;
    be.uA().b(159, this);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((!(paramx instanceof ab)) || (((ab)paramx).wQ() != 9))
      aa.d("upload", "another scene");
    while (paramx.getType() != 159)
      return;
    if ((paramInt1 == 0) && (paramInt2 == 0))
      be.uz().sr().set(81944, Long.valueOf(cj.FC()));
    while (true)
    {
      release();
      return;
      int i = -1 + this.cvG;
      this.cvG = i;
      if (i < 0)
      {
        be.uz().sr().set(81944, Long.valueOf((3600000L + (cj.FD() - 86400000L)) / 1000L));
        this.cvG = 3;
      }
    }
  }

  public final void update()
  {
    be.uz().sr().set(16646145, Integer.valueOf(0));
    if ((!this.cvF) && (be.uz().isSDCardAvailable()))
    {
      release();
      this.cvF = true;
      be.uA().a(159, this);
      j localj = new j(9);
      be.uA().d(localj);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.c
 * JD-Core Version:    0.6.2
 */