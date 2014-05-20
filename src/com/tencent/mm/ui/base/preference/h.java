package com.tencent.mm.ui.base.preference;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.ui.base.x;

final class h
  implements AdapterView.OnItemClickListener
{
  h(DialogPreference paramDialogPreference)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (DialogPreference.a(this.gFS) != null)
      DialogPreference.a(this.gFS).dismiss();
    this.gFS.setValue((String)DialogPreference.b(this.gFS).gFN[paramInt]);
    if (DialogPreference.c(this.gFS) != null)
      DialogPreference.c(this.gFS).aIb();
    if (DialogPreference.d(this.gFS) != null)
      DialogPreference.d(this.gFS).a(this.gFS, this.gFS.getValue());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.h
 * JD-Core Version:    0.6.2
 */