package android.support.v7.app;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;

final class n
  implements ActionMode.Callback
{
  private final ActionMode.Callback hV;

  n(m paramm, ActionMode.Callback paramCallback)
  {
    this.hV = paramCallback;
  }

  public final boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return this.hV.onActionItemClicked(paramActionMode, paramMenuItem);
  }

  public final boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    boolean bool = this.hV.onCreateActionMode(paramActionMode, paramMenu);
    if (bool)
    {
      m.a(this.hW, paramActionMode);
      this.hW.bi();
    }
    return bool;
  }

  public final void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.hV.onDestroyActionMode(paramActionMode);
    this.hW.bj();
    m.a(this.hW, null);
  }

  public final boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return this.hV.onPrepareActionMode(paramActionMode, paramMenu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.n
 * JD-Core Version:    0.6.2
 */