package com.tencent.mm.ui.base.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.ui.base.x;

final class k
  implements DialogInterface.OnClickListener
{
  k(EditPreference paramEditPreference, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (EditPreference.a(this.gFX) != null)
      EditPreference.a(this.gFX).dismiss();
    this.gFX.setValue(this.gFW.getText().toString());
    if (EditPreference.b(this.gFX) != null)
      EditPreference.b(this.gFX).aIb();
    if (EditPreference.c(this.gFX) != null)
      EditPreference.c(this.gFX).a(this.gFX, EditPreference.d(this.gFX));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.k
 * JD-Core Version:    0.6.2
 */