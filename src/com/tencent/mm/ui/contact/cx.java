package com.tencent.mm.ui.contact;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.modelfriend.h;

final class cx
  implements View.OnClickListener
{
  cx(ModRemarkNameUI paramModRemarkNameUI, h paramh)
  {
  }

  public final void onClick(View paramView)
  {
    ModRemarkNameUI.a(this.gUz).setText(this.gTP.yM());
    ModRemarkNameUI.a(this.gUz).setSelection(ModRemarkNameUI.a(this.gUz).getText().length());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cx
 * JD-Core Version:    0.6.2
 */