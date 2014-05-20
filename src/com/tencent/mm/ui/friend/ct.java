package com.tencent.mm.ui.friend;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.tencent.mm.c;
import com.tencent.mm.c.a.cq;
import com.tencent.mm.c.a.cs;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.AddrBookObserver;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import junit.framework.Assert;

public final class ct extends ContentObserver
  implements m
{
  private String bTR;
  private boolean cmH = false;
  private ContentResolver contentResolver;
  private boolean fbl = false;
  private boolean fbm = false;
  private String[] fbp;
  private String grJ;
  private ag gtb;
  private com.tencent.mm.ui.base.x hce = null;
  private final cw hcf;
  private ai hcg;
  private ai hch;
  private ag hci;
  private String hcj;
  private boolean hck = false;
  private View hcl;
  private ProgressBar hcm;
  private String hcn = null;
  private boolean hco = true;
  private cx hcp;
  private Handler hcq = new cu(this);
  private Context mContext;
  private int progress = 0;

  public ct(cx paramcx, Handler paramHandler, Context paramContext, cw paramcw)
  {
    super(paramHandler);
    this.hcp = paramcx;
    this.hck = false;
    this.mContext = paramContext;
    this.fbp = this.mContext.getResources().getStringArray(c.Zt);
    this.hcl = ((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(k.aXP, null);
    this.hcm = ((ProgressBar)this.hcl.findViewById(i.aEE));
    this.hcf = paramcw;
  }

  private String aLS()
  {
    String str1 = "( ";
    int i = 0;
    if (i < this.fbp.length)
    {
      if (i == -1 + this.fbp.length);
      for (str1 = str1 + " body like \"%" + this.fbp[i] + "%\" ) "; ; str1 = str1 + "body like \"%" + this.fbp[i] + "%\" or ")
      {
        i++;
        break;
      }
    }
    String str2 = str1 + " and date > " + (System.currentTimeMillis() - 300000L) + " ";
    aa.v("MicroMsg.SmsBindMobileObserver", "sql where:" + str2);
    return str2;
  }

  private void d(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    switch (((ai)paramx).vI())
    {
    default:
      return;
    case 1:
    case 2:
    case 18:
    case 19:
    }
    if (((((ai)paramx).vI() == 2) || (((ai)paramx).vI() == 19)) && (this.hce != null))
      this.hce.dismiss();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if ((((ai)paramx).vI() == 2) || (((ai)paramx).vI() == 19))
      {
        if (this.hco)
          AddrBookObserver.N(this.mContext.getApplicationContext());
        mN(1);
        return;
      }
      if ((((ai)paramx).vI() == 1) || (((ai)paramx).vI() == 18))
      {
        aa.v("MicroMsg.SmsBindMobileObserver", "mobile:" + this.bTR);
        return;
      }
    }
    if (y(paramInt2, paramString))
    {
      if (this.hce != null)
        this.hce.dismiss();
      this.cmH = true;
      return;
    }
    if (((ai)paramx).vI() == 2)
    {
      if (this.hce != null)
        this.hce.dismiss();
      this.cmH = true;
      mN(2);
      return;
    }
    this.cmH = true;
    if (this.hce != null)
      this.hce.dismiss();
    Context localContext1 = this.mContext;
    Context localContext2 = this.mContext;
    int i = n.bfv;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(localContext1, localContext2.getString(i, arrayOfObject), 0).show();
  }

  private void mN(int paramInt)
  {
    if ((this.hcp == cx.hct) || (this.hcp == cx.hcu))
      be.uA().a(132, this);
    while (true)
    {
      if (this.hcf != null)
        this.hcf.mN(paramInt);
      return;
      be.uA().a(145, this);
    }
  }

  private boolean y(int paramInt, String paramString)
  {
    int i = 1;
    switch (paramInt)
    {
    default:
    case -57:
    case -1:
    case -34:
    case -43:
    case -214:
    case -41:
    case -35:
    case -36:
    case -59:
    case -4:
      do
      {
        i = 0;
        com.tencent.mm.d.a locala;
        do
        {
          return i;
          Toast.makeText(this.mContext, n.bdK, 0).show();
          return i;
          Toast.makeText(this.mContext, n.beS, 0).show();
          return i;
          aa.e("MicroMsg.SmsBindMobileObserver", "dealErrCodeBindMobile");
          this.cmH = i;
          if ((cx.hct == this.hcp) || (this.hcp == cx.hcu))
          {
            be.uz().sr().set(4097, "");
            be.uz().sr().set(6, this.bTR);
            AddrBookObserver.N(this.mContext.getApplicationContext());
          }
          mN(i);
          Toast.makeText(this.mContext, n.beP, 0).show();
          return i;
          locala = com.tencent.mm.d.a.be(paramString);
        }
        while (locala == null);
        locala.a(this.mContext, null, null);
        return i;
        Toast.makeText(this.mContext, n.beR, 0).show();
        return i;
        if (this.hcp == cx.hcs)
        {
          mN(3);
          return i;
        }
        h.a(this.mContext, n.beQ, n.anM, new cv(this));
        return i;
        Toast.makeText(this.mContext, n.beU, 0).show();
        return i;
        h.a(this.mContext, n.beT, n.ber, null);
        return i;
      }
      while (!this.hck);
      mN(6);
      return i;
    case -74:
    }
    h.a(this.mContext, n.beO, n.ber, null);
    return i;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa.i("MicroMsg.SmsBindMobileObserver", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if ((!paramx.equals(this.hcg)) && (!paramx.equals(this.hch)) && (!paramx.equals(this.hci)) && (!paramx.equals(this.gtb)))
      aa.i("MicroMsg.SmsBindMobileObserver", "onSceneEnd, doScene is not called by this class");
    int i;
    do
    {
      do
        return;
      while (this.cmH);
      if ((paramInt1 == 1) || (paramInt1 == 2))
      {
        aa.d("MicroMsg.SmsBindMobileObserver", "error net");
        if (this.hce != null)
          this.hce.dismiss();
        mN(4);
        return;
      }
      if ((cx.hct == this.hcp) && (paramx.getType() == 132))
      {
        d(paramInt1, paramInt2, paramString, paramx);
        return;
      }
      if ((cx.hcu == this.hcp) && (paramx.getType() == 132))
      {
        d(paramInt1, paramInt2, paramString, paramx);
        return;
      }
      if ((cx.hcs != this.hcp) || (paramx.getType() != 145))
        break label710;
      switch (((ag)paramx).vI())
      {
      case 7:
      default:
        return;
      case 5:
      case 6:
      case 8:
      case 9:
      }
      if (((((ag)paramx).vI() == 6) || (((ag)paramx).vI() == 9)) && (this.hce != null))
        this.hce.dismiss();
      i = ((ag)paramx).zA();
      if (((paramInt1 != 0) || (paramInt2 != 0)) && ((paramInt2 != -35) || (i != 1)))
        break;
      if (((ag)paramx).vI() == 6)
      {
        this.hcn = ((ag)paramx).zC();
        aa.d("MicroMsg.SmsBindMobileObserver", "NetSceneBindOpMobileForReg ticket: " + this.hcn);
        mN(1);
        return;
      }
      if (((ag)paramx).vI() == 9)
      {
        this.hcn = ((ag)paramx).zC();
        aa.d("MicroMsg.SmsBindMobileObserver", "NetSceneBindOpMobileForReg ticket: " + this.hcn);
        ((ag)paramx).getUsername();
        ((ag)paramx).zB();
        return;
      }
      if ((((ag)paramx).vI() != 5) && (((ag)paramx).vI() != 8))
        break;
      aa.v("MicroMsg.SmsBindMobileObserver", "mobile:" + this.bTR);
    }
    while ((((ag)paramx).vI() != 5) || (paramInt2 != -35) || (i != 1));
    this.hck = true;
    mN(5);
    return;
    if ((((ag)paramx).vI() == 6) || (((ag)paramx).vI() == 9))
    {
      if (this.hce != null)
        this.hce.dismiss();
      this.cmH = true;
      mN(2);
      return;
    }
    if (y(paramInt2, paramString))
    {
      if (this.hce != null)
        this.hce.dismiss();
      this.cmH = true;
      return;
    }
    this.cmH = true;
    if (this.hce != null)
      this.hce.dismiss();
    Context localContext1 = this.mContext;
    Context localContext2 = this.mContext;
    int j = n.bfv;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(localContext1, localContext2.getString(j, arrayOfObject), 0).show();
    return;
    label710: Assert.assertTrue("code path should not be here!", false);
  }

  public final void ec(boolean paramBoolean)
  {
    this.hco = paramBoolean;
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    aa.v("MicroMsg.SmsBindMobileObserver", "sms number:" + this.hcj);
    if ((this.fbl) || (this.cmH) || (this.fbm));
    Cursor localCursor;
    do
    {
      Uri localUri;
      String[] arrayOfString;
      String str1;
      do
      {
        return;
        localUri = Uri.parse("content://sms/inbox");
        this.contentResolver = this.mContext.getContentResolver();
        arrayOfString = new String[] { "body", "_id", "date" };
        str1 = aLS();
      }
      while ((str1 == null) || (str1.equals("")));
      localCursor = this.contentResolver.query(localUri, arrayOfString, str1, null, null);
    }
    while (localCursor == null);
    int i = -1;
    long l1 = 0L;
    while (localCursor.moveToNext())
    {
      long l2 = localCursor.getLong(2);
      if (l2 > l1)
      {
        i = localCursor.getPosition();
        l1 = l2;
      }
    }
    this.grJ = null;
    String str4;
    String str5;
    if (i >= 0)
    {
      this.fbm = true;
      localCursor.moveToPosition(i);
      String str2 = localCursor.getString(localCursor.getColumnIndex("body"));
      Matcher localMatcher = Pattern.compile("\\d{4,8}").matcher(str2);
      boolean bool = localMatcher.find();
      String str3 = null;
      if (bool)
        str3 = localMatcher.group();
      this.grJ = str3;
      if (this.hce != null)
        this.hce.setCancelable(true);
      if ((this.hcp != cx.hct) && (this.hcp != cx.hcu))
        break label438;
      cq localcq = new cq();
      localcq.bNT.context = this.mContext;
      com.tencent.mm.sdk.b.a.ayH().f(localcq);
      str4 = localcq.bNU.bNV;
      com.tencent.mm.c.a.ct localct = new com.tencent.mm.c.a.ct();
      com.tencent.mm.sdk.b.a.ayH().f(localct);
      str5 = localct.bNW.bNX;
      if (this.hcp != cx.hcu)
        break label499;
    }
    label438: label499: for (int j = 19; ; j = 2)
    {
      this.hcg = new ai(this.bTR, j, this.grJ, "", str4, str5);
      be.uA().d(this.hcg);
      localCursor.close();
      return;
      String str6 = this.bTR;
      if (this.hck);
      for (int k = 9; ; k = 6)
      {
        this.hci = new ag(str6, k, this.grJ, 0, "");
        be.uA().d(this.hci);
        break;
      }
    }
  }

  public final void recycle()
  {
    be.uA().b(132, this);
    be.uA().b(145, this);
    this.mContext = null;
    this.cmH = true;
    if (this.hce != null)
      this.hce.dismiss();
  }

  public final void xo(String paramString)
  {
    if ((this.hcp == cx.hct) || (this.hcp == cx.hcu))
    {
      be.uA().a(132, this);
      this.bTR = paramString;
      this.fbl = false;
      this.fbm = false;
      this.hcj = "";
      this.cmH = false;
      if ((this.hcp != cx.hct) && (this.hcp != cx.hcu))
        break label205;
      int i = 1;
      if (this.hcp == cx.hcu)
        i = 18;
      this.hch = new ai(this.bTR, i, "", 0, "");
      be.uA().d(this.hch);
      if (this.hce != null)
        break label264;
      this.hce = h.a(this.mContext, false, this.mContext.getString(n.bfu), this.hcl, "", "", null, null);
    }
    while (true)
    {
      this.progress = 0;
      this.hcm.setIndeterminate(false);
      this.hcq.sendEmptyMessage(1000);
      return;
      be.uA().a(145, this);
      break;
      label205: String str = this.bTR;
      if (this.hck);
      for (int j = 8; ; j = 5)
      {
        this.gtb = new ag(str, j, "", 0, "");
        be.uA().d(this.gtb);
        break;
      }
      label264: this.hce.show();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ct
 * JD-Core Version:    0.6.2
 */