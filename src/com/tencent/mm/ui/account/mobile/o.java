package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.account.db;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public final class o
  implements m, bd
{
  private String cxs;
  private String eax;
  private SecurityImage gof = null;
  private MobileInputUI gvT;

  private void ba(String paramString1, String paramString2)
  {
    if (cj.hX(paramString1))
    {
      h.c(this.gvT, n.bEj, n.bpV);
      return;
    }
    if (cj.hX(paramString2))
    {
      h.c(this.gvT, n.bEf, n.bpV);
      return;
    }
    this.gvT.gqR.setText(paramString2);
    this.gvT.SM();
    be.uA().a(380, this);
    com.tencent.mm.modelsimple.i locali = new com.tencent.mm.modelsimple.i(paramString1, paramString2, null, 1);
    be.uA().d(locali);
    MobileInputUI localMobileInputUI1 = this.gvT;
    MobileInputUI localMobileInputUI2 = this.gvT;
    this.gvT.getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bpZ), true, new u(this, locali));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MobileInputLoginLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gvT.gqJ != null)
    {
      this.gvT.gqJ.dismiss();
      this.gvT.gqJ = null;
    }
    String str1;
    db localdb;
    if (paramx.getType() == 380)
    {
      str1 = ((com.tencent.mm.modelsimple.i)paramx).BY();
      localdb = new db();
      be.uA().b(380, this);
      localdb.grp = ((com.tencent.mm.modelsimple.i)paramx).zS();
      localdb.grr = ((com.tencent.mm.modelsimple.i)paramx).zR();
      localdb.grq = ((com.tencent.mm.modelsimple.i)paramx).BX();
      localdb.grs = ((com.tencent.mm.modelsimple.i)paramx).BW();
      localdb.cxs = this.cxs;
      localdb.gro = this.gvT.gqR.getText().toString();
      if (paramInt2 != -75)
        break label200;
      ag.af(this.gvT);
    }
    label200: 
    do
    {
      return;
      if (paramInt2 == -106)
      {
        ag.v(this.gvT, paramString);
        return;
      }
      if (paramInt2 == -205)
      {
        this.eax = ((com.tencent.mm.modelsimple.i)paramx).xn();
        String str3 = ((com.tencent.mm.modelsimple.i)paramx).BZ();
        db.a(localdb);
        Intent localIntent = new Intent();
        localIntent.putExtra("auth_ticket", this.eax);
        localIntent.putExtra("binded_mobile", str3);
        localIntent.putExtra("from_source", 6);
        com.tencent.mm.plugin.a.a.cHS.f(this.gvT, localIntent);
        return;
      }
      if (paramInt2 != -140)
        break;
    }
    while (cj.hX(str1));
    ag.e(this.gvT, paramString, str1);
    return;
    if ((paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
      be.uA().d(new cb(new v(this)));
    for (int i = 1; ; i = 0)
    {
      if (paramInt2 == -6)
      {
        be.uA().a(380, this);
        if (this.gof == null)
        {
          this.gof = com.tencent.mm.ui.applet.i.a(this.gvT, n.bvU, localdb.grs, localdb.grr, localdb.grp, localdb.grq, new w(this, localdb), null, new y(this), localdb);
          return;
        }
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MobileInputLoginLogic", "imgSid:" + localdb.grp + " img len" + localdb.grr.length + " " + com.tencent.mm.compatible.g.j.qg());
        this.gof.b(localdb.grs, localdb.grr, localdb.grp, localdb.grq);
        return;
      }
      if ((i != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        com.tencent.mm.modelfriend.z.zu();
        ag.hP(localdb.cxs);
        f.T(this.gvT);
        ag.a(this.gvT, new z(this));
        return;
      }
      int j;
      if (com.tencent.mm.plugin.a.a.cHT.b(this.gvT, paramInt1, paramInt2))
        j = 1;
      label608: MobileInputUI localMobileInputUI3;
      while ((j == 0) && ((paramInt1 != 0) || (paramInt2 != 0)))
      {
        MobileInputUI localMobileInputUI1 = this.gvT;
        MobileInputUI localMobileInputUI2 = this.gvT;
        int k = n.bmy;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localMobileInputUI1, localMobileInputUI2.getString(k, arrayOfObject), 0).show();
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
            h.c(this.gvT, n.bso, n.bsn);
            j = 1;
          }
          else
          {
            j = 0;
          }
          break;
        case -4:
        case -3:
          h.c(this.gvT, n.bjZ, n.bpV);
          j = 1;
          break;
        case -9:
          h.c(this.gvT, n.bpU, n.bpV);
          j = 1;
          break;
        case -100:
          be.uH();
          localMobileInputUI3 = this.gvT;
          if (!TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()))
            break label889;
        }
      }
      label889: for (String str2 = com.tencent.mm.an.a.m(this.gvT, n.bqs); ; str2 = com.tencent.mm.protocal.j.awH())
      {
        h.a(localMobileInputUI3, str2, this.gvT.getString(n.ber), new aa(this), new q(this));
        j = 1;
        break label608;
        break;
      }
    }
  }

  public final void a(MobileInputUI paramMobileInputUI)
  {
    this.gvT = paramMobileInputUI;
    paramMobileInputUI.mn(n.brH);
    paramMobileInputUI.gsz.setVisibility(0);
    paramMobileInputUI.gwc.setVisibility(0);
    paramMobileInputUI.gwd.setVisibility(0);
    paramMobileInputUI.gwe.setVisibility(0);
    paramMobileInputUI.m(0, false);
    paramMobileInputUI.gwd.setOnClickListener(new p(this, paramMobileInputUI));
    paramMobileInputUI.gwe.setOnClickListener(new s(this, paramMobileInputUI));
    this.eax = paramMobileInputUI.getIntent().getStringExtra("auth_ticket");
    if (!cj.hX(this.eax))
      new Handler().postDelayed(new t(this), 500L);
  }

  public final void a(bc parambc)
  {
    switch (r.gvV[parambc.ordinal()])
    {
    default:
    case 1:
    }
    do
      return;
    while ((cj.hX(this.gvT.gqK)) || (cj.hX(this.gvT.gqL)));
    this.cxs = com.tencent.mm.sdk.platformtools.bc.sL(this.gvT.gqK + this.gvT.gqL);
    ba(this.cxs, this.gvT.gqR.getText().toString());
  }

  public final void start()
  {
    be.uA().a(380, this);
    be.uA().a(145, this);
    b.id("L200_100");
    b.b(true, be.uv() + "," + getClass().getName() + ",L200_100," + be.ds("L200_100") + ",1");
  }

  public final void stop()
  {
    be.uA().b(380, this);
    be.uA().b(145, this);
    b.b(false, be.uv() + "," + getClass().getName() + ",L200_100," + be.ds("L200_100") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.o
 * JD-Core Version:    0.6.2
 */