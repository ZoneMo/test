package com.tencent.mm.pluginsdk.ui.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

final class d
  implements DialogInterface.OnClickListener
{
  d(b paramb, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.frv.getText().toString().trim();
    if ((str != null) && (str.length() > 0))
      a.a(this.fru.frs, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.d
 * JD-Core Version:    0.6.2
 */