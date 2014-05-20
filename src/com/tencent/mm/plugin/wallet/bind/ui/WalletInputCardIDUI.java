package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b.d;
import com.tencent.mm.plugin.wallet.b.g;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

public class WalletInputCardIDUI extends WalletBaseUI
  implements com.tencent.mm.plugin.wallet.ui.l
{
  private Button dLL;
  private EditHintView eYG;
  private EditHintView eZE;

  private boolean UW()
  {
    if (this.eZE.U(null))
    {
      this.dLL.setEnabled(true);
      this.dLL.setClickable(true);
      return true;
    }
    this.dLL.setEnabled(false);
    this.dLL.setClickable(false);
    return false;
  }

  protected final void FR()
  {
    this.dLL = ((Button)findViewById(com.tencent.mm.i.aCN));
    this.eZE = ((EditHintView)findViewById(com.tencent.mm.i.aoY));
    this.eYG = ((EditHintView)findViewById(com.tencent.mm.i.aCm));
    this.eZE.a(this);
    this.dLL.setOnClickListener(new bd(this));
    TextView localTextView1 = (TextView)findViewById(com.tencent.mm.i.awT);
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    if (((locali != null) && ((locali instanceof g)) && (locali.anP())) || ((locali instanceof d)))
    {
      localTextView1.setVisibility(8);
      findViewById(com.tencent.mm.i.aQk).setVisibility(0);
      TextView localTextView2 = (TextView)findViewById(com.tencent.mm.i.aQg);
      String str2 = getString(n.bFS);
      String str3 = getString(n.bFV);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
      localSpannableStringBuilder.append(str2);
      localSpannableStringBuilder.append(", ");
      int i = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(str3);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(getResources().getColor(com.tencent.mm.f.aaE)), i, localSpannableStringBuilder.length(), 17);
      localSpannableStringBuilder.setSpan(new bf(this), i, localSpannableStringBuilder.length(), 17);
      localTextView2.setText(localSpannableStringBuilder);
      localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
      c localc = c.anX();
      if ((!localc.aof()) || (localc.aoc() == null) || (cj.hX(localc.aoc().trim())) || (!c.anX().aoe()))
        break label424;
      this.eYG.setVisibility(0);
      this.eYG.pM(c.anX().aoc());
      this.eZE.pL(getString(n.bFQ));
      this.eYG.setClickable(false);
      this.eYG.setEnabled(false);
    }
    while (true)
    {
      UW();
      com.tencent.mm.plugin.wallet.b.l.a(this, aoJ(), 2);
      a(this.eZE, 0, false);
      return;
      localTextView1.setVisibility(0);
      String str1 = aoJ().getString("custom_bind_tips");
      if (!cj.hX(str1))
        localTextView1.setText(str1);
      findViewById(com.tencent.mm.i.aQk).setVisibility(8);
      break;
      label424: this.eYG.setVisibility(8);
      this.eZE.pL(getString(n.bGr));
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    aa.d("Micromsg.WalletInputCardIDUI", " errCode: " + paramInt2 + " errMsg :" + paramString);
    Bundle localBundle = new Bundle();
    boolean bool1;
    ElementQuery localElementQuery;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      boolean bool3 = parama instanceof com.tencent.mm.plugin.wallet.bind.model.f;
      bool1 = false;
      if (bool3)
      {
        com.tencent.mm.plugin.wallet.bind.model.f localf = (com.tencent.mm.plugin.wallet.bind.model.f)parama;
        int i = localf.anm().size();
        bool1 = false;
        if (i > 0)
        {
          localElementQuery = (ElementQuery)localf.anm().get(0);
          if ((!localElementQuery.eXl) || (!localElementQuery.isError()))
            break label141;
          com.tencent.mm.ui.base.h.c(this, n.bFo, n.ber);
          bool1 = true;
        }
      }
    }
    label141: boolean bool2;
    do
    {
      do
      {
        return bool1;
        com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
        if ((locali != null) && (!locali.jK(localElementQuery.eWV)))
        {
          if (locali.anN())
          {
            aa.w("Micromsg.WalletInputCardIDUI", "Overseas user try to bind domestic card!");
            com.tencent.mm.ui.base.h.c(this, n.bFn, n.ber);
          }
          while (true)
          {
            this.eZE.UP();
            return true;
            aa.w("Micromsg.WalletInputCardIDUI", "Domestic user try to bind international card!");
            com.tencent.mm.ui.base.h.c(this, n.bFm, n.ber);
          }
        }
        localBundle.putString("bank_name", localElementQuery.eXe);
        localBundle.putParcelable("elemt_query", localElementQuery);
        localBundle.putString("Kcard_id", this.eZE.getText());
        com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
        return true;
        bool1 = false;
      }
      while (paramInt2 != 1);
      bool2 = parama instanceof com.tencent.mm.plugin.wallet.bind.model.f;
      bool1 = false;
    }
    while (!bool2);
    localBundle.putString("bank_name", "");
    localBundle.putParcelable("elemt_query", new ElementQuery());
    localBundle.putString("Kcard_id", this.eZE.getText());
    com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
    return true;
  }

  public final void aN(boolean paramBoolean)
  {
    UW();
  }

  protected final boolean ant()
  {
    return true;
  }

  protected final int getLayoutId()
  {
    return k.bby;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bGs);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletInputCardIDUI
 * JD-Core Version:    0.6.2
 */