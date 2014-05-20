package com.tencent.mm.ui.contact;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.ui.widget.MMEditText;

final class cc
  implements View.OnClickListener
{
  cc(ContactRemarkInfoModUI paramContactRemarkInfoModUI, h paramh)
  {
  }

  public final void onClick(View paramView)
  {
    ContactRemarkInfoModUI.n(this.gTN).setText(this.gTP.yM());
    ContactRemarkInfoModUI.n(this.gTN).setSelection(ContactRemarkInfoModUI.n(this.gTN).getText().length());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cc
 * JD-Core Version:    0.6.2
 */