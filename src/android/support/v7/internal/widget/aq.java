package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListAdapter;

final class aq
  implements DialogInterface.OnClickListener, au
{
  private AlertDialog pB;
  private ListAdapter pC;
  private CharSequence pD;

  private aq(ap paramap)
  {
  }

  public final void dismiss()
  {
    this.pB.dismiss();
    this.pB = null;
  }

  public final void f(CharSequence paramCharSequence)
  {
    this.pD = paramCharSequence;
  }

  public final boolean isShowing()
  {
    if (this.pB != null)
      return this.pB.isShowing();
    return false;
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.pE.setSelection(paramInt);
    if (this.pE.nO != null)
    {
      ap localap = this.pE;
      this.pC.getItemId(paramInt);
      localap.g(null, paramInt);
    }
    dismiss();
  }

  public final void setAdapter(ListAdapter paramListAdapter)
  {
    this.pC = paramListAdapter;
  }

  public final void show()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.pE.getContext());
    if (this.pD != null)
      localBuilder.setTitle(this.pD);
    this.pB = localBuilder.setSingleChoiceItems(this.pC, this.pE.getSelectedItemPosition(), this).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.aq
 * JD-Core Version:    0.6.2
 */