package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.l.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.modelsimple.s;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.z.i;

public class SettingsModifyEmailAddrUI extends MMActivity
  implements m
{
  private ProgressDialog cIr;
  private String gIO = null;
  private EditText hfp;
  private String hfq;
  private String hfr;
  private TextView hfs;
  private TextView hft;

  private void aMx()
  {
    this.hfs.setVisibility(8);
    this.hfs.setText(getString(2131166100));
    this.hft.setText(getString(2131166004));
    this.hft.setTextColor(getResources().getColor(2131493088));
    this.hfp.setEnabled(true);
    EditText localEditText = this.hfp;
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new cw(this);
    localEditText.setFilters(arrayOfInputFilter);
    String str = f.ab(this);
    if (!au.hX(str))
      this.hfp.setText(str);
    a(0, getString(2131167685), new cx(this));
  }

  protected final void FR()
  {
    mn(2131166003);
    this.hfp = ((EditText)findViewById(2131363663));
    this.hfs = ((TextView)findViewById(2131362128));
    this.hft = ((TextView)findViewById(2131363664));
    this.hfq = ((String)be.uz().sr().get(5));
    this.hfp.setText(this.hfq);
    Integer localInteger = (Integer)be.uz().sr().get(7);
    if ((localInteger != null) && ((0x2 & localInteger.intValue()) != 0));
    for (boolean bool = true; ; bool = false)
    {
      Boolean localBoolean = Boolean.valueOf(bool);
      a(new ca(this));
      if (!localBoolean.booleanValue())
        break;
      this.hfs.setVisibility(0);
      this.hfs.setText(getString(2131166100));
      this.hft.setText(getString(2131166004));
      this.hft.setTextColor(getResources().getColor(2131493088));
      this.hfp.setEnabled(false);
      EditText localEditText2 = this.hfp;
      InputFilter[] arrayOfInputFilter2 = new InputFilter[1];
      arrayOfInputFilter2[0] = new cl(this);
      localEditText2.setFilters(arrayOfInputFilter2);
      this.hfs.setOnClickListener(new cq(this));
      af(this.hfp);
      return;
    }
    if (!au.hX(this.hfq))
    {
      this.hfs.setVisibility(0);
      this.hfs.setText(getString(2131166105));
      this.hft.setText(getString(2131166104));
      this.hft.setTextColor(getResources().getColor(2131492874));
      this.hfp.setEnabled(false);
      EditText localEditText1 = this.hfp;
      InputFilter[] arrayOfInputFilter1 = new InputFilter[1];
      arrayOfInputFilter1[0] = new cs(this);
      localEditText1.setFilters(arrayOfInputFilter1);
      this.hfs.setOnClickListener(new ct(this));
      a(0, getString(2131167697), new cv(this));
      af(this.hfp);
      return;
    }
    aMx();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MiroMsg.SettingsModifyEmailAddrUI", "onSceneEnd: sceneType = " + paramx.getType() + " errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (com.tencent.mm.ui.cx.a(aal(), paramInt1, paramInt2, 4));
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (paramx.getType() != 254)
                break;
              if ((paramInt1 == 0) && (paramInt2 == 0))
              {
                this.gIO = ((s)paramx).Cg();
                com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(2);
                be.uA().d(localac);
                return;
              }
              if (this.cIr != null)
              {
                this.cIr.dismiss();
                this.cIr = null;
              }
              if (paramInt2 == -82)
              {
                h.a(this, 2131166109, 2131167675, new cz(this));
                return;
              }
              if (paramInt2 == -83)
              {
                h.a(this, 2131166110, 2131167675, new cb(this));
                return;
              }
              if (paramInt2 == -84)
              {
                h.a(this, 2131166111, 2131167675, new cc(this));
                return;
              }
            }
            while (paramInt2 != -85);
            h.a(this, 2131166114, 2131167675, new cd(this));
            return;
            if (paramx.getType() != 256)
              break;
            i locali = new i(5);
            be.uA().d(locali);
            if (((a)paramx).vI() == a.ckf)
            {
              if ((paramInt1 == 0) && (paramInt2 == 0))
              {
                h.a(aal(), 2131166133, 2131167675, new ce(this));
                return;
              }
              if (this.cIr != null)
              {
                this.cIr.dismiss();
                this.cIr = null;
              }
              if (paramInt2 == -82)
              {
                h.a(this, 2131166109, 2131167675, new cf(this));
                return;
              }
              if (paramInt2 == -83)
              {
                h.a(this, 2131166110, 2131167675, new cg(this));
                return;
              }
              if (paramInt2 == -84)
              {
                h.a(this, 2131166111, 2131167675, new ch(this));
                return;
              }
              if (paramInt2 == -85)
              {
                h.a(this, 2131166114, 2131167675, new ci(this));
                return;
              }
              if (paramInt2 == -86)
              {
                h.a(this, 2131166115, 2131167675, new cj(this));
                return;
              }
              Activity localActivity1 = aal();
              Object[] arrayOfObject1 = new Object[2];
              arrayOfObject1[0] = Integer.valueOf(paramInt1);
              arrayOfObject1[1] = Integer.valueOf(paramInt2);
              h.a(localActivity1, getString(2131166134, arrayOfObject1), getString(2131167675), new ck(this));
              return;
            }
          }
          while (((a)paramx).vI() != a.ckg);
          if (this.cIr != null)
          {
            this.cIr.dismiss();
            this.cIr = null;
          }
        }
        while ((paramInt1 != 0) || (paramInt2 != 0));
        if ((this.gIO != null) && (this.gIO.length() > 0))
          be.uz().sr().set(3, this.gIO);
        h.a(aal(), 2131166103, 2131167675, new cm(this));
        return;
      }
      while (paramx.getType() == 38);
      if (paramx.getType() == 108)
      {
        if (this.cIr != null)
        {
          this.cIr.dismiss();
          this.cIr = null;
        }
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          h.a(aal(), 2131166133, 2131167675, new cn(this));
          return;
        }
        Activity localActivity2 = aal();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt1);
        arrayOfObject2[1] = Integer.valueOf(paramInt2);
        h.a(localActivity2, getString(2131166134, arrayOfObject2), getString(2131167675), new co(this));
        return;
      }
    }
    while (paramx.getType() != 255);
    if (paramInt2 == 0)
    {
      a locala = new a(a.ckg, this.hfp.getText().toString().trim());
      be.uA().d(locala);
      return;
    }
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    h.a(this, 2131166118, 2131167675, new cp(this));
  }

  protected final int getLayoutId()
  {
    return 2130903688;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uA().a(38, this);
    be.uA().a(254, this);
    be.uA().a(256, this);
    be.uA().a(108, this);
    be.uA().a(255, this);
  }

  public void onDestroy()
  {
    be.uA().b(38, this);
    be.uA().b(254, this);
    be.uA().b(256, this);
    be.uA().b(108, this);
    be.uA().b(255, this);
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsModifyEmailAddrUI
 * JD-Core Version:    0.6.2
 */