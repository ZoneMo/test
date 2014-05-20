package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ap;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public abstract class SetPwdUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  public String cgp = null;
  private String gum;
  private String gun;

  protected static boolean aGk()
  {
    return true;
  }

  protected ProgressDialog a(Context paramContext, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return h.a(paramContext, paramString, true, paramOnCancelListener);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != aFY());
    do
    {
      return;
      if (this.cIr != null)
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        be.uz().sr().set(3, cj.hZ(this.gum));
        be.uz().sr().set(19, cj.ia(this.gum));
        setResult(-1);
      }
    }
    while (bf(paramInt1, paramInt2));
    int i = n.bnn;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(i, arrayOfObject), 0).show();
  }

  protected abstract void a(ky paramky);

  protected abstract String aFW();

  protected abstract String aFX();

  protected int aFY()
  {
    return 383;
  }

  protected x aZ(String paramString1, String paramString2)
  {
    return new ap(paramString1, paramString2);
  }

  protected final boolean as(int paramInt1, int paramInt2)
  {
    return a.cHT.b(aal(), paramInt1, paramInt2);
  }

  protected abstract boolean bf(int paramInt1, int paramInt2);

  public void onCreate(Bundle paramBundle)
  {
    be.uA().a(aFY(), this);
    super.onCreate(paramBundle);
    this.cgp = getIntent().getStringExtra("setpwd_ticket");
    a(0, getString(n.bdY), new kv(this));
    a(new kx(this));
  }

  public void onDestroy()
  {
    be.uA().b(aFY(), this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.SetPwdUI
 * JD-Core Version:    0.6.2
 */