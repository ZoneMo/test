package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bg;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bindqq.BindQQUI;
import com.tencent.mm.ui.widget.c;

@Deprecated
public class RegByMobileSetNickUI extends MMActivity
  implements m
{
  private String bTR;
  private ProgressDialog cIr = null;
  private EditText gsR;
  private fq gsS = null;
  private boolean gsT;

  protected final void FR()
  {
    mn(n.bvD);
    this.gsR = ((EditText)findViewById(i.aHh));
    this.gsR.addTextChangedListener(new c(this.gsR, null, 16));
    a(0, getString(n.bdY), new hv(this));
    a(new hx(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RegByMobileSetNickUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (!cj.ag(this));
    while (true)
    {
      return;
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        int k = v.tl();
        aa.d("MicroMsg.RegByMobileSetNickUI", "Reg By mobile status = " + k + " isSync = " + this.gsT);
        int m;
        if (this.gsT)
        {
          m = k & 0xFFFDFFFF;
          z.zm();
          AddrBookObserver.N(getApplicationContext());
          aa.d("MicroMsg.RegByMobileSetNickUI", "Reg By mobile update = " + m);
          be.uz().sr().set(7, Integer.valueOf(m));
          if (this.gsT)
            break label300;
        }
        Intent localIntent;
        label300: for (int n = 1; ; n = 2)
        {
          be.uz().st().a(new bg(17, n));
          a.cHT.nE();
          bd.cik.s("login_user_name", this.bTR);
          localIntent = a.cHS.w(this);
          localIntent.putExtra("LauncherUI.enter_from_reg", true);
          localIntent.addFlags(67108864);
          if (!((ad)paramx).Cw())
            break label306;
          MMWizardActivity.b(this, new Intent(this, BindQQUI.class).putExtra("bindqq_regbymobile", 1), localIntent);
          return;
          m = k | 0x20000;
          break;
        }
        label306: MMWizardActivity.b(this, new Intent(this, BindFacebookUI.class), localIntent);
        return;
      }
      int i;
      if (a.cHT.b(aal(), paramInt1, paramInt2))
        i = 1;
      while (i == 0)
      {
        int j = n.bnj;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(j, arrayOfObject), 0).show();
        return;
        switch (paramInt1)
        {
        default:
        case 4:
        }
        do
        {
          i = 0;
          break;
          if ((paramInt2 == -7) || (paramInt2 == -10))
          {
            h.c(this, n.buV, n.buW);
            i = 1;
            break;
          }
        }
        while (paramInt2 != -75);
        h.c(this, n.bdo, n.buW);
        i = 1;
      }
    }
  }

  protected final int getLayoutId()
  {
    return k.aYE;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gsT = getIntent().getBooleanExtra("is_sync_addr", false);
    this.bTR = getIntent().getExtras().getString("bindmcontact_mobile");
    FR();
    be.uA().a(126, this);
  }

  public void onDestroy()
  {
    if (this.gsS != null)
      this.gsS.cancel();
    be.uA().b(126, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileSetNickUI
 * JD-Core Version:    0.6.2
 */