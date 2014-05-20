package android.support.v7.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;

public abstract class ActionBar
{
  public abstract void a(c paramc);

  public abstract void aR();

  public abstract void aS();

  public abstract void aT();

  public abstract void aU();

  public abstract c aV();

  public abstract View getCustomView();

  public abstract int getDisplayOptions();

  public abstract int getHeight();

  public Context getThemedContext()
  {
    return null;
  }

  public abstract void hide();

  public abstract boolean isShowing();

  public abstract void setBackgroundDrawable(Drawable paramDrawable);

  public abstract void setCustomView(int paramInt);

  public abstract void setDisplayHomeAsUpEnabled(boolean paramBoolean);

  public abstract void setLogo(int paramInt);

  public abstract void setSubtitle(int paramInt);

  public abstract void setSubtitle(CharSequence paramCharSequence);

  public abstract void setTitle(int paramInt);

  public abstract void setTitle(CharSequence paramCharSequence);

  public abstract void show();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.ActionBar
 * JD-Core Version:    0.6.2
 */