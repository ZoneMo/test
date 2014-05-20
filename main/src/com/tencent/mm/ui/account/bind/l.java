package com.tencent.mm.ui.account.bind;

import android.text.InputFilter;
import android.text.Spanned;
import com.tencent.mm.sdk.platformtools.cj;

final class l
  implements InputFilter
{
  l(BindMobileVerifyUI paramBindMobileVerifyUI)
  {
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    return cj.n(paramCharSequence);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.l
 * JD-Core Version:    0.6.2
 */