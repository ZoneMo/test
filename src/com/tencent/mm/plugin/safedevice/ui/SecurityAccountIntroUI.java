package com.tencent.mm.plugin.safedevice.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;

public class SecurityAccountIntroUI extends MMWizardActivity
  implements m
{
  private String bTR;
  private ProgressDialog cIr = null;
  private String eaA;
  private String eax;
  private boolean eay = false;
  private Button eaz;

  private void Zz()
  {
    b.ie(this.eaA);
    cancel();
    aFs();
  }

  protected final void FR()
  {
    mn(n.bwU);
    findViewById(i.aDd).setOnClickListener(new w(this));
    if (!this.eay)
    {
      this.eaz = ((Button)findViewById(i.apH));
      this.eaz.setVisibility(0);
      this.eaz.setOnClickListener(new y(this));
    }
    a(new z(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (!this.eay);
      for (String str = ((ag)paramx).xn(); ; str = ((ai)paramx).xn())
      {
        aa.d("MicroMsg.SecurityAccountIntroUI", "duanyi test authTicket_login = " + this.eax + "duanyi test authTicket_check = " + str);
        Intent localIntent = new Intent(this, SecurityAccountVerifyUI.class);
        localIntent.putExtra("auth_ticket", str);
        localIntent.putExtra("binded_mobile", this.bTR);
        localIntent.putExtra("re_open_verify", this.eay);
        localIntent.putExtra("from_source", getIntent().getIntExtra("from_source", 1));
        j(this, localIntent);
        if (getIntent().getIntExtra("from_source", 1) == 3)
          finish();
        return;
      }
    }
    int i;
    switch (paramInt2)
    {
    default:
      i = 0;
    case -57:
    case -1:
    case -34:
    case -41:
    case -74:
    }
    while ((i == 0) && (!a.cHT.b(this, paramInt1, paramInt2)))
    {
      int j = n.bwR;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(j, arrayOfObject), 0).show();
      return;
      Toast.makeText(this, n.bdK, 0).show();
      i = 1;
      continue;
      Toast.makeText(this, n.beS, 0).show();
      i = 1;
      continue;
      Toast.makeText(this, n.beR, 0).show();
      i = 1;
      continue;
      h.a(this, n.beO, n.ber, null);
      i = 1;
    }
  }

  protected final int getLayoutId()
  {
    return k.aZe;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.eax = getIntent().getStringExtra("auth_ticket");
    this.bTR = getIntent().getStringExtra("binded_mobile");
    this.eay = getIntent().getBooleanExtra("re_open_verify", false);
    aa.d("MicroMsg.SecurityAccountIntroUI", "authTicket = " + this.eax);
    this.eaA = b.FL();
    FR();
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
    super.onPause();
    be.uA().b(145, this);
    be.uA().b(132, this);
    if (!this.eay)
      b.b(false, be.uv() + "," + getClass().getName() + ",L600_100," + be.ds("L600_100") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(145, this);
    be.uA().a(132, this);
    if (!this.eay)
    {
      b.id("L600_100");
      b.b(true, be.uv() + "," + getClass().getName() + ",L600_100," + be.ds("L600_100") + ",1");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.SecurityAccountIntroUI
 * JD-Core Version:    0.6.2
 */