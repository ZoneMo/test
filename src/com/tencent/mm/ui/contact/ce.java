package com.tencent.mm.ui.contact;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

final class ce
  implements TextWatcher
{
  private int gTQ = 200;

  private ce(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    this.gTQ = ContactRemarkInfoModUI.t(paramEditable);
    if (this.gTQ < 0)
      this.gTQ = 0;
    if (ContactRemarkInfoModUI.a(this.gTN) != null)
      ContactRemarkInfoModUI.a(this.gTN).setText(this.gTQ);
    ContactRemarkInfoModUI.b(this.gTN);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ce
 * JD-Core Version:    0.6.2
 */