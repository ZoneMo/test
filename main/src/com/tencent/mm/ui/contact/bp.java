package com.tencent.mm.ui.contact;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class bp
  implements AdapterView.OnItemClickListener
{
  bp(ContactRemarkImagePreviewUI paramContactRemarkImagePreviewUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!this.gTx.aFf())
    {
      this.gTx.aFe();
      return;
    }
    this.gTx.aFd();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bp
 * JD-Core Version:    0.6.2
 */