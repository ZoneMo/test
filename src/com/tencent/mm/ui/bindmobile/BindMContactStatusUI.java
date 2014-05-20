package com.tencent.mm.ui.bindmobile;

import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.aa;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;

public class BindMContactStatusUI extends MMWizardActivity
{
  private Button dMp;
  private ImageView gvc;
  private TextView gvd;

  protected final void FR()
  {
    this.gvc = ((ImageView)findViewById(i.anw));
    this.gvd = ((TextView)findViewById(i.ans));
    this.dMp = ((Button)findViewById(i.anv));
    if (z.zp() == aa.crc)
    {
      this.gvc.setImageResource(h.afT);
      String str = (String)be.uz().sr().get(6);
      if ((str == null) || (str.equals("")))
        str = (String)be.uz().sr().get(4097);
      this.gvd.setText(getString(n.bfh, new Object[] { str }));
    }
    while (true)
    {
      this.dMp.setOnClickListener(new ab(this));
      return;
      this.gvc.setImageResource(h.afU);
      this.gvd.setText(n.bfq);
    }
  }

  protected final int getLayoutId()
  {
    return k.aSF;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bfk);
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      aFs();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.BindMContactStatusUI
 * JD-Core Version:    0.6.2
 */