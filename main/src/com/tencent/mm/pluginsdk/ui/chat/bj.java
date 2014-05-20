package com.tencent.mm.pluginsdk.ui.chat;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.an.a;
import com.tencent.mm.compatible.g.g;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.pluginsdk.ui.VoiceSearchLayout;
import com.tencent.mm.pluginsdk.ui.bh;
import com.tencent.mm.sdk.platformtools.aa;

public final class bj extends LinearLayout
{
  private Button eDW;
  private int fmA = a.fromDPToPix(getContext(), 215);
  private VoiceSearchLayout frk;
  private Button frl;
  private bn frm;
  private bh frn = new bm(this);
  private boolean fro = true;

  public bj(Context paramContext)
  {
    super(paramContext);
    init();
  }

  @TargetApi(16)
  private void init()
  {
    aa.d("MicroMsg.VoiceInputPanel", "init");
    View.inflate(getContext(), k.bbk, this);
    this.frl = ((Button)findViewById(i.apE));
    this.eDW = ((Button)findViewById(i.aIU));
    this.frl.setOnClickListener(new bk(this));
    this.eDW.setOnClickListener(new bl(this));
    if (g.bG(16))
    {
      findViewById(i.aPf).setBackground(null);
      return;
    }
    findViewById(i.aPf).setBackgroundDrawable(null);
  }

  public final void a(bn parambn)
  {
    this.frm = parambn;
  }

  public final void asr()
  {
    if (this.fro)
    {
      this.fro = false;
      View localView = findViewById(i.aON);
      Object localObject = localView.getLayoutParams();
      int i = this.fmA;
      if (localObject == null)
        localObject = new LinearLayout.LayoutParams(-1, i);
      ((ViewGroup.LayoutParams)localObject).height = i;
      localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
  }

  public final void atg()
  {
    if (this.frk == null)
    {
      this.frk = ((VoiceSearchLayout)findViewById(i.aPe));
      this.frk.a(this.frn);
      this.frk.arL();
      this.frk.arM();
    }
    this.frk.ki(0);
  }

  public final void ath()
  {
    ((View)this.eDW.getParent()).setVisibility(0);
  }

  public final void kF(int paramInt)
  {
    if (this.fmA != paramInt)
    {
      this.fmA = paramInt;
      this.fro = true;
    }
  }

  public final void reset()
  {
    this.frk.arO();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.bj
 * JD-Core Version:    0.6.2
 */