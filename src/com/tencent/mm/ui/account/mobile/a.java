package com.tencent.mm.ui.account.mobile;

import android.text.TextUtils;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.protocal.j;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public final class a
{
  private String cxs = "";
  private String gvN = "";
  private g gvO;
  private String username = "";

  public a(g paramg, String paramString1, String paramString2, String paramString3)
  {
    this.username = paramString1;
    this.cxs = paramString3;
    this.gvN = paramString2;
    this.gvO = paramg;
  }

  public final void a(MMActivity paramMMActivity, int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
      be.uA().d(new cb(new c(this)));
    for (int i = 1; ; i = 0)
    {
      if ((i != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        com.tencent.mm.modelsimple.f.T(paramMMActivity);
        ag.hP(this.cxs);
        ag.a(paramMMActivity, new d(this, paramMMActivity));
        return;
      }
      if (paramInt2 == -106)
      {
        ag.v(paramMMActivity, paramString);
        return;
      }
      int j;
      if (com.tencent.mm.plugin.a.a.cHT.b(paramMMActivity, paramInt1, paramInt2))
        j = 1;
      label113: 
      while (j == 0)
      {
        int k = n.bmy;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(paramMMActivity, paramMMActivity.getString(k, arrayOfObject), 0).show();
        return;
        if (paramInt1 == 4);
        switch (paramInt2)
        {
        default:
          j = 0;
          break;
        case -1:
          if (be.uA().wS() == 6)
          {
            h.c(paramMMActivity, n.bso, n.bsn);
            j = 1;
          }
          break;
        case -4:
        case -3:
          h.c(paramMMActivity, n.bjZ, n.bpV);
          j = 1;
          break;
        case -9:
          h.c(paramMMActivity, n.bpU, n.bpV);
          j = 1;
          break;
        case -72:
          h.c(paramMMActivity, n.bvM, n.ber);
          j = 1;
          break;
        case -75:
          h.c(paramMMActivity, n.bdn, n.ber);
          j = 1;
          break;
        case -100:
          be.uH();
          if (!TextUtils.isEmpty(j.awH()))
            break label395;
        }
      }
      label395: for (String str = com.tencent.mm.an.a.m(paramMMActivity, n.bqs); ; str = j.awH())
      {
        h.a(paramMMActivity, str, paramMMActivity.getString(n.ber), new e(this), new f(this));
        j = 1;
        break label113;
        break;
      }
    }
  }

  public final void l(MMActivity paramMMActivity)
  {
    i locali = new i(this.username, "", false, "", "", "", 0);
    locali.gr(this.gvN);
    be.uA().d(locali);
    g localg = this.gvO;
    paramMMActivity.getString(n.ber);
    localg.a(h.a(paramMMActivity, paramMMActivity.getString(n.bpZ), true, new b(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.a
 * JD-Core Version:    0.6.2
 */