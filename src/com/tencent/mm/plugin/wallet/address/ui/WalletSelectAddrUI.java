package com.tencent.mm.plugin.wallet.address.ui;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.wallet.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.bt;
import java.util.LinkedList;
import java.util.List;

public class WalletSelectAddrUI extends MMActivity
  implements m
{
  private Dialog dID = null;
  private ListView eHV;
  private boolean eWA = false;
  private List eWv = new LinkedList();
  private com.tencent.mm.plugin.wallet.protocal.b eWw;
  private s eWx;
  private View eWy;
  private Object eWz = new Object();

  private void ane()
  {
    while (true)
    {
      synchronized (this.eWz)
      {
        com.tencent.mm.plugin.wallet.c.c.anX();
        this.eWv = com.tencent.mm.plugin.wallet.c.c.anY().amX().fcT;
        this.eWx.ai(this.eWv);
        if (this.eWv.size() > 0)
        {
          this.eHV.setItemChecked(0, true);
          this.eWw = this.eWx.jA(0);
          dh(true);
          this.eWy.setVisibility(0);
          this.eWx.notifyDataSetChanged();
          return;
        }
      }
      dh(false);
    }
  }

  public final void FR()
  {
    this.eHV = ((ListView)findViewById(com.tencent.mm.i.aJF));
    this.eWx = new s(this, this);
    this.eWy = View.inflate(this, com.tencent.mm.k.bbp, null);
    this.eWy.findViewById(com.tencent.mm.i.alb).setVisibility(8);
    ((TextView)this.eWy.findViewById(com.tencent.mm.i.alg)).setText(n.bcX);
    this.eHV.addFooterView(this.eWy);
    this.eHV.setAdapter(this.eWx);
    this.eHV.setOnItemClickListener(new k(this));
    this.eHV.setOnItemLongClickListener(new l(this));
    ane();
    this.eWy.setOnClickListener(new o(this));
    this.eWx.notifyDataSetChanged();
    a(new p(this));
    a(getString(n.bdY), new q(this), bt.gnO);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.dID != null)
      this.dID.dismiss();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if ((paramx.getType() == 417) && (((com.tencent.mm.plugin.wallet.address.model.b)paramx).eVW))
      {
        ane();
        getContentView().setVisibility(0);
      }
      if (paramx.getType() == 416)
      {
        com.tencent.mm.plugin.wallet.address.model.c localc = (com.tencent.mm.plugin.wallet.address.model.c)paramx;
        com.tencent.mm.plugin.wallet.c.c.anX();
        com.tencent.mm.plugin.wallet.protocal.b localb = com.tencent.mm.plugin.wallet.c.c.anY().jz(localc.amW());
        if (localb != null)
        {
          com.tencent.mm.plugin.wallet.c.c.anX();
          boolean bool = com.tencent.mm.plugin.wallet.c.c.anY().a(localb);
          aa.d("MicroMsg.WalletSelectAddrUI", "delte addr " + bool);
        }
        ane();
      }
      if ((paramx.getType() == 419) && (this.eWw != null))
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("nationalCode", this.eWw.fdc);
        localIntent.putExtra("userName", this.eWw.fda);
        localIntent.putExtra("telNumber", this.eWw.fdb);
        localIntent.putExtra("addressPostalCode", this.eWw.fcY);
        localIntent.putExtra("proviceFirstStageName", this.eWw.fcV);
        localIntent.putExtra("addressCitySecondStageName", this.eWw.fcW);
        localIntent.putExtra("addressCountiesThirdStageName", this.eWw.fcX);
        localIntent.putExtra("addressDetailInfo", this.eWw.fcZ);
        setResult(-1, localIntent);
        finish();
      }
    }
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.bbq;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (localIntent.getBooleanExtra("launch_from_webview", false))
    {
      this.eWA = true;
      getContentView().setVisibility(8);
    }
    mn(n.bdj);
    com.tencent.mm.plugin.wallet.e.b.b(this);
    be.uA().a(417, this);
    be.uA().a(416, this);
    be.uA().a(419, this);
    com.tencent.mm.plugin.wallet.address.model.b localb = new com.tencent.mm.plugin.wallet.address.model.b(localIntent.getStringExtra("req_url"), localIntent.getStringExtra("req_app_id"), 2);
    be.uA().d(localb);
    this.dID = com.tencent.mm.plugin.wallet.e.b.a(aal(), false, new j(this));
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(417, this);
    be.uA().b(416, this);
    be.uA().b(419, this);
  }

  public void onResume()
  {
    super.onResume();
    ane();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.WalletSelectAddrUI
 * JD-Core Version:    0.6.2
 */