package com.tencent.mm.plugin.safedevice.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.EditText;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;

public class ModSafeDeviceNameUI extends MMActivity
  implements m
{
  private long cAU;
  private ProgressDialog cIr = null;
  private String dZV;
  private EditText eaa;
  private String eab;
  private String eac;
  private String ead;

  protected final void FR()
  {
    this.eab = getIntent().getStringExtra("safe_device_name");
    this.ead = getIntent().getStringExtra("safe_device_uid");
    this.dZV = getIntent().getStringExtra("safe_device_type");
    vT(com.tencent.mm.an.a.m(this, n.bwL));
    a(new c(this));
    a(0, getString(n.bei), new d(this));
    f localf = new f(this);
    this.eaa = ((EditText)findViewById(i.aBV));
    com.tencent.mm.ui.widget.c localc = new com.tencent.mm.ui.widget.c(this.eaa, null, 32);
    localc.b(localf);
    this.eaa.addTextChangedListener(localc);
    if (!cj.hX(this.eab))
    {
      this.eaa.setText(this.eab);
      return;
    }
    dg(false);
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
      localc = new com.tencent.mm.plugin.safedevice.a.c();
      localc.field_devicetype = this.dZV;
      localc.field_name = this.eac;
      localc.field_uid = this.ead;
      localc.field_createtime = this.cAU;
      com.tencent.mm.plugin.safedevice.a.f.Zu().a(localc, new String[0]);
      h.an(this, com.tencent.mm.an.a.m(this, n.bwO));
      new Handler().postDelayed(new g(this), 1000L);
    }
    while (!com.tencent.mm.plugin.a.a.cHT.b(this, paramInt1, paramInt2))
    {
      com.tencent.mm.plugin.safedevice.a.c localc;
      return;
    }
  }

  protected final int getLayoutId()
  {
    return k.aBV;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onPause()
  {
    be.uA().b(361, this);
    super.onPause();
  }

  protected void onResume()
  {
    be.uA().a(361, this);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.ModSafeDeviceNameUI
 * JD-Core Version:    0.6.2
 */