package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.mobile.MobileVerifyUI;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import java.util.HashMap;
import java.util.Map;

@Deprecated
public class LoginByMobileUI extends MMActivity
  implements m
{
  private String cjJ = null;
  private String cuq = null;
  private String eaA;
  private EditText gqA;
  private LinearLayout gqB;
  private TextView gqC;
  private EditText gqD;
  private String gqE = null;
  private Button gqF;
  private com.tencent.mm.ui.account.mobile.a gqG = null;
  private Map gqH = new HashMap();
  private boolean gqI = true;
  private ch gqJ;
  private String gqK = null;
  private String gqL = null;
  private String gqM = "";

  private void goBack()
  {
    com.tencent.mm.plugin.a.b.ie(this.eaA);
    SM();
    finish();
  }

  protected final void FR()
  {
    this.gqH.clear();
    String[] arrayOfString1 = getString(n.aqK).trim().split(",");
    for (int i = 0; i < arrayOfString1.length; i++)
    {
      String[] arrayOfString2 = arrayOfString1[i].trim().split(":");
      this.gqH.put(arrayOfString2[0], arrayOfString2[1]);
    }
    this.gqA = ((EditText)findViewById(i.aHg));
    this.gqB = ((LinearLayout)findViewById(i.aqL));
    this.gqC = ((TextView)findViewById(i.aqM));
    this.gqD = ((EditText)findViewById(i.aqK));
    this.gqF = ((Button)findViewById(i.ayK));
    String str1 = getString(n.bvL);
    if (com.tencent.mm.protocal.a.fxu)
      str1 = getString(n.amt) + getString(n.bdl);
    vT(str1);
    dg(false);
    this.gqA.addTextChangedListener(new com.tencent.mm.ui.widget.c(this.gqA, null, 20));
    this.gqA.addTextChangedListener(new bc(this));
    this.gqD.addTextChangedListener(new be(this));
    a(0, getString(n.bec), new bf(this));
    if ((!cj.hX(this.cuq)) || (!cj.hX(this.cjJ)))
    {
      if ((this.cuq != null) && (!this.cuq.equals("")))
        this.gqC.setText(this.cuq);
      if ((this.cjJ != null) && (!this.cjJ.equals("")))
        this.gqD.setText("+" + this.cjJ);
      if ((this.gqE == null) || (this.gqE.equals("")))
        break label555;
      this.gqA.setText(this.gqE);
    }
    while (true)
    {
      this.gqB.setOnClickListener(new bg(this));
      this.gqF.setVisibility(0);
      this.gqF.setOnClickListener(new bh(this));
      a(new bi(this));
      return;
      String str5 = ((TelephonyManager)getSystemService("phone")).getSimCountryIso();
      aa.d("MicroMsg.LoginByMobileUI", "tm.getSimCountryIso()" + str5);
      if (cj.hX(str5))
      {
        aa.e("MicroMsg.LoginByMobileUI", "getDefaultCountryInfo error");
        break;
      }
      com.tencent.mm.x.c localc = com.tencent.mm.x.b.c(this, str5, getString(n.aqK));
      if (localc == null)
      {
        aa.e("MicroMsg.LoginByMobileUI", "getDefaultCountryInfo error");
        break;
      }
      this.cuq = localc.cuq;
      this.cjJ = localc.cup;
      break;
      label555: String str2 = ((TelephonyManager)getSystemService("phone")).getLine1Number();
      if ((str2 != null) && (!str2.equals("")) && (!cj.hX(this.cjJ)))
      {
        String str3 = str2.trim();
        if (str3.startsWith("+" + this.cjJ))
        {
          String str4 = "+" + this.cjJ;
          this.gqA.setText(str3.substring(str4.length()));
        }
      }
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.LoginByMobileUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gqJ != null)
    {
      this.gqJ.dismiss();
      this.gqJ = null;
    }
    if ((paramx.getType() == 380) && (this.gqG != null))
      this.gqG.a(this, paramInt1, paramInt2, paramString);
    int i;
    do
    {
      do
        return;
      while (paramx.getType() != 145);
      i = ((ag)paramx).vI();
      if (i == 13)
      {
        if (paramInt2 == -41)
        {
          com.tencent.mm.d.a locala2 = com.tencent.mm.d.a.be(paramString);
          if (locala2 != null)
          {
            locala2.a(this, null, null);
            return;
          }
          h.c(this, n.bvA, n.bvB);
          return;
        }
        if (paramInt2 == -35)
        {
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("bindmcontact_mobile", this.gqK + " " + this.gqL);
          a(LoginIndepPass.class, localIntent2);
          return;
        }
        if (paramInt2 == -1)
        {
          int j = n.bmy;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(paramInt1);
          arrayOfObject[1] = Integer.valueOf(paramInt2);
          Toast.makeText(this, getString(j, arrayOfObject), 0).show();
          return;
        }
        if (paramInt2 == -34)
        {
          h.p(this, getString(n.beS), "");
          return;
        }
        String str = ((ag)paramx).zD();
        if (!cj.hX(str))
          this.gqL = str.trim();
        this.gqL = com.tencent.mm.sdk.platformtools.bc.sL(this.gqL);
        com.tencent.mm.plugin.a.b.jdMethod_if(com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",L200_300," + com.tencent.mm.model.be.ds("L200_300") + ",1");
        com.tencent.mm.d.a locala1 = com.tencent.mm.d.a.be(paramString);
        if (locala1 != null)
        {
          locala1.a(this, new bk(this), new bm(this));
          return;
        }
        getString(n.ber);
        this.gqJ = h.a(this, getString(n.bvv), true, new bd(this));
        ag localag = new ag(this.gqK + this.gqL, 16, "", 0, "");
        com.tencent.mm.model.be.uA().d(localag);
        return;
      }
    }
    while (i != 16);
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
    com.tencent.mm.plugin.a.b.ie("L3");
    com.tencent.mm.plugin.a.b.jdMethod_if(com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",L3," + com.tencent.mm.model.be.ds("L3") + ",1");
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("bindmcontact_mobile", this.gqK + " " + this.gqA.getText().toString());
    localIntent1.putExtra("bindmcontact_shortmobile", this.gqL);
    localIntent1.putExtra("country_name", this.cuq);
    localIntent1.putExtra("couttry_code", this.cjJ);
    localIntent1.putExtra("login_type", 3);
    localIntent1.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
    localIntent1.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
    localIntent1.putExtra("mobileverify_fb", ((ag)paramx).zH());
    a(MobileVerifyUI.class, localIntent1);
  }

  protected final int getLayoutId()
  {
    return k.aVu;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt2)
    {
    default:
    case 100:
    }
    do
    {
      return;
      this.cuq = cj.R(paramIntent.getStringExtra("country_name"), "");
      this.cjJ = cj.R(paramIntent.getStringExtra("couttry_code"), "");
      if (!this.cuq.equals(""))
        this.gqC.setText(this.cuq);
    }
    while (this.cjJ.equals(""));
    this.gqD.setText("+" + this.cjJ);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cuq = cj.R(getIntent().getStringExtra("country_name"), "");
    this.cjJ = cj.R(getIntent().getStringExtra("couttry_code"), "");
    this.gqE = cj.R(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
    this.eaA = com.tencent.mm.plugin.a.b.FL();
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    com.tencent.mm.model.be.uA().b(145, this);
    com.tencent.mm.model.be.uA().b(380, this);
    com.tencent.mm.plugin.a.b.b(false, com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",L200_100," + com.tencent.mm.model.be.ds("L200_100") + ",2");
  }

  public void onResume()
  {
    super.onResume();
    com.tencent.mm.model.be.uA().a(380, this);
    com.tencent.mm.model.be.uA().a(145, this);
    com.tencent.mm.plugin.a.b.id("L200_100");
    com.tencent.mm.plugin.a.b.b(true, com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",L200_100," + com.tencent.mm.model.be.ds("L200_100") + ",1");
    this.gqD.setSelection(this.gqD.getText().toString().length());
    UY();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.LoginByMobileUI
 * JD-Core Version:    0.6.2
 */