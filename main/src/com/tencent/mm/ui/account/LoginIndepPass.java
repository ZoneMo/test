package com.tencent.mm.ui.account;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.mobile.MobileVerifyUI;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public class LoginIndepPass extends MMActivity
  implements m
{
  private String bQI;
  private ProgressDialog cIr = null;
  private String cxs;
  private String eaA;
  private String eax;
  private SecurityImage gof = null;
  private Button gqF;
  private ch gqJ;
  private db gqV = new db();
  private String gqW;
  private EditText grh;
  private String gri;

  private boolean as(int paramInt1, int paramInt2)
  {
    boolean bool;
    if (com.tencent.mm.plugin.a.a.cHT.b(aal(), paramInt1, paramInt2))
      bool = true;
    do
    {
      return bool;
      bool = false;
    }
    while (paramInt1 != 4);
    Activity localActivity;
    switch (paramInt2)
    {
    default:
      return false;
    case -100:
      be.uH();
      localActivity = aal();
      if (!TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()))
        break;
    case -1:
    case -4:
    case -3:
    case -9:
    }
    for (String str = com.tencent.mm.an.a.m(aal(), n.bqs); ; str = com.tencent.mm.protocal.j.awH())
    {
      h.a(localActivity, str, aal().getString(n.ber), new co(this), new cp(this));
      return true;
      int i = be.uA().wS();
      bool = false;
      if (i != 6)
        break;
      h.c(this, n.bso, n.bsn);
      return true;
      h.c(this, n.bjZ, n.bpV);
      return true;
      h.c(this, n.bpU, n.bpV);
      return true;
    }
  }

  protected final void FR()
  {
    this.grh = ((EditText)findViewById(com.tencent.mm.i.awJ));
    this.gqF = ((Button)findViewById(com.tencent.mm.i.ayK));
    dg(false);
    a(0, getString(n.bpY), new ci(this));
    this.grh.addTextChangedListener(new cq(this));
    this.grh.setOnEditorActionListener(new cr(this));
    this.grh.setOnKeyListener(new cs(this));
    this.gqF.setText(getString(n.bqb));
    this.gqF.setOnClickListener(new ct(this));
    a(new cx(this));
    this.eax = getIntent().getStringExtra("auth_ticket");
    if (!com.tencent.mm.sdk.platformtools.cj.hX(this.eax))
      new Handler().postDelayed(new cy(this), 500L);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.LoginIndepPass", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (this.gqJ != null)
    {
      this.gqJ.dismiss();
      this.gqJ = null;
    }
    if (paramx.getType() == 380)
    {
      this.bQI = ((com.tencent.mm.modelsimple.i)paramx).BY();
      be.uA().b(380, this);
      this.gqV.grp = ((com.tencent.mm.modelsimple.i)paramx).zS();
      this.gqV.grr = ((com.tencent.mm.modelsimple.i)paramx).zR();
      this.gqV.grq = ((com.tencent.mm.modelsimple.i)paramx).BX();
      this.gqV.grs = ((com.tencent.mm.modelsimple.i)paramx).BW();
      this.gqV.cxs = this.cxs;
      this.gqV.gro = this.grh.getText().toString();
      if (paramInt2 == -75)
        com.tencent.mm.platformtools.ag.af(aal());
      do
      {
        return;
        if (paramInt2 == -106)
        {
          com.tencent.mm.platformtools.ag.v(this, paramString);
          return;
        }
        if (paramInt2 == -205)
        {
          this.eax = ((com.tencent.mm.modelsimple.i)paramx).xn();
          this.gqW = ((com.tencent.mm.modelsimple.i)paramx).BZ();
          db.a(this.gqV);
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("auth_ticket", this.eax);
          localIntent2.putExtra("binded_mobile", this.gqW);
          localIntent2.putExtra("from_source", 5);
          com.tencent.mm.plugin.a.a.cHS.f(this, localIntent2);
          return;
        }
        if (paramInt2 != -140)
          break;
      }
      while (com.tencent.mm.sdk.platformtools.cj.hX(this.bQI));
      com.tencent.mm.platformtools.ag.e(this, paramString, this.bQI);
      return;
      if ((paramInt1 != 4) || ((paramInt2 != -16) && (paramInt2 != -17)))
        break label980;
      be.uA().d(new cb(new cj(this)));
    }
    label980: for (int j = 1; ; j = 0)
    {
      if (paramInt2 == -6)
      {
        be.uA().a(380, this);
        if (this.gof == null)
        {
          this.gof = com.tencent.mm.ui.applet.i.a(aal(), n.bvU, this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq, new ck(this), null, new cm(this), this.gqV);
          return;
        }
        aa.d("MicroMsg.LoginIndepPass", "imgSid:" + this.gqV.grp + " img len" + this.gqV.grr.length + " " + com.tencent.mm.compatible.g.j.qg());
        this.gof.b(this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq);
        return;
      }
      if ((j != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        z.zu();
        com.tencent.mm.platformtools.ag.hP(this.gqV.cxs);
        f.T(this);
        com.tencent.mm.platformtools.ag.a(this, new cn(this));
        return;
      }
      if (as(paramInt1, paramInt2))
        break;
      int k = n.bmy;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt1);
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(k, arrayOfObject2), 0).show();
      return;
      if (paramx.getType() == 145)
      {
        be.uA().b(145, this);
        String str = ((com.tencent.mm.modelfriend.ag)paramx).zD();
        if (paramInt2 == -41)
        {
          h.c(this, n.bvA, n.bvB);
          return;
        }
        if (paramInt2 == -75)
        {
          h.p(this, getString(n.bdn), "");
          return;
        }
        b.ie("L3");
        b.b(true, be.uv() + "," + getClass().getName() + ",L3," + be.ds("L3") + ",1");
        Intent localIntent1 = new Intent();
        localIntent1.putExtra("bindmcontact_mobile", this.gri);
        localIntent1.putExtra("bindmcontact_shortmobile", str);
        localIntent1.putExtra("mobile_verify_purpose", 1);
        localIntent1.putExtra("login_type", 3);
        localIntent1.putExtra("mobileverify_countdownsec", ((com.tencent.mm.modelfriend.ag)paramx).zF());
        localIntent1.putExtra("mobileverify_countdownstyle", ((com.tencent.mm.modelfriend.ag)paramx).zG());
        localIntent1.putExtra("mobileverify_fb", ((com.tencent.mm.modelfriend.ag)paramx).zH());
        a(MobileVerifyUI.class, localIntent1);
        return;
      }
      if ((as(paramInt1, paramInt2)) || ((paramInt1 == 0) && (paramInt2 == 0)))
        break;
      int i = n.bmy;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(i, arrayOfObject1), 0).show();
      return;
    }
  }

  protected final int getLayoutId()
  {
    return k.aVt;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getString(n.bpW);
    if (com.tencent.mm.protocal.a.fxu)
      str = getString(n.amt) + getString(n.bdl);
    vT(str);
    this.gri = getIntent().getStringExtra("bindmcontact_mobile");
    if (this.gri != null)
      this.cxs = bc.sL(this.gri);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.eaA = b.FL();
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(380, this);
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    b.b(false, be.uv() + "," + getClass().getName() + ",L200_200," + be.ds("L200_200") + ",2");
  }

  public void onResume()
  {
    super.onResume();
    b.id("L200_200");
    b.b(true, be.uv() + "," + getClass().getName() + ",L200_200," + be.ds("L200_200") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.LoginIndepPass
 * JD-Core Version:    0.6.2
 */