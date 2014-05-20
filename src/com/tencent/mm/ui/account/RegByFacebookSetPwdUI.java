package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ao;
import com.tencent.mm.n;
import com.tencent.mm.n.x;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;

public class RegByFacebookSetPwdUI extends SetPwdUI
{
  protected final void FR()
  {
    mn(n.bvx);
  }

  protected final ProgressDialog a(Context paramContext, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return h.a(paramContext, getString(n.bvv), true, paramOnCancelListener);
  }

  protected final void a(ky paramky)
  {
    switch (ge.gst[paramky.ordinal()])
    {
    default:
      return;
    case 1:
      h.c(this, n.bvr, n.bvt);
      return;
    case 2:
      h.c(this, n.bvs, n.bvt);
      return;
    case 3:
      h.c(this, n.bEe, n.bdI);
      return;
    case 4:
    }
    h.c(this, n.bEg, n.bdI);
  }

  protected final String aFW()
  {
    return ((EditText)findViewById(i.aHd)).getText().toString();
  }

  protected final String aFX()
  {
    return ((EditText)findViewById(i.aHc)).getText().toString();
  }

  protected final int aFY()
  {
    return 382;
  }

  protected final x aZ(String paramString1, String paramString2)
  {
    return new ao(paramString1);
  }

  protected final boolean bf(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      be.uz().sr().set(57, Integer.valueOf(0));
      String str = (String)be.uz().sr().get(5);
      h.a(this, getString(n.bvw, new Object[] { str }), getString(n.bvt), new gd(this));
      return true;
    }
    return as(paramInt1, paramInt2);
  }

  protected final int getLayoutId()
  {
    return k.aYB;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cgp = getIntent().getStringExtra("setpwd_ticket");
    mn(n.bvx);
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByFacebookSetPwdUI
 * JD-Core Version:    0.6.2
 */