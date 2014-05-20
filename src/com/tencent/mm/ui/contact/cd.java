package com.tencent.mm.ui.contact;

import android.text.InputFilter;
import android.text.Spanned;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;

final class cd
  implements InputFilter
{
  private int oU = 200;

  public cd(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    aa.i("MiroMsg.ContactRemarkInfoModUI", paramCharSequence + " start:" + paramInt1 + " end:" + paramInt2 + " " + paramSpanned + " dstart:" + paramInt3 + " dend:" + paramInt4);
    float f = ContactRemarkInfoModUI.s(paramSpanned);
    int i = this.oU - Math.round(f) - (paramInt4 - paramInt3);
    if (i <= 0)
    {
      if ((Float.compare(f, (float)(this.oU - 0.5D)) == 0) && (paramCharSequence.length() > 0) && (!au.l(paramCharSequence.charAt(0))))
        return paramCharSequence.subSequence(0, 1);
      return "";
    }
    if (i >= paramInt2 - paramInt1)
      return null;
    int j = i + paramInt1;
    if (Character.isHighSurrogate(paramCharSequence.charAt(j - 1)))
    {
      j--;
      if (j == paramInt1)
        return "";
    }
    return paramCharSequence.subSequence(paramInt1, j);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cd
 * JD-Core Version:    0.6.2
 */