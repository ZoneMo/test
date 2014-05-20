package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.pluginsdk.ui.tools.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;
import junit.framework.Assert;

public final class an
  implements m
{
  private ch cHU;
  private Context context;
  private EditText dQC;
  private LinkedList dVr;
  private com.tencent.mm.ui.base.x dpV = null;
  private String fnz;
  private au foT;
  private View foU;
  private TextView foV;
  private LinkedList foW;
  private boolean foX = true;

  public an(Context paramContext, au paramau)
  {
    this.context = paramContext;
    this.foT = paramau;
  }

  private void onStart()
  {
    be.uA().a(30, this);
  }

  private void onStop()
  {
    be.uA().b(30, this);
    if (this.dpV != null)
    {
      this.dpV.dismiss();
      this.dpV = null;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (paramx.getType() != 30)
    {
      aa.w("MicroMsg.SendVerifyRequest", "not expected scene,  type = " + paramx.getType());
      return;
    }
    aa.d("MicroMsg.SendVerifyRequest", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
    if (this.cHU != null)
    {
      this.cHU.dismiss();
      this.cHU = null;
    }
    onStop();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (this.foX)
        h.an(this.context, this.context.getString(n.bxZ));
      this.foT.cp(true);
      return;
    }
    String str;
    if ((paramInt1 == 4) && (paramInt2 == -34))
      str = this.context.getString(n.bmv);
    while (true)
    {
      if (this.foX)
        Toast.makeText(this.context, str, 1).show();
      this.foT.cp(false);
      return;
      if ((paramInt1 == 4) && (paramInt2 == -94))
        str = this.context.getString(n.bmw);
      else
        str = this.context.getString(n.bxY);
    }
  }

  public final void c(LinkedList paramLinkedList1, LinkedList paramLinkedList2)
  {
    boolean bool1;
    boolean bool2;
    label23: Object[] arrayOfObject;
    boolean bool3;
    if (paramLinkedList1.size() > 0)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (paramLinkedList2.size() <= 0)
        break label315;
      bool2 = true;
      Assert.assertTrue(bool2);
      onStart();
      this.foW = paramLinkedList1;
      this.dVr = paramLinkedList2;
      this.foU = View.inflate(this.context, k.aZn, null);
      arrayOfObject = new Object[3];
      if (this.fnz != null)
        break label321;
      bool3 = true;
      label73: arrayOfObject[0] = Boolean.valueOf(bool3);
      if (this.fnz != null)
        break label327;
    }
    label315: label321: label327: for (int i = 0; ; i = this.fnz.length())
    {
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = this.fnz;
      aa.d("MicroMsg.SendVerifyRequest", "verifyTip is null: %b, length : %d, value : [%s]", arrayOfObject);
      if (!cj.hX(this.fnz))
        ((TextView)this.foU.findViewById(i.aIZ)).setText(this.fnz);
      this.dQC = ((EditText)this.foU.findViewById(i.aIY));
      this.foV = ((TextView)this.foU.findViewById(i.aRF));
      this.foV.setVisibility(0);
      this.dQC.setText(null);
      this.foV.setText("50");
      this.dQC.setFilters(p.fux);
      this.dQC.addTextChangedListener(new ao(this));
      ap localap = new ap(this);
      ar localar = new ar(this);
      this.dpV = h.a(this.context, this.context.getString(n.byb), this.foU, localap, localar);
      if (this.dpV == null)
        onStop();
      this.dQC.post(new as(this));
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label23;
      bool3 = false;
      break label73;
    }
  }

  public final void d(LinkedList paramLinkedList1, LinkedList paramLinkedList2)
  {
    this.foX = false;
    onStart();
    be.uA().d(new j(2, paramLinkedList1, paramLinkedList2, "", ""));
  }

  public final void qF(String paramString)
  {
    this.fnz = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.an
 * JD-Core Version:    0.6.2
 */