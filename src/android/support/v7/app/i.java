package android.support.v7.app;

import android.os.Bundle;
import android.support.v7.internal.view.b;
import android.support.v7.internal.view.menu.ai;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

final class i extends e
{
  Menu hp;

  i(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }

  public final boolean aX()
  {
    return this.gZ.requestWindowFeature(5);
  }

  public final void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.gZ.b(paramView, paramLayoutParams);
  }

  public final void b(CharSequence paramCharSequence)
  {
  }

  public final ActionBar bb()
  {
    return new o(this.gZ, this.gZ);
  }

  public final void bc()
  {
  }

  public final boolean bd()
  {
    return false;
  }

  public final void onActionModeFinished(ActionMode paramActionMode)
  {
    new b(bf(), paramActionMode);
    ActionBarActivity.aZ();
  }

  public final void onActionModeStarted(ActionMode paramActionMode)
  {
    new b(bf(), paramActionMode);
    ActionBarActivity.aY();
  }

  public final void onCreate(Bundle paramBundle)
  {
    if ("splitActionBarWhenNarrow".equals(be()))
      this.gZ.getWindow().setUiOptions(1, 1);
    super.onCreate(paramBundle);
    if (this.hc)
      this.gZ.requestWindowFeature(8);
    if (this.hd)
      this.gZ.requestWindowFeature(9);
    Window localWindow = this.gZ.getWindow();
    localWindow.setCallback(new j(this, localWindow.getCallback()));
  }

  public final boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if ((paramInt == 0) || (paramInt == 8))
    {
      if (this.hp == null)
        this.hp = ai.e(paramMenu);
      return this.gZ.a(paramInt, this.hp);
    }
    return this.gZ.a(paramInt, paramMenu);
  }

  public final View onCreatePanelView(int paramInt)
  {
    return null;
  }

  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (paramInt == 0)
      paramMenuItem = ai.l(paramMenuItem);
    return this.gZ.a(paramInt, paramMenuItem);
  }

  public final void onPostResume()
  {
  }

  public final boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) || (paramInt == 8))
      return this.gZ.a(paramInt, paramView, this.hp);
    return this.gZ.a(paramInt, paramView, paramMenu);
  }

  public final void onStop()
  {
  }

  public final void setContentView(int paramInt)
  {
    this.gZ.w(paramInt);
  }

  public final void setContentView(View paramView)
  {
    this.gZ.D(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.gZ.a(paramView, paramLayoutParams);
  }

  public final void u()
  {
    this.hp = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.i
 * JD-Core Version:    0.6.2
 */