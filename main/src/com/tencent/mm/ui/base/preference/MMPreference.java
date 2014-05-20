package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListView;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.g;
import com.tencent.mm.ui.MMActivity;

public abstract class MMPreference extends MMActivity
{
  private ListView cXQ;
  private SharedPreferences chz;
  private boolean eNN = false;
  private x gGt;
  private boolean xY = false;

  protected boolean Gb()
  {
    return true;
  }

  public abstract int Gc();

  public boolean a(Preference paramPreference)
  {
    return false;
  }

  public abstract boolean a(n paramn, Preference paramPreference);

  public final boolean aIi()
  {
    return this.xY;
  }

  public final n aIj()
  {
    return this.gGt;
  }

  public final SharedPreferences aIk()
  {
    return this.chz;
  }

  public final boolean aIl()
  {
    g.a(this.cXQ);
    return true;
  }

  public int aao()
  {
    return -1;
  }

  public x c(SharedPreferences paramSharedPreferences)
  {
    return new x(this, paramSharedPreferences);
  }

  public View ch()
  {
    return null;
  }

  protected int getLayoutId()
  {
    return k.aXc;
  }

  public final ListView getListView()
  {
    return this.cXQ;
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return super.onContextItemSelected(paramMenuItem);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.chz = getSharedPreferences(getPackageName() + "_preferences", 0);
    this.gGt = c(this.chz);
    this.cXQ = ((ListView)findViewById(16908298));
    int i = aao();
    View localView1 = ch();
    if (i != -1)
    {
      localView2 = getLayoutInflater().inflate(i, null);
      this.cXQ.addHeaderView(localView2);
    }
    while (localView1 == null)
    {
      View localView2;
      this.gGt.b(new s(this));
      int j = Gc();
      if (j != -1)
        this.gGt.addPreferencesFromResource(j);
      this.cXQ.setAdapter(this.gGt);
      this.cXQ.setOnItemClickListener(new t(this));
      this.cXQ.setOnItemLongClickListener(new w(this));
      return;
    }
    if (localView1.getLayoutParams() != null)
      localView1.setLayoutParams(new AbsListView.LayoutParams(localView1.getLayoutParams()));
    while (true)
    {
      this.cXQ.addHeaderView(localView1);
      break;
      aa.e("MicroMsg.mmui.MMPreference", "[arthurdan.mmpreference] Notice!!! header.getLayoutParams() is null!!!\n");
    }
  }

  protected void onResume()
  {
    if (Gb())
      this.gGt.notifyDataSetChanged();
    super.onResume();
  }

  public final void setSelection(int paramInt)
  {
    this.cXQ.setSelection(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.MMPreference
 * JD-Core Version:    0.6.2
 */