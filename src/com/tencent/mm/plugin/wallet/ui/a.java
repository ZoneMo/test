package com.tencent.mm.plugin.wallet.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.tencent.mm.sdk.platformtools.aa;

final class a
  implements TextWatcher
{
  a(EditHintView paramEditHintView)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    boolean bool = this.fdW.UR();
    if ((bool != EditHintView.a(this.fdW)) && (EditHintView.b(this.fdW) != null))
    {
      aa.d("MicroMsg.EditHintView", "View:" + EditHintView.c(this.fdW) + ", editType:" + EditHintView.d(this.fdW) + " inputValid change to " + bool);
      EditHintView.a(this.fdW, bool);
      EditHintView.b(this.fdW).aN(EditHintView.a(this.fdW));
    }
    EditHintView.e(this.fdW);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.a
 * JD-Core Version:    0.6.2
 */