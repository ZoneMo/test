package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public final class ab
  implements m, bd
{
  private SecurityImage gof = null;
  private a gqG = null;
  private MobileInputUI gvT;

  private void wc(String paramString)
  {
    MobileInputUI localMobileInputUI1 = this.gvT;
    MobileInputUI localMobileInputUI2 = this.gvT;
    this.gvT.getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bvv), true, new ac(this));
    ag localag = new ag(paramString, 16, "", 0, "");
    be.uA().d(localag);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.MobileInputLoginLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gvT.gqJ != null)
    {
      this.gvT.gqJ.dismiss();
      this.gvT.gqJ = null;
    }
    if ((paramx.getType() == 380) && (this.gqG != null))
      this.gqG.a(this.gvT, paramInt1, paramInt2, paramString);
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
            locala2.a(this.gvT, null, null);
            return;
          }
          h.c(this.gvT, n.bvA, n.bvB);
          return;
        }
        if (paramInt2 == -35)
        {
          this.gvT.gqK = this.gvT.gqD.getText().toString().trim();
          this.gvT.gqL = this.gvT.gqA.getText().toString();
          String str2 = this.gvT.gqK + this.gvT.gqL;
          this.gvT.SM();
          wc(str2);
          return;
        }
        if (paramInt2 == -1)
        {
          MobileInputUI localMobileInputUI1 = this.gvT;
          MobileInputUI localMobileInputUI2 = this.gvT;
          int j = n.bmy;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(paramInt1);
          arrayOfObject[1] = Integer.valueOf(paramInt2);
          Toast.makeText(localMobileInputUI1, localMobileInputUI2.getString(j, arrayOfObject), 0).show();
          return;
        }
        if (paramInt2 == -34)
        {
          h.p(this.gvT, this.gvT.getString(n.beS), "");
          return;
        }
        String str1 = ((ag)paramx).zD();
        if (!cj.hX(str1))
          this.gvT.gqL = str1.trim();
        this.gvT.gqL = com.tencent.mm.sdk.platformtools.bc.sL(this.gvT.gqL);
        b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L200_300," + be.ds("L200_300") + ",1");
        com.tencent.mm.d.a locala1 = com.tencent.mm.d.a.be(paramString);
        if (locala1 != null)
        {
          locala1.a(this.gvT, new ae(this), new af(this));
          return;
        }
        wc(this.gvT.gqK + this.gvT.gqL);
        return;
      }
    }
    while (i != 16);
    if (paramInt2 == -41)
    {
      h.c(this.gvT, n.bvA, n.bvB);
      return;
    }
    if (paramInt2 == -75)
    {
      h.p(this.gvT, this.gvT.getString(n.bdn), "");
      return;
    }
    b.ie("L3");
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L3," + be.ds("L3") + ",1");
    Intent localIntent = new Intent();
    localIntent.putExtra("mobile_verify_purpose", 1);
    localIntent.putExtra("bindmcontact_mobile", this.gvT.gqK + " " + this.gvT.gqA.getText().toString());
    localIntent.putExtra("bindmcontact_shortmobile", this.gvT.gqL);
    localIntent.putExtra("country_name", this.gvT.cuq);
    localIntent.putExtra("couttry_code", this.gvT.cjJ);
    localIntent.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
    localIntent.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
    localIntent.putExtra("mobileverify_fb", ((ag)paramx).zH());
    localIntent.setClass(this.gvT, MobileVerifyUI.class);
    this.gvT.startActivity(localIntent);
  }

  public final void a(MobileInputUI paramMobileInputUI)
  {
    this.gvT = paramMobileInputUI;
    paramMobileInputUI.mn(n.brG);
    paramMobileInputUI.gsz.setVisibility(8);
  }

  public final void a(bc parambc)
  {
    switch (ag.gvV[parambc.ordinal()])
    {
    default:
      return;
    case 1:
    }
    String str = this.gvT.gqK + this.gvT.gqL;
    this.gvT.SM();
    MobileInputUI localMobileInputUI1 = this.gvT;
    MobileInputUI localMobileInputUI2 = this.gvT;
    this.gvT.getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bvv), true, new ad(this));
    ag localag = new ag(str, 13, "", 0, "");
    be.uA().d(localag);
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
 * Qualified Name:     com.tencent.mm.ui.account.mobile.ab
 * JD-Core Version:    0.6.2
 */