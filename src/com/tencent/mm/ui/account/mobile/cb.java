package com.tencent.mm.ui.account.mobile;

import android.app.ProgressDialog;
import android.content.Intent;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.account.RegByMobileRegAIOUI;
import com.tencent.mm.ui.base.h;

public final class cb
  implements m, dq
{
  private a gqG = null;
  private MobileVerifyUI gwE;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.MobileVerifyLoginLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gwE.cIr != null)
    {
      this.gwE.cIr.dismiss();
      this.gwE.cIr = null;
    }
    if (paramx.getType() == 255)
    {
      be.uA().b(255, this);
      if ((paramInt1 != 0) || (paramInt2 != 0))
        this.gwE.aFR();
    }
    do
    {
      do
      {
        return;
        if (paramx.getType() == 380)
          this.gwE.bQI = ((i)paramx).BY();
        if ((paramx.getType() == 380) && (this.gqG != null))
        {
          be.uA().b(380, this);
          this.gqG.a(this.gwE, paramInt1, paramInt2, paramString);
          if ((paramInt1 == 0) && (paramInt2 == 0))
          {
            be.uA().a(255, this);
            com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(1);
            be.uA().d(localac);
            MobileVerifyUI localMobileVerifyUI4 = this.gwE;
            MobileVerifyUI localMobileVerifyUI5 = this.gwE;
            this.gwE.getString(n.ber);
            localMobileVerifyUI4.cIr = h.a(localMobileVerifyUI5, this.gwE.getString(n.byr), true, new ce(this, paramx));
            return;
          }
        }
        if (paramx.getType() != 145)
          break;
        be.uA().b(145, this);
      }
      while (((ag)paramx).vI() != 17);
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        be.uA().a(380, this);
        this.gqG = new a(new cf(this), ((ag)paramx).getUsername(), ((ag)paramx).zB(), this.gwE.bTR);
        this.gqG.l(this.gwE);
        return;
      }
      if (paramInt2 == -30)
      {
        b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L200_900_phone," + be.ds("L200_900_phone") + ",1");
        String str = com.tencent.mm.d.a.be(paramString).desc;
        MobileVerifyUI localMobileVerifyUI3 = this.gwE;
        if (cj.hX(str))
          str = this.gwE.getString(n.bqc);
        h.a(localMobileVerifyUI3, str, "", this.gwE.getString(n.bqe), this.gwE.getString(n.bqd), new cg(this, paramx), new ch(this));
        return;
      }
      if (paramInt2 == -51)
      {
        com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
        if (locala != null)
        {
          locala.a(this.gwE, null, null);
          return;
        }
        h.c(this.gwE, n.bfw, n.anM);
        return;
      }
    }
    while ((this.gwE.i(paramInt1, paramInt2, paramString)) || ((paramInt1 == 0) && (paramInt2 == 0)));
    MobileVerifyUI localMobileVerifyUI1 = this.gwE;
    MobileVerifyUI localMobileVerifyUI2 = this.gwE;
    int i = n.bfv;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(localMobileVerifyUI1, localMobileVerifyUI2.getString(i, arrayOfObject), 0).show();
  }

  public final void a(MobileVerifyUI paramMobileVerifyUI)
  {
    this.gwE = paramMobileVerifyUI;
  }

  public final boolean a(dp paramdp)
  {
    switch (ci.gwG[paramdp.ordinal()])
    {
    default:
      return false;
    case 1:
      b.ie("L200_100");
      if (this.gwE.gwQ.booleanValue());
      for (Intent localIntent = new Intent(this.gwE, RegByMobileRegAIOUI.class); ; localIntent = new Intent(this.gwE, MobileInputUI.class))
      {
        localIntent.putExtra("mobile_input_purpose", 1);
        localIntent.addFlags(67108864);
        this.gwE.startActivity(localIntent);
        this.gwE.finish();
        return false;
      }
    case 2:
      be.uA().a(145, this);
      ag localag3 = new ag(this.gwE.bTR, 17, this.gwE.grF.getText().toString().trim(), 0, "");
      be.uA().d(localag3);
      MobileVerifyUI localMobileVerifyUI3 = this.gwE;
      MobileVerifyUI localMobileVerifyUI4 = this.gwE;
      this.gwE.getString(n.ber);
      localMobileVerifyUI3.cIr = h.a(localMobileVerifyUI4, this.gwE.getString(n.bfu), true, new cd(this, localag3));
      return false;
    case 3:
      b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_400," + be.ds("R200_400") + ",1");
      be.uA().a(145, this);
      ag localag2 = new ag(this.gwE.bTR, 16, "", 0, "");
      be.uA().d(localag2);
      return false;
    case 4:
    }
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_350_auto," + be.ds("R200_350_auto") + ",1");
    be.uA().a(145, this);
    ag localag1 = new ag(this.gwE.bTR, 17, this.gwE.grF.getText().toString().trim(), 0, "");
    be.uA().d(localag1);
    MobileVerifyUI localMobileVerifyUI1 = this.gwE;
    MobileVerifyUI localMobileVerifyUI2 = this.gwE;
    this.gwE.getString(n.ber);
    localMobileVerifyUI1.cIr = h.a(localMobileVerifyUI2, this.gwE.getString(n.bfu), true, new cc(this, localag1));
    return false;
  }

  public final void start()
  {
    b.id("L200_400");
    b.b(true, be.uv() + "," + getClass().getName() + ",L200_400," + be.ds("L200_400") + ",1");
  }

  public final void stop()
  {
    int i = 2;
    if (this.gwE.grY != -1)
      i = this.gwE.grY;
    b.b(false, be.uv() + "," + getClass().getName() + ",L200_400," + be.ds("L200_400") + "," + i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cb
 * JD-Core Version:    0.6.2
 */