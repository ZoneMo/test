package com.tencent.mm.plugin.wallet.address.ui;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.MMScrollView;
import com.tencent.mm.plugin.wallet.ui.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bt;
import java.util.LinkedList;

public class WalletAddAddressUI extends MMActivity
  implements m, l
{
  private String bPv = "";
  private Dialog dID = null;
  private int eWh = 0;
  private EditHintView eWi;
  private EditHintView eWj;
  private EditHintView eWk;
  private EditHintView eWl;
  private EditHintView eWm;
  private com.tencent.mm.plugin.wallet.protocal.b eWn = null;

  private boolean UW()
  {
    boolean bool1 = true;
    if (!this.eWi.UR())
      bool1 = false;
    if (!this.eWk.UR())
      bool1 = false;
    if (!this.eWj.UR())
      bool1 = false;
    if (!this.eWl.UR())
      bool1 = false;
    boolean bool2 = this.eWm.UR();
    boolean bool3 = false;
    if (!bool2);
    while (true)
    {
      dg(bool3);
      return bool3;
      bool3 = bool1;
    }
  }

  private void anc()
  {
    int i = n.bdc;
    if (this.eWh == 0)
      i = n.bdb;
    com.tencent.mm.ui.base.h.a(this, i, n.ber, new h(this), null);
  }

  public final void FR()
  {
    ((MMScrollView)findViewById(com.tencent.mm.i.aQU)).aoI();
    this.eWi = ((EditHintView)findViewById(com.tencent.mm.i.alf));
    this.eWj = ((EditHintView)findViewById(com.tencent.mm.i.alc));
    this.eWk = ((EditHintView)findViewById(com.tencent.mm.i.ald));
    this.eWl = ((EditHintView)findViewById(com.tencent.mm.i.ali));
    this.eWm = ((EditHintView)findViewById(com.tencent.mm.i.alh));
    this.eWi.a(this);
    this.eWj.a(this);
    this.eWk.a(this);
    this.eWl.a(this);
    this.eWm.a(this);
    this.eWi.jN(com.tencent.mm.h.afL);
    this.eWk.jN(com.tencent.mm.h.afL);
    this.eWl.jN(com.tencent.mm.h.afL);
    this.eWm.jN(com.tencent.mm.h.afL);
    this.eWj.setOnClickListener(new a(this));
    if (this.eWh != 0)
    {
      com.tencent.mm.plugin.wallet.c.c.anX();
      this.eWn = com.tencent.mm.plugin.wallet.c.c.anY().jz(this.eWh);
      this.eWi.pM(this.eWn.fda);
      this.eWj.pM(this.eWn.fcV + " " + this.eWn.fcW + " " + this.eWn.fcX);
      this.eWk.pM(this.eWn.fcZ);
      this.eWl.pM(this.eWn.fcY);
      this.eWm.pM(this.eWn.fdb);
    }
    a(new b(this));
    a(getString(n.bei), new c(this), bt.gnO);
    UW();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.dID != null)
      this.dID.dismiss();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      com.tencent.mm.plugin.wallet.c.c.anX();
      com.tencent.mm.plugin.wallet.protocal.a locala = com.tencent.mm.plugin.wallet.c.c.anY().amX();
      setResult(0);
      if (locala.fcT.size() > 0)
      {
        com.tencent.mm.plugin.wallet.protocal.b localb = (com.tencent.mm.plugin.wallet.protocal.b)locala.fcT.getFirst();
        if (localb != null)
        {
          Intent localIntent = new Intent();
          localIntent.putExtra("nationalCode", localb.fdc);
          localIntent.putExtra("userName", localb.fda);
          localIntent.putExtra("telNumber", localb.fdb);
          localIntent.putExtra("addressPostalCode", localb.fcY);
          localIntent.putExtra("proviceFirstStageName", localb.fcV);
          localIntent.putExtra("addressCitySecondStageName", localb.fcW);
          localIntent.putExtra("addressCountiesThirdStageName", localb.fcX);
          localIntent.putExtra("addressDetailInfo", localb.fcZ);
          setResult(-1, localIntent);
        }
      }
      finish();
      return;
    }
    switch (paramInt2)
    {
    default:
      com.tencent.mm.ui.base.h.a(this, n.bcW, 0, false, new g(this));
      return;
    case -3100:
    }
    com.tencent.mm.ui.base.h.a(this, n.bcY, 0, false, new f(this));
  }

  public final void aN(boolean paramBoolean)
  {
    UW();
  }

  protected final int getLayoutId()
  {
    return k.bbo;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1:
    }
    do
      return;
    while (paramInt2 != -1);
    String str1 = paramIntent.getStringExtra("karea_result");
    if (!cj.hX(str1))
    {
      aa.d("MicroMsg.WalletAddAddressUI", "AREA_RESULT:" + str1);
      this.eWj.pM(str1);
    }
    String str2 = paramIntent.getStringExtra("kpost_code");
    if (!cj.hX(str2))
    {
      aa.d("MicroMsg.WalletAddAddressUI", "post:" + str2);
      this.eWl.pM(str2);
    }
    this.bPv = paramIntent.getStringExtra("kwcode");
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(415, this);
    be.uA().a(418, this);
    aa.d("MicroMsg.WalletAddAddressUI", "index Oncreate");
    aa.lH(0);
    this.eWh = getIntent().getIntExtra("address_id", 0);
    if (this.eWh == 0)
      mn(n.bcZ);
    while (true)
    {
      com.tencent.mm.plugin.wallet.e.b.b(this);
      FR();
      return;
      mn(n.bdf);
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(415, this);
    be.uA().b(418, this);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      anc();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.WalletAddAddressUI
 * JD-Core Version:    0.6.2
 */