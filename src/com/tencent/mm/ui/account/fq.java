package com.tencent.mm.ui.account;

import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.dn;

public final class fq
{
  private Context context;
  private dn gsl = null;
  private String text;

  public fq(Context paramContext)
  {
    this.context = paramContext;
    this.gsl = new dn(paramContext);
    this.text = null;
  }

  private void mM(int paramInt)
  {
    vY(this.context.getString(paramInt));
  }

  private void vY(String paramString)
  {
    if (paramString.equals(this.text))
      return;
    this.gsl.aHx();
    this.gsl.cc(-1L);
    this.gsl.setLevel(2);
    this.gsl.setText(paramString);
    this.text = paramString;
    this.gsl.aHy();
  }

  public final void cancel()
  {
    this.gsl.aHx();
    this.text = null;
  }

  public final boolean p(CharSequence paramCharSequence)
  {
    if ((paramCharSequence.length() < 6) || (paramCharSequence.length() > 20))
    {
      int i = n.bEd;
      String str = this.context.getString(i);
      if (!str.equals(this.text))
      {
        this.gsl.aHx();
        this.gsl.cc(-1L);
        this.gsl.setLevel(1);
        this.gsl.setText(str);
        this.text = str;
        this.gsl.aHy();
      }
      return false;
    }
    if (!cj.m(paramCharSequence.charAt(0)))
    {
      mM(n.bEb);
      return false;
    }
    for (int j = -1 + paramCharSequence.length(); j > 0; j--)
    {
      char c = paramCharSequence.charAt(j);
      if ((!cj.m(c)) && (c != '-') && (c != '_') && (!cj.n(c)))
      {
        if (Character.isSpace(c))
        {
          mM(n.bEa);
          return false;
        }
        if (cj.l(c))
        {
          mM(n.bDY);
          return false;
        }
        Context localContext = this.context;
        int k = n.bDZ;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Character.valueOf(c);
        vY(localContext.getString(k, arrayOfObject));
        return false;
      }
    }
    if (this.gsl != null)
      this.gsl.aHx();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fq
 * JD-Core Version:    0.6.2
 */