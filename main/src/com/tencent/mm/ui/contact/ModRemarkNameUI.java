package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.tools.p;
import com.tencent.mm.pluginsdk.ui.tools.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;

public class ModRemarkNameUI extends MMActivity
  implements m
{
  private com.tencent.mm.storage.i cQI;
  private int edN = 9;
  private String fHV = "";
  private TextView gTG;
  private View gTH;
  private Button gTI;
  private EditText gUv;
  private int gUw;
  private String gUx = "";
  private boolean gUy = false;
  private String user;

  private void dS(boolean paramBoolean)
  {
    be.uA().d(new com.tencent.mm.z.i(5));
    if ((paramBoolean) && (this.cQI != null))
      be.uz().su().A(this.cQI);
  }

  protected final void FR()
  {
    this.user = getIntent().getStringExtra("Contact_User");
    if ((this.user != null) && (this.user.length() > 0))
    {
      this.cQI = be.uz().su().tO(this.user);
      if ((this.cQI == null) || (au.hX(this.cQI.getUsername())))
      {
        this.cQI = new com.tencent.mm.storage.i(this.user);
        this.cQI.bt(au.hW(this.gUx));
        this.cQI.bH(au.hW(this.fHV));
      }
    }
    this.gUv = ((EditText)findViewById(2131362429));
    cu localcu = new cu(this);
    label228: h localh;
    if ((this.gUw == 1) || (this.gUw == 2) || (this.gUw == 3))
    {
      q localq1 = new q();
      localq1.a(localcu);
      this.gUv.addTextChangedListener(localq1);
      this.gUv.setFilters(p.fux);
      if ((this.cQI != null) && (this.gUw != 3))
      {
        if (this.gUw != 4)
          break label383;
        this.gUv.setText(this.gUx);
        this.gUv.setSelection(this.gUv.getText().length());
      }
      if (this.gUw != 0)
        break label677;
      mn(2131166269);
      localh = ax.Al().fq(this.cQI.getUsername());
      if ((localh != null) && (!au.hX(localh.yM())))
        break label564;
      label292: a(0, getString(2131167685), new cv(this));
      if ((this.gUv == null) || (this.gUv.getText().toString().trim().length() <= 0))
        break label862;
      dg(true);
    }
    while (true)
    {
      a(new cw(this));
      return;
      q localq2 = new q();
      localq2.a(localcu);
      this.gUv.addTextChangedListener(localq2);
      break;
      label383: if (!au.hX(this.cQI.ru()))
      {
        this.gUv.setText(this.cQI.ru());
        break label228;
      }
      if (!au.hX(this.fHV))
      {
        this.gUv.setText(this.fHV);
        break label228;
      }
      if (!au.hX(this.cQI.kn()))
      {
        this.gUv.setText(this.cQI.kn());
        break label228;
      }
      if (!au.hX(this.gUx))
      {
        this.gUv.setText(this.gUx);
        break label228;
      }
      String str = this.cQI.kn();
      if ((au.hX(str)) || (str.length() > 50));
      for (int i = 0; ; i = 1)
      {
        if (i == 0)
          break label552;
        this.gUv.setText(au.hW(this.cQI.rr()));
        break;
      }
      label552: this.gUv.setText("");
      break label228;
      label564: this.gTG = ((TextView)findViewById(2131362431));
      this.gTH = findViewById(2131362430);
      this.gTI = ((Button)findViewById(2131362432));
      this.gTH.setVisibility(0);
      TextView localTextView4 = this.gTG;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.cQI.rr();
      arrayOfObject[1] = localh.yM();
      localTextView4.setText(getString(2131166264, arrayOfObject));
      this.gTI.setOnClickListener(new cx(this, localh));
      break label292;
      label677: if (this.gUw == 1)
      {
        mn(2131167550);
        this.gUv.setHint("");
        TextView localTextView3 = (TextView)findViewById(2131362428);
        localTextView3.setText("");
        localTextView3.setVisibility(0);
        break label292;
      }
      if (this.gUw == 2)
      {
        mn(2131167553);
        this.gUv.setHint("");
        break label292;
      }
      if (this.gUw == 3)
      {
        mn(2131168780);
        this.gUv.setHint("");
        TextView localTextView2 = (TextView)findViewById(2131362428);
        localTextView2.setText(2131168787);
        localTextView2.setVisibility(0);
        break label292;
      }
      if (this.gUw != 4)
        break label292;
      mn(2131167549);
      this.gUv.setHint("");
      TextView localTextView1 = (TextView)findViewById(2131362428);
      localTextView1.setText(2131167578);
      localTextView1.setVisibility(0);
      break label292;
      label862: dg(false);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MiroMsg.ModRemarkName", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (paramx.getType() == 44)
    {
      if ((paramInt1 != 0) && (paramInt2 < 0))
      {
        aa.d("MiroMsg.ModRemarkName", "addRoomCard Error!");
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(2131167558, arrayOfObject), 0).show();
      }
      finish();
    }
  }

  protected final int getLayoutId()
  {
    return 2130903553;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.edN = getIntent().getIntExtra("Contact_Scene", 9);
    this.gUw = getIntent().getIntExtra("Contact_mode_name_type", 0);
    this.gUx = au.hW(getIntent().getStringExtra("Contact_Nick"));
    this.fHV = au.hW(getIntent().getStringExtra("Contact_RemarkName"));
    this.gUy = getIntent().getBooleanExtra("Contact_ModStrangerRemark", false);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ModRemarkNameUI
 * JD-Core Version:    0.6.2
 */