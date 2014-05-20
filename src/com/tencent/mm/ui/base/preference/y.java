package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ListView;
import com.tencent.mm.k;
import com.tencent.mm.ui.cy;

public abstract class y extends cy
{
  private ListView cXQ;
  private SharedPreferences chz;
  private boolean eNN = false;
  private x gGt;
  private boolean xY = false;

  public static boolean aIn()
  {
    return false;
  }

  public abstract int Gc();

  public final n aIj()
  {
    return this.gGt;
  }

  public final void aIo()
  {
    this.cXQ.setAdapter(this.gGt);
  }

  public final void arP()
  {
    this.cXQ.setAdapter(null);
  }

  public abstract boolean f(Preference paramPreference);

  protected final int getLayoutId()
  {
    return k.aWW;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.chz = vR(getPackageName() + "_preferences");
    this.gGt = new x(aal(), this.chz);
    this.cXQ = ((ListView)findViewById(16908298));
    this.gGt.b(new z(this));
    int i = Gc();
    if (i != -1)
      this.gGt.addPreferencesFromResource(i);
    this.cXQ.setAdapter(this.gGt);
    this.cXQ.setOnItemClickListener(new aa(this));
    this.cXQ.setOnItemLongClickListener(new ad(this));
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return super.onContextItemSelected(paramMenuItem);
  }

  public void onResume()
  {
    super.onResume();
    this.gGt.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.y
 * JD-Core Version:    0.6.2
 */