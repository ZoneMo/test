package android.support.v7.app;

import android.support.v7.internal.widget.NativeActionModeAwareLayout;
import android.support.v7.internal.widget.aj;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import com.tencent.mm.i;

final class m extends k
  implements aj
{
  final NativeActionModeAwareLayout hT;
  private ActionMode hU;

  public m(ActionBarActivity paramActionBarActivity, a parama)
  {
    super(paramActionBarActivity, parama);
    this.hT = ((NativeActionModeAwareLayout)paramActionBarActivity.findViewById(i.akN));
    if (this.hT != null)
      this.hT.a(this);
  }

  public final ActionMode.Callback a(ActionMode.Callback paramCallback)
  {
    return new n(this, paramCallback);
  }

  final boolean bl()
  {
    return (this.hU == null) && (super.bl());
  }

  public final void hide()
  {
    super.hide();
    if (this.hU != null)
      this.hU.finish();
  }

  public final void show()
  {
    super.show();
    if (this.hU != null)
      this.hU.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.m
 * JD-Core Version:    0.6.2
 */