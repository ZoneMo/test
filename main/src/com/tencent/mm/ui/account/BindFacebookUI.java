package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.r;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.a.a.e;

public class BindFacebookUI extends MMWizardActivity
  implements m
{
  private r gpA;
  private e gpx;
  private ProgressDialog gpy;
  private DialogInterface.OnCancelListener gpz;

  protected final void FR()
  {
    this.gpx = new e("290293790992170");
    this.gpz = new f(this);
    a(0, getString(n.bea), new g(this));
    mn(n.beB);
    TextView localTextView = (TextView)findViewById(i.aJh);
    localTextView.setVisibility(4);
    localTextView.setText(n.beA);
    Button localButton = (Button)findViewById(i.anm);
    localButton.setVisibility(0);
    localButton.setOnClickListener(new h(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 183);
    do
    {
      return;
      if (this.gpy != null)
        this.gpy.dismiss();
    }
    while (a.cHT.b(aal(), paramInt1, paramInt2));
    int i = ((r)paramx).zO();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (i == 1)
      {
        be.uz().sx().tX("facebookapp");
        be.uz().sw().vb("facebookapp");
      }
      aFs();
      return;
    }
    if ((paramInt1 == 4) && (paramInt2 == -67))
    {
      Toast.makeText(this, n.bkg, 1).show();
      return;
    }
    if ((paramInt1 == 4) && (paramInt2 == -5))
    {
      if (i == 1);
      for (int k = n.bkc; ; k = n.bkh)
      {
        Toast.makeText(this, k, 1).show();
        return;
      }
    }
    if (i == 0);
    for (int j = n.bhI; ; j = n.bhG)
    {
      Toast.makeText(this, j, 1).show();
      return;
    }
  }

  protected final int getLayoutId()
  {
    return k.aSz;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    be.uA().b(183, this);
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(183, this);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.BindFacebookUI
 * JD-Core Version:    0.6.2
 */