package android.support.v7.internal.view;

import android.content.Context;
import android.support.v7.a.a;
import android.view.ActionMode;
import android.view.MenuInflater;

public final class b extends a
{
  final MenuInflater ig;
  final ActionMode ih;

  public b(Context paramContext, ActionMode paramActionMode)
  {
    this.ih = paramActionMode;
    this.ig = new c(paramContext);
  }

  public final void finish()
  {
    this.ih.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.b
 * JD-Core Version:    0.6.2
 */