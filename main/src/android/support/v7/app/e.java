package android.support.v7.app;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.internal.view.c;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.tencent.mm.p;

abstract class e
{
  final ActionBarActivity gZ;
  private ActionBar ha;
  private MenuInflater hb;
  boolean hc;
  boolean hd;

  e(ActionBarActivity paramActionBarActivity)
  {
    this.gZ = paramActionBarActivity;
  }

  final ActionBar aW()
  {
    if ((this.hc) || (this.hd))
      if (this.ha != null);
    for (this.ha = bb(); ; this.ha = null)
      return this.ha;
  }

  abstract boolean aX();

  abstract void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  abstract void b(CharSequence paramCharSequence);

  abstract ActionBar bb();

  abstract void bc();

  abstract boolean bd();

  protected final String be()
  {
    try
    {
      ActivityInfo localActivityInfo = this.gZ.getPackageManager().getActivityInfo(this.gZ.getComponentName(), 128);
      Bundle localBundle = localActivityInfo.metaData;
      Object localObject = null;
      if (localBundle != null)
      {
        String str = localActivityInfo.metaData.getString("android.support.UI_OPTIONS");
        localObject = str;
      }
      return localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      new StringBuilder("getUiOptionsFromMetadata: Activity '").append(this.gZ.getClass().getSimpleName()).append("' not in manifest").toString();
    }
    return null;
  }

  protected final Context bf()
  {
    Object localObject = this.gZ;
    ActionBar localActionBar = aW();
    if (localActionBar != null)
      localObject = localActionBar.getThemedContext();
    return localObject;
  }

  final MenuInflater getMenuInflater()
  {
    ActionBar localActionBar;
    if (this.hb == null)
    {
      localActionBar = aW();
      if (localActionBar == null)
        break label36;
    }
    label36: for (this.hb = new c(localActionBar.getThemedContext()); ; this.hb = new c(this.gZ))
      return this.hb;
  }

  void onCreate(Bundle paramBundle)
  {
    TypedArray localTypedArray = this.gZ.obtainStyledAttributes(p.bIW);
    if (!localTypedArray.hasValue(0))
    {
      localTypedArray.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    this.hc = localTypedArray.getBoolean(0, false);
    this.hd = localTypedArray.getBoolean(1, false);
    localTypedArray.recycle();
  }

  abstract boolean onCreatePanelMenu(int paramInt, Menu paramMenu);

  abstract View onCreatePanelView(int paramInt);

  abstract boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem);

  abstract void onPostResume();

  abstract boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu);

  abstract void onStop();

  abstract void setContentView(int paramInt);

  abstract void setContentView(View paramView);

  abstract void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  abstract void u();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.e
 * JD-Core Version:    0.6.2
 */