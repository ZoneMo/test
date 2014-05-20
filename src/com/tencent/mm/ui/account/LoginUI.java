package com.tencent.mm.ui.account;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
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
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

public class LoginUI extends MMActivity
  implements m
{
  private String bQI = "";
  private ProgressDialog cIr = null;
  private String cgp = null;
  private int eLl = 0;
  private String eaA;
  private String eax;
  private SecurityImage gof = null;
  private EditText gqR;
  private db gqV = new db();
  private String gqW;
  private EditText grx;
  private Button gry;
  private TextWatcher qx = new dd(this);

  private void goBack()
  {
    SM();
    com.tencent.mm.plugin.a.b.ie(this.eaA);
    finish();
  }

  protected final void FR()
  {
    this.grx = ((EditText)findViewById(com.tencent.mm.i.ayB));
    this.gqR = ((EditText)findViewById(com.tencent.mm.i.ayH));
    this.gry = ((Button)findViewById(com.tencent.mm.i.ayD));
    this.gry.setEnabled(false);
    findViewById(com.tencent.mm.i.ayF).setOnClickListener(new dm(this));
    boolean bool = com.tencent.mm.x.b.Bd();
    View localView = findViewById(com.tencent.mm.i.atp);
    int i;
    TextView localTextView1;
    float f2;
    if (!bool)
    {
      i = 8;
      localView.setVisibility(i);
      localView.setOnClickListener(new dn(this));
      a(new do(this));
      this.gry.setOnClickListener(new dp(this));
      this.eax = getIntent().getStringExtra("auth_ticket");
      if (!cj.hX(this.eax))
      {
        this.grx.setText(cj.hW(db.aFN()));
        this.gqR.setText(cj.hW(db.aFO()));
        new Handler().postDelayed(new dq(this), 500L);
      }
      this.grx.addTextChangedListener(this.qx);
      this.gqR.addTextChangedListener(this.qx);
      this.gqR.setOnEditorActionListener(new dr(this));
      this.gqR.setOnKeyListener(new ds(this));
      localTextView1 = (TextView)findViewById(com.tencent.mm.i.ayC);
      TextView localTextView2 = (TextView)findViewById(com.tencent.mm.i.ayJ);
      float f1 = localTextView1.getPaint().measureText(localTextView1.getText().toString());
      f2 = localTextView2.getPaint().measureText(localTextView2.getText().toString());
      if (f1 <= f2)
        break label356;
      localTextView2.setWidth((int)f1);
    }
    while (true)
    {
      if (com.tencent.mm.sdk.platformtools.j.gcq)
        com.tencent.mm.plugin.a.a.cHT.f(this);
      return;
      i = 0;
      break;
      label356: localTextView1.setWidth((int)f2);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.LoginUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() != 380)
      return;
    be.uA().b(380, this);
    this.bQI = ((com.tencent.mm.modelsimple.i)paramx).BY();
    this.gqV.grp = ((com.tencent.mm.modelsimple.i)paramx).zS();
    this.gqV.grr = ((com.tencent.mm.modelsimple.i)paramx).zR();
    this.gqV.grq = ((com.tencent.mm.modelsimple.i)paramx).BX();
    this.gqV.grs = ((com.tencent.mm.modelsimple.i)paramx).BW();
    this.cgp = ((com.tencent.mm.modelsimple.i)paramx).zC();
    if (paramInt2 == -205)
    {
      this.eax = ((com.tencent.mm.modelsimple.i)paramx).xn();
      this.gqW = ((com.tencent.mm.modelsimple.i)paramx).BZ();
    }
    int i;
    if ((paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
    {
      i = 1;
      be.uA().d(new cb(new dh(this)));
    }
    while (true)
    {
      if ((i != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        z.zu();
        ag.hP(this.gqV.cxs);
        f.T(this);
        ag.a(this, new di(this, paramx));
        com.tencent.mm.plugin.a.b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_900_phone," + be.ds("R200_900_phone") + ",4");
        return;
      }
      if (paramInt2 == -106)
      {
        ag.v(this, paramString);
        return;
      }
      if (paramInt2 == -30)
      {
        if (com.tencent.mm.protocal.a.fxu)
        {
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("rawUrl", this.bQI);
          localIntent2.putExtra("showShare", false);
          localIntent2.putExtra("show_bottom", false);
          localIntent2.putExtra("needRedirect", false);
          localIntent2.putExtra("neverGetA8Key", true);
          localIntent2.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
          localIntent2.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
          com.tencent.mm.plugin.a.a.cHS.h(localIntent2, this);
          return;
        }
        com.tencent.mm.plugin.a.b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R400_100_login," + be.ds("R400_100_login") + ",1");
        h.a(this, getString(n.bqf), "", new dj(this, paramx), new dk(this));
        return;
      }
      int j;
      if (com.tencent.mm.plugin.a.a.cHT.b(aal(), paramInt1, paramInt2))
        j = 1;
      while (j == 0)
      {
        int k = n.bmy;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(k, arrayOfObject), 0).show();
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
            h.c(this, n.bso, n.bsn);
            j = 1;
          }
          else
          {
            j = 0;
          }
          break;
        case -4:
        case -3:
          h.c(this, n.bjZ, n.bpV);
          j = 1;
          break;
        case -9:
          h.c(this, n.bpU, n.bpV);
          j = 1;
          break;
        case -72:
          h.c(aal(), n.bvM, n.ber);
          j = 1;
          break;
        case -75:
          ag.af(aal());
          j = 1;
          break;
        case -6:
          be.uA().a(380, this);
          if (this.gof == null)
            this.gof = com.tencent.mm.ui.applet.i.a(this, n.bvU, this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq, new dt(this), null, new de(this), this.gqV);
          while (true)
          {
            j = 1;
            break;
            aa.d("MicroMsg.LoginUI", "imgSid:" + this.gqV.grp + " img len" + this.gqV.grr.length + " " + com.tencent.mm.compatible.g.j.qg());
            this.gof.b(this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq);
          }
        case -100:
          be.uH();
          Activity localActivity = aal();
          if (TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()));
          for (String str = com.tencent.mm.an.a.m(aal(), n.bqs); ; str = com.tencent.mm.protocal.j.awH())
          {
            h.a(localActivity, str, aal().getString(n.ber), new df(this), new dg(this));
            j = 1;
            break;
          }
        case -205:
          db.a(this.gqV);
          com.tencent.mm.plugin.a.b.ie("L600_100");
          Intent localIntent1 = new Intent();
          localIntent1.putExtra("auth_ticket", this.eax);
          localIntent1.putExtra("binded_mobile", this.gqW);
          localIntent1.putExtra("from_source", 1);
          com.tencent.mm.plugin.a.a.cHS.f(this, localIntent1);
          j = 1;
          break;
        case -140:
          if (!cj.hX(this.bQI))
            ag.e(this, paramString, this.bQI);
          j = 1;
        }
      }
      break;
      i = 0;
    }
  }

  protected final int getLayoutId()
  {
    return k.aVr;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getString(n.bqa);
    if (com.tencent.mm.protocal.a.fxu)
      str = getString(n.amt) + getString(n.bdl);
    this.eLl = getIntent().getIntExtra("login_type", 0);
    vT(str);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.eaA = com.tencent.mm.plugin.a.b.FL();
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(380, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    if (this.eLl == 0)
      com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",L100_100_logout," + be.ds("L100_100_logout") + ",2");
    while (this.eLl != 1)
      return;
    com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",L400_100_login," + be.ds("L400_100_login") + ",2");
  }

  public void onResume()
  {
    super.onResume();
    if (this.eLl == 0)
    {
      com.tencent.mm.plugin.a.b.id("L100_100_logout");
      com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",L100_100_logout," + be.ds("L100_100_logout") + ",1");
    }
    while (this.eLl != 1)
      return;
    com.tencent.mm.plugin.a.b.id("L400_100_login");
    com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",L400_100_login," + be.ds("L400_100_login") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.LoginUI
 * JD-Core Version:    0.6.2
 */