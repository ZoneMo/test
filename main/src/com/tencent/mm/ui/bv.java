package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.CheckBox;

final class bv
  implements DialogInterface.OnClickListener
{
  bv(CheckBox paramCheckBox, SharedPreferences paramSharedPreferences)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.goa.isChecked())
    {
      SharedPreferences.Editor localEditor = this.gob.edit();
      localEditor.putBoolean("gprs_alert", false);
      localEditor.commit();
    }
    com.tencent.mm.sdk.platformtools.j.gcp = false;
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bv
 * JD-Core Version:    0.6.2
 */