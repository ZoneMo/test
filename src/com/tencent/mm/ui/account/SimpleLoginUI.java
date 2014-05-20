package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.accountsync.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

public class SimpleLoginUI extends MMWizardActivity
  implements m
{
  private String bQI = "";
  private ProgressDialog cIr = null;
  private String eax;
  private SecurityImage gof = null;
  private EditText gqR;
  private db gqV = new db();
  private String gqW;
  private EditText grx;
  private Button gry;

  protected final void FR()
  {
    if (com.tencent.mm.sdk.platformtools.j.gcq)
      a.cHT.f(this);
    this.grx = ((EditText)findViewById(com.tencent.mm.i.ayB));
    this.gqR = ((EditText)findViewById(com.tencent.mm.i.ayH));
    this.gry = ((Button)findViewById(com.tencent.mm.i.ayD));
    findViewById(com.tencent.mm.i.ayF).setVisibility(8);
    mn(n.bqa);
    a(new le(this));
    this.eax = getIntent().getStringExtra("auth_ticket");
    if (!cj.hX(this.eax))
    {
      this.grx.setText(cj.hW(db.aFN()));
      this.gqR.setText(cj.hW(db.aFO()));
      new Handler().postDelayed(new lf(this), 500L);
    }
    if (com.tencent.mm.sdk.platformtools.j.gcq)
      a.cHT.f(this);
    this.gry.setOnClickListener(new lg(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.SimpleLoginUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    aa.d("MicroMsg.SimpleLoginUI", "Scene Type " + paramx.getType());
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    this.bQI = ((com.tencent.mm.modelsimple.i)paramx).BY();
    int i;
    if (paramx.getType() == 380)
    {
      this.gqV.grs = ((com.tencent.mm.modelsimple.i)paramx).BW();
      this.gqV.grp = ((com.tencent.mm.modelsimple.i)paramx).zS();
      this.gqV.grr = ((com.tencent.mm.modelsimple.i)paramx).zR();
      this.gqV.grq = ((com.tencent.mm.modelsimple.i)paramx).BX();
      if (paramInt2 == -205)
      {
        this.eax = ((com.tencent.mm.modelsimple.i)paramx).xn();
        this.gqW = ((com.tencent.mm.modelsimple.i)paramx).BZ();
      }
      if ((paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
      {
        i = 1;
        be.uA().d(new cb(new ll(this)));
      }
    }
    while (true)
    {
      if ((i != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        f.T(this);
        ag.hP(this.gqV.cxs);
        b.a(aal(), new lm(this));
      }
      while (true)
      {
        return;
        int j;
        if (a.cHT.b(aal(), paramInt1, paramInt2))
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
            break;
          case -30:
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
            if (this.gof == null)
              this.gof = com.tencent.mm.ui.applet.i.a(aal(), n.bvU, this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq, new li(this), null, new lk(this), this.gqV);
            while (true)
            {
              j = 1;
              break;
              aa.d("MicroMsg.SimpleLoginUI", "imgSid:" + this.gqV.grp + " img len" + this.gqV.grr.length + " " + com.tencent.mm.compatible.g.j.qg());
              this.gof.b(this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq);
            }
          case -205:
            db.a(this.gqV);
            Intent localIntent = new Intent();
            localIntent.putExtra("auth_ticket", this.eax);
            localIntent.putExtra("binded_mobile", this.gqW);
            localIntent.putExtra("from_source", 3);
            a.cHS.f(this, localIntent);
            j = 1;
            break;
          case -140:
            if (!cj.hX(this.bQI))
              ag.e(this, paramString, this.bQI);
            j = 1;
            break;
          case -106:
            ag.v(this, paramString);
            j = 1;
          }
        }
      }
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
    mn(n.amt);
    a.cHT.nJ();
    FR();
    be.uA().a(380, this);
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
      cancel();
      aFs();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.eax = paramIntent.getStringExtra("auth_ticket");
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
      this.eax = localBundle.getString("auth_ticket");
    if (!cj.hX(this.eax))
    {
      this.grx.setText(cj.hW(db.aFN()));
      this.gqR.setText(cj.hW(db.aFO()));
      new Handler().postDelayed(new ld(this), 500L);
    }
  }

  protected void onPause()
  {
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    super.onPause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.SimpleLoginUI
 * JD-Core Version:    0.6.2
 */