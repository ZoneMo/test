package com.tencent.mm.plugin.safedevice.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.plugin.safedevice.a.e;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import java.util.Map;

public class SecurityAccountVerifyUI extends MMWizardActivity
  implements m
{
  private String bNV;
  private String bNX;
  private String bTR;
  private ay cBV;
  private ProgressDialog cIr = null;
  private String eaA;
  private EditText eaE;
  private TextView eaF;
  private TextView eaG;
  private Button eaH;
  private boolean eaI = false;
  private String eax;
  private Button eaz;

  private void Zz()
  {
    cancel();
    aFs();
  }

  private boolean as(int paramInt1, int paramInt2)
  {
    if (com.tencent.mm.plugin.a.a.cHT.b(aal(), paramInt1, paramInt2))
      return true;
    switch (paramInt2)
    {
    default:
      return false;
    case -32:
      h.a(aal(), n.bfx, n.anM, null);
      return true;
    case -33:
      h.a(aal(), n.bfw, n.anM, null);
      return true;
    case -34:
      Toast.makeText(this, n.beS, 0).show();
      return true;
    case -57:
    case -1:
      Toast.makeText(aal(), n.bdK, 0).show();
      return true;
    case -41:
      Toast.makeText(aal(), n.beR, 0).show();
      return true;
    case -74:
    }
    h.a(aal(), n.beO, n.ber, null);
    return true;
  }

  protected final void FR()
  {
    this.bTR = getIntent().getStringExtra("binded_mobile");
    this.eax = getIntent().getStringExtra("auth_ticket");
    this.eaI = getIntent().getBooleanExtra("re_open_verify", false);
    this.eaE = ((EditText)findViewById(i.anL));
    this.eaF = ((TextView)findViewById(i.aBR));
    this.eaG = ((TextView)findViewById(i.aHu));
    this.eaH = ((Button)findViewById(i.aHt));
    this.eaE.addTextChangedListener(new aa(this));
    this.eaF.setText(cj.sZ(this.bTR));
    this.eaG.setTag(Integer.valueOf(60));
    this.cBV = new ay(new ab(this), true);
    this.eaH.setOnClickListener(new ac(this));
    if (!this.eaI)
    {
      this.eaz = ((Button)findViewById(i.apH));
      this.eaz.setVisibility(0);
      this.eaz.setOnClickListener(new ae(this));
    }
    a(new af(this));
    a(0, getString(n.bec), new ag(this));
    dg(false);
    mn(n.bwN);
    this.cBV.bO(1000L);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    switch (paramx.getType())
    {
    default:
    case 145:
    case 132:
    }
    do
    {
      com.tencent.mm.modelfriend.ag localag;
      do
      {
        do
        {
          return;
          localag = (com.tencent.mm.modelfriend.ag)paramx;
          if (localag.vI() != 10)
            break;
          if ((paramInt1 == 0) && (paramInt2 == 0))
          {
            com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.SecurityAccountVerifyUI", "resend verify code successfully");
            return;
          }
          Object[] arrayOfObject5 = new Object[2];
          arrayOfObject5[0] = Integer.valueOf(paramInt1);
          arrayOfObject5[1] = Integer.valueOf(paramInt2);
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.SecurityAccountVerifyUI", "resend verify code fail, errType %d, errCode %d", arrayOfObject5);
        }
        while (as(paramInt1, paramInt2));
        Activity localActivity2 = aal();
        int m = n.bwR;
        Object[] arrayOfObject6 = new Object[2];
        arrayOfObject6[0] = Integer.valueOf(paramInt1);
        arrayOfObject6[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localActivity2, getString(m, arrayOfObject6), 0).show();
        return;
        if (localag.vI() != 11)
          break;
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          this.eax = localag.xn();
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SecurityAccountVerifyUI", "duanyi test bind opmobile verify authticket = " + this.eax);
          int k = getIntent().getIntExtra("from_source", 1);
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("from_source", k);
          if (k == 1)
          {
            localIntent2.addFlags(67108864);
            localIntent2.putExtra("auth_ticket", this.eax);
            com.tencent.mm.plugin.safedevice.a.a(this, localIntent2, null);
            finish();
            return;
          }
          if (k == 2)
          {
            localIntent2.addFlags(67108864);
            localIntent2.putExtra("auth_ticket", this.eax);
            com.tencent.mm.plugin.safedevice.a.a(this, localIntent2, null);
            finish();
            return;
          }
          if (k == 3)
          {
            localIntent2.addFlags(67108864);
            localIntent2.putExtra("auth_ticket", this.eax);
            String str = getIntent().getStringExtra("WizardTransactionId");
            if (str == null)
              str = "";
            Intent localIntent3 = (Intent)gon.get(str);
            gon.clear();
            if (localIntent3 != null)
              com.tencent.mm.plugin.safedevice.a.a(this, localIntent2, localIntent3);
            while (true)
            {
              finish();
              return;
              com.tencent.mm.plugin.safedevice.a.a(this, localIntent2, null);
            }
          }
          if (k == 5)
          {
            localIntent2.addFlags(67108864);
            localIntent2.putExtra("auth_ticket", this.eax);
            com.tencent.mm.plugin.safedevice.a.a(this, localIntent2, null);
            finish();
            return;
          }
          if (k == 6)
          {
            localIntent2.addFlags(67108864);
            localIntent2.putExtra("auth_ticket", this.eax);
            com.tencent.mm.plugin.safedevice.a.a(this, localIntent2, null);
            finish();
            return;
          }
          aFs();
          return;
        }
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(paramInt1);
        arrayOfObject3[1] = Integer.valueOf(paramInt2);
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.SecurityAccountVerifyUI", "verify verify-code fail, errType %d, errCode %d", arrayOfObject3);
      }
      while (as(paramInt1, paramInt2));
      Activity localActivity1 = aal();
      int j = n.bwT;
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Integer.valueOf(paramInt1);
      arrayOfObject4[1] = Integer.valueOf(paramInt2);
      Toast.makeText(localActivity1, getString(j, arrayOfObject4), 0).show();
      return;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(localag.vI());
      arrayOfObject2[1] = Integer.valueOf(paramInt1);
      arrayOfObject2[2] = Integer.valueOf(paramInt2);
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.SecurityAccountVerifyUI", "unknow bind mobile for reg op code %d, errType %d, errCode %d", arrayOfObject2);
      return;
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        e.j(true, true);
        Intent localIntent1 = new Intent(this, MySafeDeviceListUI.class);
        localIntent1.addFlags(67108864);
        startActivity(localIntent1);
        finish();
        return;
      }
    }
    while (as(paramInt1, paramInt2));
    int i = n.bwT;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(i, arrayOfObject1), 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aZg;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.eaA = b.FL();
    FR();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.cBV.azn();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    be.uA().b(145, this);
    be.uA().b(132, this);
    super.onPause();
    if (!this.eaI)
      b.b(false, be.uv() + "," + getClass().getName() + ",L600_200," + be.ds("L600_200") + ",2");
  }

  protected void onResume()
  {
    be.uA().a(145, this);
    be.uA().a(132, this);
    super.onResume();
    if (!this.eaI)
    {
      b.id("L600_200");
      b.b(true, be.uv() + "," + getClass().getName() + ",L600_200," + be.ds("L600_200") + ",1");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.SecurityAccountVerifyUI
 * JD-Core Version:    0.6.2
 */