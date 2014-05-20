package android.support.v7.app;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.aa;
import android.support.v4.app.ag;
import android.support.v4.app.ah;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class ActionBarActivity extends FragmentActivity
  implements ah, a
{
  e gY;

  public static void aY()
  {
  }

  public static void aZ()
  {
  }

  private boolean ba()
  {
    Intent localIntent = aa.a(this);
    if (localIntent != null)
    {
      if (aa.a(this, localIntent))
      {
        ag localag = ag.b(this);
        localag.c(this);
        localag.startActivities();
        try
        {
          if (Build.VERSION.SDK_INT >= 16)
            finishAffinity();
          else
            finish();
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
        }
      }
      else
      {
        aa.b(this, localIntent);
      }
    }
    else
      return false;
    return true;
  }

  final void D(View paramView)
  {
    super.setContentView(paramView);
  }

  public final Intent Z()
  {
    return aa.a(this);
  }

  final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }

  final boolean a(int paramInt, Menu paramMenu)
  {
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  final boolean a(int paramInt, MenuItem paramMenuItem)
  {
    return super.onMenuItemSelected(paramInt, paramMenuItem);
  }

  final boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }

  public final ActionBar aW()
  {
    return this.gY.aW();
  }

  public final boolean aX()
  {
    return this.gY.aX();
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.gY.addContentView(paramView, paramLayoutParams);
  }

  final void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addContentView(paramView, paramLayoutParams);
  }

  public MenuInflater getMenuInflater()
  {
    return this.gY.getMenuInflater();
  }

  public void onBackPressed()
  {
    if (!this.gY.bd())
      super.onBackPressed();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.gY.bc();
  }

  protected void onCreate(Bundle paramBundle)
  {
    int i = Build.VERSION.SDK_INT;
    Object localObject;
    if (i >= 14)
      localObject = new i(this);
    while (true)
    {
      this.gY = ((e)localObject);
      super.onCreate(paramBundle);
      this.gY.onCreate(paramBundle);
      return;
      if (i >= 11)
        localObject = new h(this);
      else
        localObject = new f(this);
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return this.gY.onCreatePanelMenu(paramInt, paramMenu);
  }

  public View onCreatePanelView(int paramInt)
  {
    if (paramInt == 0)
      return this.gY.onCreatePanelView(paramInt);
    return super.onCreatePanelView(paramInt);
  }

  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (this.gY.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    ActionBar localActionBar = this.gY.aW();
    if ((paramMenuItem.getItemId() == 16908332) && (localActionBar != null) && ((0x4 & localActionBar.getDisplayOptions()) != 0))
      return ba();
    return false;
  }

  protected void onPostResume()
  {
    super.onPostResume();
    this.gY.onPostResume();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return this.gY.onPreparePanel(paramInt, paramView, paramMenu);
  }

  protected void onStop()
  {
    super.onStop();
    this.gY.onStop();
  }

  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    this.gY.b(paramCharSequence);
  }

  public void setContentView(int paramInt)
  {
    this.gY.setContentView(paramInt);
  }

  public void setContentView(View paramView)
  {
    this.gY.setContentView(paramView);
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.gY.setContentView(paramView, paramLayoutParams);
  }

  public final void u()
  {
    if (Build.VERSION.SDK_INT >= 14)
      super.u();
    this.gY.u();
  }

  final void w(int paramInt)
  {
    super.setContentView(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.ActionBarActivity
 * JD-Core Version:    0.6.2
 */