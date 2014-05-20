package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.f;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.g;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;

public class WalletBankcardManageUI extends WalletBaseUI
{
  private ListView dbd = null;
  private ArrayList eYk = null;
  private a eYl = null;
  private TextView eYm;
  private int mCount = 0;
  private View nU;

  private void LP()
  {
    if ((c.anX().anZ()) || (c.anX().aob() == -1))
    {
      this.eYm.setEnabled(false);
      if (this.mCount <= 0)
        break label94;
      this.dbd.setVisibility(0);
      label42: if (this.mCount > 0)
        break label106;
      this.nU.setVisibility(0);
    }
    while (true)
    {
      this.eYl.w(this.eYk);
      this.eYl.notifyDataSetChanged();
      return;
      c.anX().aob();
      this.eYm.setEnabled(true);
      break;
      label94: this.dbd.setVisibility(8);
      break label42;
      label106: this.nU.setVisibility(8);
    }
  }

  protected final void FR()
  {
    aa.d("MicroMsg.WalletBankcardManageUI", "index initView");
    findViewById(i.aQl).setBackgroundResource(f.aaG);
    a(new p(this));
    this.eYm = ((TextView)findViewById(i.aPH));
    this.eYm.setOnClickListener(new q(this));
    this.dbd = ((ListView)findViewById(i.anf));
    this.eYl = new a(this, this.eYk);
    this.dbd.setAdapter(this.eYl);
    this.nU = findViewById(i.empty);
    this.dbd.setOnItemClickListener(new r(this));
  }

  public final boolean Vi()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama)
  {
    aa.d("MicroMsg.WalletBankcardManageUI", "onSceneEnd");
    boolean bool1 = false;
    int i;
    if (paramInt1 == 0)
    {
      bool1 = false;
      if (paramInt2 == 0)
      {
        boolean bool2 = parama instanceof g;
        bool1 = false;
        if (bool2)
        {
          g localg = (g)parama;
          this.eYk = localg.eXH;
          i = localg.eXI;
          if (this.eYk == null)
            break label121;
        }
      }
    }
    label121: for (this.mCount = this.eYk.size(); ; this.mCount = 0)
    {
      aa.d("MicroMsg.WalletBankcardManageUI", "isReg:" + i + ", mCount:" + this.mCount);
      LP();
      bool1 = true;
      return bool1;
    }
  }

  public void finish()
  {
    super.finish();
    Intent localIntent = new Intent();
    localIntent.addFlags(67108864);
    com.tencent.mm.ak.a.b(this, "mall", ".ui.MallIndexUI", localIntent);
  }

  protected final int getLayoutId()
  {
    return k.bbH;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getContentView().setVisibility(0);
    aa.d("MicroMsg.WalletBankcardManageUI", "index Oncreate");
    mn(n.bGm);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
    if ((c.anX().anZ()) || (c.anX().aob() == -1))
    {
      this.eYm.setEnabled(false);
      k(new g(null));
      aa.d("MicroMsg.WalletBankcardManageUI", "index onResume");
      return;
    }
    this.eYm.setEnabled(true);
    this.eYk = c.anX().aoa();
    if (this.eYk != null);
    for (this.mCount = this.eYk.size(); ; this.mCount = 0)
    {
      LP();
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletBankcardManageUI
 * JD-Core Version:    0.6.2
 */