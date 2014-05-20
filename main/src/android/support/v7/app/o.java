package android.support.v7.app;

import android.app.ActionBar.Tab;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.ArrayList;

final class o extends ActionBar
{
  final a hM;
  final Activity hX;
  final android.app.ActionBar hY;
  private ArrayList hZ = new ArrayList();

  public o(Activity paramActivity, a parama)
  {
    this.hX = paramActivity;
    this.hM = parama;
    this.hY = paramActivity.getActionBar();
  }

  public final void a(c paramc)
  {
    this.hY.addTab(((p)paramc).ia);
  }

  public final void aR()
  {
    this.hY.setIcon(2130837603);
  }

  public final void aS()
  {
    this.hY.setDisplayShowHomeEnabled(false);
  }

  public final void aT()
  {
    this.hY.setDisplayShowTitleEnabled(false);
  }

  public final void aU()
  {
    this.hY.setDisplayShowCustomEnabled(true);
  }

  public final c aV()
  {
    ActionBar.Tab localTab = this.hY.newTab();
    p localp = new p(this, localTab);
    localTab.setTag(localp);
    return localp;
  }

  public final View getCustomView()
  {
    return this.hY.getCustomView();
  }

  public final int getDisplayOptions()
  {
    return this.hY.getDisplayOptions();
  }

  public final int getHeight()
  {
    return this.hY.getHeight();
  }

  public final Context getThemedContext()
  {
    return this.hY.getThemedContext();
  }

  public final void hide()
  {
    this.hY.hide();
  }

  public final boolean isShowing()
  {
    return this.hY.isShowing();
  }

  public final void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.hY.setBackgroundDrawable(paramDrawable);
  }

  public final void setCustomView(int paramInt)
  {
    this.hY.setCustomView(paramInt);
  }

  public final void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    this.hY.setDisplayHomeAsUpEnabled(paramBoolean);
  }

  public final void setLogo(int paramInt)
  {
    this.hY.setLogo(paramInt);
  }

  public final void setSubtitle(int paramInt)
  {
    this.hY.setSubtitle(paramInt);
  }

  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.hY.setSubtitle(paramCharSequence);
  }

  public final void setTitle(int paramInt)
  {
    this.hY.setTitle(paramInt);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.hY.setTitle(paramCharSequence);
  }

  public final void show()
  {
    this.hY.show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.o
 * JD-Core Version:    0.6.2
 */