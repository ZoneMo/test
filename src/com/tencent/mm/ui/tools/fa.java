package com.tencent.mm.ui.tools;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.ImageButton;

final class fa
  implements TextWatcher
{
  fa(SearchViewNotRealTimeHelper paramSearchViewNotRealTimeHelper)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable == null) || (paramEditable.length() <= 0))
    {
      SearchViewNotRealTimeHelper.a(this.hme).setVisibility(8);
      SearchViewNotRealTimeHelper.b(this.hme).setEnabled(false);
      return;
    }
    SearchViewNotRealTimeHelper.a(this.hme).setVisibility(0);
    SearchViewNotRealTimeHelper.b(this.hme).setEnabled(true);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fa
 * JD-Core Version:    0.6.2
 */