package com.tencent.mm.app;

import com.tencent.mm.c.a.dg;
import com.tencent.mm.c.a.dh;
import com.tencent.mm.m.c;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class v extends g
{
  v(WorkerProfile paramWorkerProfile)
  {
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    if (be.se())
      if (((dg)parame).bOn.bOo != 3)
        break label38;
    label38: for (int i = 1; i != 0; i = 0)
    {
      bd.cik.s("login_user_name", "");
      return false;
    }
    String str = c.dW(com.tencent.mm.model.v.th());
    if ((str != null) && (!str.equals(bd.cik.t("last_avatar_path", null))))
    {
      aa.d("MicroMsg.WorkerProfile", "[PREF] last_avatar_path has changed, commit.");
      bd.cik.s("last_avatar_path", str);
    }
    bd.cik.a((String)be.uz().sr().get(6), ((Integer)be.uz().sr().get(9)).intValue(), (String)be.uz().sr().get(5));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.v
 * JD-Core Version:    0.6.2
 */