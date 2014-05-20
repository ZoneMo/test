package com.tencent.mm.plugin.backup.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.a.c;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.model.ac;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.MMActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class BakChatUploadSelectUI extends MMActivity
  implements ac
{
  private static String TAG = "MicroMsg.BakChatUploadSelectUI";
  private ProgressBar cMu;
  private x cNh;
  private ListView cNi;
  private Button cNj;
  private boolean cNk = true;
  private TextView cNl;
  private l cNm = null;
  private TextView cNn;
  private boolean cNo = false;

  private void Il()
  {
    if (this.cNh == null)
      return;
    this.cNl.setText(au.K(d.Gm().a(this.cNh.HZ())));
    Im();
  }

  protected final void FR()
  {
    mn(2131166026);
    a(new al(this));
    a(1, getString(2131166027), new am(this));
    this.cNi = ((ListView)findViewById(2131362038));
    this.cNi.setVisibility(4);
    this.cNn = ((TextView)findViewById(2131362039));
    this.cNl = ((TextView)findViewById(2131362041));
    this.cNj = ((Button)findViewById(2131362042));
    this.cMu = ((ProgressBar)findViewById(2131362023));
    this.cNj.setOnClickListener(new an(this));
    this.cNh = new x(this);
    this.cNh.showDialog();
    c.a(new File(d.Gr()));
    d.a(new aq(this));
  }

  public final void GE()
  {
    if (this.cNh != null)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = this.cNh.Ia().iterator();
      while (localIterator.hasNext())
        localHashSet.add(((n)localIterator.next()).getUsername());
      if (d.Gm().b(localHashSet))
      {
        this.cNk = false;
        if (this.cMu != null)
          this.cMu.setVisibility(8);
      }
    }
  }

  public final void GF()
  {
    Il();
  }

  public final TextView Ih()
  {
    return this.cNl;
  }

  public final void Ii()
  {
    if (this.cNh != null)
    {
      if (this.cNh.HZ().size() < this.cNh.getCount())
        Ij();
    }
    else
      return;
    Ik();
  }

  public final void Ij()
  {
    this.cNo = false;
    v(1, getString(2131166027));
  }

  public final void Ik()
  {
    this.cNo = true;
    v(1, getString(2131166028));
  }

  public final void Im()
  {
    if ((this.cNh.HZ().size() > 0) && (d.Gm().b(this.cNh.HZ())))
    {
      ad(true);
      return;
    }
    ad(false);
  }

  public final void ad(boolean paramBoolean)
  {
    this.cNj.setEnabled(paramBoolean);
    this.cNj.setClickable(paramBoolean);
    if ((this.cNk) && (!paramBoolean))
    {
      this.cMu.setVisibility(0);
      return;
    }
    this.cMu.setVisibility(8);
  }

  protected final int getLayoutId()
  {
    return 2130903105;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.sdk.platformtools.aa.d(TAG, "onCreate");
    this.cNm = d.Gk();
    FR();
    ad(false);
  }

  public void onDestroy()
  {
    com.tencent.mm.sdk.platformtools.aa.d(TAG, "onDestroy");
    if (this.cNh != null)
    {
      this.cNh.Ie();
      this.cNh.Ig();
    }
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

  public void onPause()
  {
    d.Gm().b(this);
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    Il();
    d.Gm().a(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakChatUploadSelectUI
 * JD-Core Version:    0.6.2
 */