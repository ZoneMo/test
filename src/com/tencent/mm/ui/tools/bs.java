package com.tencent.mm.ui.tools;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.c.a.z;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.dx;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.b;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.MultiTouchImageView;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;
import com.tencent.mm.w.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import junit.framework.Assert;

@SuppressLint({"UseSparseArrays"})
public final class bs extends BaseAdapter
  implements com.tencent.mm.n.m, com.tencent.mm.n.n
{
  private int[] cqM;
  private HashMap dmR = new HashMap();
  private ImageGalleryUI hjm;
  private bt hjn;
  private bu hjo;
  private boolean hjp = false;
  private String hjq;
  private boolean hjr;
  private boolean hjs;

  public bs(ImageGalleryUI paramImageGalleryUI, long paramLong, String paramString1, boolean paramBoolean, String paramString2)
  {
    this.hjr = bool;
    String str = "MicroMsg.ImageGalleryAdapter, invalid argument, context = " + paramImageGalleryUI + ", currentMsgId = " + paramLong + ", talker = " + paramString1 + ", stack = " + cj.azV();
    if ((paramImageGalleryUI != null) && (paramLong > 0L) && (paramString1 != null) && (paramString1.length() > 0));
    while (true)
    {
      Assert.assertTrue(str, bool);
      this.hjm = paramImageGalleryUI;
      this.hjn = new bt(paramLong, paramString1);
      this.cqM = new int[this.hjn.PG()];
      this.hjp = paramBoolean;
      this.hjq = paramString2;
      this.hjo = new bu(this, new dx(this));
      return;
      bool = false;
    }
  }

  public static e S(ak paramak)
  {
    if (paramak.rO() == 1)
    {
      e locale = ag.Ba().dG((int)paramak.Bo());
      if ((locale == null) || (locale.AG() == 0L))
        locale = ag.Ba().dF(paramak.AH());
      return locale;
    }
    return ag.Ba().dF(paramak.AH());
  }

  private void a(ak paramak, e parame)
  {
    if ((paramak == null) || (paramak.Bo() == 0L) || (parame == null) || (parame.AG() == 0L))
    {
      StringBuilder localStringBuilder1 = new StringBuilder("doRestransmitMsg fail, msgLocalId = ");
      Object localObject1;
      StringBuilder localStringBuilder2;
      if (paramak == null)
      {
        localObject1 = "null";
        localStringBuilder2 = localStringBuilder1.append(localObject1).append(", imgLocalId = ");
        if (parame != null)
          break label93;
      }
      label93: for (Object localObject2 = "null"; ; localObject2 = Long.valueOf(parame.AG()))
      {
        aa.e("MicroMsg.ImageGalleryAdapter", localObject2);
        return;
        localObject1 = Long.valueOf(paramak.Bo());
        break;
      }
    }
    String str1 = b(paramak, parame);
    if ((str1 == null) || (str1.length() == 0))
    {
      aa.e("MicroMsg.ImageGalleryAdapter", "doRestransmitMsg fail, bigImgPath is null, msgLocalId = " + paramak.Bo() + ", imgLocalId = " + parame.AG());
      return;
    }
    if (cj.hX(this.hjq))
    {
      aa.i("MicroMsg.ImageGalleryAdapter", "directly send user is empty, select one");
      Intent localIntent2 = new Intent(this.hjm, MsgRetransmitUI.class);
      localIntent2.putExtra("Retr_File_Name", str1);
      localIntent2.putExtra("Retr_Msg_Id", paramak.Bo());
      localIntent2.putExtra("Retr_Msg_Type", 0);
      localIntent2.putExtra("Retr_Compress_Type", d(paramak, parame));
      this.hjm.startActivity(localIntent2);
      return;
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.hjq;
    aa.d("MicroMsg.ImageGalleryAdapter", "directly send user %s", arrayOfObject1);
    int j;
    int i;
    if (paramak.rO() == 1)
      if (parame.AM())
      {
        j = 1;
        i = j;
        label293: String str2 = v.th();
        String str3 = ag.Ba().j(com.tencent.mm.w.f.c(parame), "", "");
        if (!cj.hX(str3))
        {
          aa.d("MicroMsg.ImageGalleryAdapter", "connector click[img]: to[%s] fileName[%s]", new Object[] { parame, str3 });
          com.tencent.mm.w.y localy = new com.tencent.mm.w.y(4, str2, this.hjq, str3, i, null);
          be.uA().d(localy);
          ct.vB().a(ct.cjQ, null);
        }
        if (!this.hjr)
          break label526;
        Intent localIntent1 = new Intent(this.hjm, ChattingUI.class);
        localIntent1.addFlags(67108864);
        localIntent1.putExtra("Chat_User", this.hjq);
        this.hjm.startActivity(localIntent1);
      }
    while (true)
    {
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(3);
      arrayOfObject2[1] = Integer.valueOf(4);
      arrayOfObject2[2] = this.hjq;
      localm.d(10424, arrayOfObject2);
      return;
      j = 0;
      break;
      if (!parame.AM())
      {
        i = 0;
        break label293;
      }
      if (!com.tencent.mm.a.c.as(com.tencent.mm.w.f.a(parame).AI()))
      {
        i = 0;
        break label293;
      }
      i = 1;
      break label293;
      label526: com.tencent.mm.ui.base.h.an(this.hjm, this.hjm.getString(2131167704));
    }
  }

  private static void a(bw parambw)
  {
    aa.d("MicroMsg.ImageGalleryAdapter", "edw dealFail");
    parambw.hjB.setVisibility(0);
    parambw.hjA.setVisibility(8);
    parambw.hgr.setVisibility(8);
  }

  private static void a(bw parambw, e parame, boolean paramBoolean)
  {
    aa.d("MicroMsg.ImageGalleryAdapter", "edw dealDownloading, isHd = " + paramBoolean);
    parambw.hgr.setVisibility(0);
    parambw.hjA.setVisibility(8);
    parambw.hjB.setVisibility(8);
    e locale = com.tencent.mm.w.f.a(parame);
    int i = locale.vR();
    int j = locale.getOffset();
    int k;
    TextView localTextView;
    int m;
    if (i != 0)
    {
      k = -1 + j * 100 / i;
      parambw.hjC.setProgress(Math.max(0, k));
      localTextView = parambw.hjE;
      m = 0;
      if (!paramBoolean)
        break label164;
    }
    Bitmap localBitmap;
    while (true)
    {
      localTextView.setVisibility(m);
      localBitmap = com.tencent.mm.sdk.platformtools.h.su(ag.Ba().j(locale.AJ(), "", ""));
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
        break label171;
      parambw.hjF.setImageResource(2130837976);
      return;
      k = 0;
      break;
      label164: m = 8;
    }
    label171: parambw.hjF.setImageBitmap(localBitmap);
  }

  private boolean a(bw parambw, ak paramak, e parame, int paramInt)
  {
    aa.d("MicroMsg.ImageGalleryAdapter", "edw dealSucc");
    String str = b(paramak, parame);
    if ((str == null) || (str.length() == 0))
      return false;
    parambw.hjA.setVisibility(0);
    parambw.hgr.setVisibility(8);
    parambw.hjB.setVisibility(8);
    MultiTouchImageView localMultiTouchImageView1 = parambw.dmT;
    localMultiTouchImageView1.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    MultiTouchImageView localMultiTouchImageView2 = parambw.dmT;
    View localView = this.hjm.findViewById(2131362463);
    int i = localView.getWidth();
    int j = localView.getHeight();
    aa.v("MicroMsg.ImageGalleryAdapter", "scrWidth:" + i + " scrHeight:" + j);
    if (!com.tencent.mm.a.c.as(str))
    {
      aa.e("MicroMsg.ImageGalleryAdapter", "getSuitableBmp fail, file does not exist, filePath = " + str);
      if (this.hjp)
      {
        a(paramak, parame);
        this.hjp = false;
      }
      return true;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    Bitmap localBitmap1 = BitmapFactory.decodeFile(str, localOptions);
    if (localBitmap1 != null)
      localBitmap1.recycle();
    int k;
    label262: int m;
    label292: int n;
    if ((au.T(localOptions.outWidth, localOptions.outHeight)) && (localOptions.outWidth > 480))
    {
      k = 1;
      if ((!au.S(localOptions.outWidth, localOptions.outHeight)) || (localOptions.outHeight <= 480))
        break label399;
      m = 1;
      if ((k == 0) && (m == 0))
        break label963;
      n = localOptions.outHeight;
    }
    for (int i1 = localOptions.outWidth; ; i1 = 960)
    {
      int i2 = com.tencent.mm.platformtools.c.hH(str);
      if ((i2 == 90) || (i2 == 270))
      {
        int i3 = i1;
        i1 = n;
        n = i3;
      }
      Bitmap localBitmap2 = com.tencent.mm.sdk.platformtools.h.a(str, n, i1, false);
      if (localBitmap2 == null)
      {
        aa.e("MicroMsg.ImageGalleryAdapter", "getSuitableBmp fail, temBmp is null, filePath = " + str);
        break;
        k = 0;
        break label262;
        label399: m = 0;
        break label292;
      }
      Bitmap localBitmap3 = com.tencent.mm.sdk.platformtools.h.a(localBitmap2, i2);
      Matrix localMatrix = new Matrix();
      localMatrix.reset();
      float f1 = localBitmap3.getWidth() / localBitmap3.getHeight();
      float f2 = localBitmap3.getHeight() / localBitmap3.getWidth();
      aa.v("MicroMsg.ImageGalleryAdapter", "whDiv is " + f1 + " hwDiv is " + f2);
      if ((f2 >= 2.0F) && (localBitmap3.getHeight() >= 480))
      {
        float f10 = localBitmap3.getWidth() / i;
        float f11 = i / localBitmap3.getWidth();
        if (f10 > 1.0D)
        {
          localMatrix.postScale(f11, f11);
          localBitmap3.getHeight();
          localMatrix.postTranslate((i - f11 * localBitmap3.getWidth()) / 2.0F, 0.0F);
        }
      }
      while (true)
      {
        localMultiTouchImageView2.setImageMatrix(localMatrix);
        localMultiTouchImageView2.bk(localBitmap3.getWidth(), localBitmap3.getHeight());
        localMultiTouchImageView2.setImageBitmap(localBitmap3);
        this.dmR.put(Integer.valueOf(paramInt), new WeakReference(localBitmap3));
        aa.d("MicroMsg.ImageGalleryAdapter", "bitmapCache, put to map, bmpCacheKey = " + paramInt);
        break;
        localMatrix.postScale(1.0F, 1.0F);
        localMatrix.postTranslate((i - localBitmap3.getWidth()) / 2, 0.0F);
        continue;
        if ((f1 < 2.0F) || (localBitmap3.getWidth() < 480))
          break label822;
        float f7 = localBitmap3.getHeight() / 480.0F;
        float f8 = 480.0F / localBitmap3.getHeight();
        if (f7 > 1.0D)
        {
          localMatrix.postScale(f7, f8);
          localMatrix.postTranslate(0.0F, (j - 480) / 2);
        }
        else
        {
          localMatrix.postScale(1.0F, 1.0F);
          float f9 = (j - localBitmap3.getHeight()) / 2;
          aa.d("MicroMsg.ImageGalleryAdapter", " offsety " + f9);
          localMatrix.postTranslate(0.0F, f9);
        }
      }
      label822: float f3 = i / localBitmap3.getWidth();
      float f4 = j / localBitmap3.getHeight();
      label854: float f5;
      float f6;
      if (f3 < f4)
      {
        f5 = localBitmap3.getWidth() / i;
        f6 = localBitmap3.getHeight() / j;
        if (f5 <= f6)
          break label950;
        label886: if (f5 <= 1.0D)
          break label957;
        localMatrix.postScale(f3, f3);
      }
      while (true)
      {
        localMatrix.postTranslate((i - f3 * localBitmap3.getWidth()) / 2.0F, (j - f3 * localBitmap3.getHeight()) / 2.0F);
        break;
        f3 = f4;
        break label854;
        label950: f5 = f6;
        break label886;
        label957: f3 = 1.0F;
      }
      label963: n = 960;
    }
  }

  private static String b(ak paramak, e parame)
  {
    String str2;
    if (paramak.rO() == 1)
    {
      String str3 = com.tencent.mm.w.f.c(parame);
      str2 = ag.Ba().j(str3, "", "");
      if ((str3 == null) || (str3.length() <= 0) || (!com.tencent.mm.a.c.as(str2)));
    }
    do
    {
      String str4;
      do
      {
        return str2;
        str4 = parame.AI();
        str2 = ag.Ba().j(str4, "", "");
      }
      while ((str4 != null) && (str4.length() > 0) && (com.tencent.mm.a.c.as(str2)));
      return null;
      if (!parame.AL())
        break;
      String str1 = parame.AI();
      if (parame.AM())
      {
        e locale = com.tencent.mm.w.f.a(parame);
        if ((locale != null) && (locale.AG() > 0L) && (locale.AL()) && (com.tencent.mm.a.c.as(ag.Ba().j(locale.AI(), "", ""))))
          str1 = locale.AI();
      }
      str2 = ag.Ba().j(str1, "", "");
    }
    while ((!cj.hX(str2)) && (com.tencent.mm.a.c.as(str2)));
    return null;
    return null;
  }

  public static String c(ak paramak, e parame)
  {
    if (paramak.rO() == 1)
    {
      String str3 = com.tencent.mm.w.f.c(parame);
      String str4 = ag.Ba().j(str3, "", "");
      if ((str3 != null) && (str3.length() > 0) && (com.tencent.mm.a.c.as(str4)));
      String str5;
      do
      {
        return str4;
        str5 = parame.AI();
        str4 = ag.Ba().j(str5, "", "");
      }
      while ((str5 != null) && (str5.length() > 0) && (com.tencent.mm.a.c.as(str4)));
    }
    String str2;
    do
    {
      do
        return ag.Ba().fX(paramak.ot());
      while (!parame.AL());
      String str1 = parame.AI();
      str2 = ag.Ba().j(str1, "", "");
    }
    while ((cj.hX(str2)) || (!com.tencent.mm.a.c.as(str2)));
    return str2;
  }

  public static int d(ak paramak, e parame)
  {
    if (paramak.rO() == 1)
    {
      String str1 = com.tencent.mm.w.f.c(parame);
      String str2 = ag.Ba().j(str1, "", "");
      if ((str1 != null) && (str1.length() > 0) && (com.tencent.mm.a.c.as(str2)))
        if (!parame.AM());
    }
    e locale;
    do
    {
      return 1;
      return 0;
      return 0;
      if (!parame.AL())
        break label119;
      if (!parame.AM())
        break;
      locale = com.tencent.mm.w.f.a(parame);
    }
    while ((locale != null) && (locale.AG() > 0L) && (locale.AL()) && (com.tencent.mm.a.c.as(ag.Ba().j(locale.AI(), "", ""))));
    return 0;
    label119: return 0;
  }

  public final void a(int paramInt1, int paramInt2, com.tencent.mm.n.x paramx)
  {
    int i = ((u)paramx).AT();
    aa.i("MicroMsg.ImageGalleryAdapter", "onSceneProgressEnd, pos = " + i);
    if (i == -1)
      aa.e("MicroMsg.ImageGalleryAdapter", "onSceneProgressEnd, pos is -1");
    while (i != this.hjm.aNr())
      return;
    bw localbw = (bw)this.hjm.getSelectedView().getTag();
    if ((paramInt1 != 0) && (paramInt2 != 0));
    for (int j = -1 + paramInt1 * 100 / paramInt2; ; j = 0)
    {
      int k = Math.max(0, j);
      localbw.hjC.setProgress(k);
      TextView localTextView = localbw.hjD;
      ImageGalleryUI localImageGalleryUI = this.hjm;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(k);
      localTextView.setText(localImageGalleryUI.getString(2131165309, arrayOfObject));
      return;
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (paramx.getType() != 109)
      return;
    int i = ((u)paramx).AT();
    aa.i("MicroMsg.ImageGalleryAdapter", "onSceneEnd, pos = " + i);
    if (i == -1)
    {
      aa.e("MicroMsg.ImageGalleryAdapter", "onSceneEnd, pos is -1");
      return;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      if (i == this.hjm.aNr())
      {
        this.hjm.ep(true);
        this.hjm.az(true);
      }
      this.cqM[i] = 4;
      aa.e("MicroMsg.ImageGalleryAdapter", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
      notifyDataSetChanged();
      return;
    }
    aa.d("MicroMsg.ImageGalleryAdapter", "pos = " + i + ", selectedPos = " + this.hjm.aNr());
    if (i == this.hjm.aNr())
    {
      bw localbw = (bw)this.hjm.getSelectedView().getTag();
      localbw.hjC.setProgress(localbw.hjC.getMax());
      this.hjm.ep(true);
      this.hjm.az(true);
      Message localMessage = new Message();
      localMessage.what = 1;
      localMessage.arg1 = i;
      this.hjm.handler.sendMessage(localMessage);
    }
    this.cqM[i] = 3;
    notifyDataSetChanged();
  }

  public final void aNk()
  {
    this.hjs = false;
  }

  public final void detach()
  {
    if (this.hjo != null)
      this.hjo.detach();
    if (this.dmR != null)
    {
      Iterator localIterator = this.dmR.keySet().iterator();
      while (localIterator.hasNext())
      {
        Bitmap localBitmap = (Bitmap)((WeakReference)this.dmR.get(localIterator.next())).get();
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
        {
          aa.i("MicroMsg.ImageGalleryAdapter", "detach, bmp recycled!");
          localBitmap.recycle();
        }
      }
    }
  }

  public final void eo(boolean paramBoolean)
  {
    this.hjr = paramBoolean;
  }

  public final int getCount()
  {
    return this.hjn.PG();
  }

  public final Object getItem(int paramInt)
  {
    return this.hjn.oc(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i;
    bw localbw2;
    ak localak;
    e locale1;
    int j;
    if (paramView == null)
    {
      bw localbw1 = new bw();
      paramView = View.inflate(this.hjm, 2130903369, null);
      localbw1.hjA = ((LinearLayout)paramView.findViewById(2131361817));
      localbw1.dmT = ((MultiTouchImageView)paramView.findViewById(2131361818));
      com.tencent.mm.sdk.platformtools.n.J(localbw1.dmT);
      aa.i("MicroMsg.ImageGalleryAdapter", "getView, convertView hashcode = " + paramView.hashCode() + ", imageIv hashCode = " + localbw1.dmT.hashCode());
      i = paramView.hashCode();
      if (this.dmR.containsKey(Integer.valueOf(i)))
      {
        Bitmap localBitmap = (Bitmap)((WeakReference)this.dmR.get(Integer.valueOf(i))).get();
        if (localBitmap == null)
          aa.d("MicroMsg.ImageGalleryAdapter", "oldBmp is null, bitmapCache, get from map, bmpCacheKey = " + i);
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
        {
          aa.i("MicroMsg.ImageGalleryAdapter", "getView, oldBmp recycled!");
          localBitmap.recycle();
        }
      }
      localbw1.hgr = ((LinearLayout)paramView.findViewById(2131362869));
      localbw1.hjC = ((ProgressBar)paramView.findViewById(2131362312));
      localbw1.hjD = ((TextView)paramView.findViewById(2131362603));
      localbw1.hjE = ((TextView)paramView.findViewById(2131362871));
      localbw1.hjF = ((ImageView)paramView.findViewById(2131362870));
      localbw1.hjB = ((LinearLayout)paramView.findViewById(2131362872));
      localbw1.hgr.setVisibility(8);
      localbw1.hjB.setVisibility(8);
      localbw1.hjA.setVisibility(8);
      paramView.setTag(localbw1);
      localbw2 = localbw1;
      paramView.setLayoutParams(new Gallery.LayoutParams(-1, -1));
      localak = (ak)getItem(paramInt);
      locale1 = S(localak);
      j = this.cqM[paramInt];
      aa.d("MicroMsg.ImageGalleryAdapter", "getView, pos = " + paramInt + ", currentState = " + j);
    }
    switch (j)
    {
    default:
    case 0:
      do
      {
        return paramView;
        localbw2 = (bw)paramView.getTag();
        i = 0;
        break;
        aa.d("MicroMsg.ImageGalleryAdapter", "edw dealDownloadOrSucc");
        aa.d("MicroMsg.ImageGalleryAdapter", "deal LoadFail");
        boolean bool;
        if (localak.rO() == 1)
          bool = localak.aCq();
        while (bool)
        {
          this.cqM[paramInt] = 4;
          a(localbw2);
          return paramView;
          if (localak.aCq())
          {
            bool = true;
          }
          else if (locale1.AL())
          {
            String str1 = locale1.AI();
            if (locale1.AM())
            {
              e locale2 = com.tencent.mm.w.f.a(locale1);
              if ((locale2 != null) && (locale2.AG() > 0L) && (locale2.AL()) && (com.tencent.mm.a.c.as(ag.Ba().j(locale2.AI(), "", ""))))
                str1 = locale2.AI();
            }
            String str2 = ag.Ba().j(str1, "", "");
            if ((!cj.hX(str2)) && (!com.tencent.mm.a.c.as(str2)))
              bool = true;
          }
          else
          {
            bool = false;
          }
        }
        if (a(localbw2, localak, locale1, i))
        {
          this.cqM[paramInt] = 3;
          return paramView;
        }
        this.hjo.a(locale1.AG(), localak.Bo(), 0, paramInt);
        this.cqM[paramInt] = 1;
        a(localbw2, locale1, false);
      }
      while (this.hjm.hkh.contains(Integer.valueOf(paramInt)));
      this.hjm.hkh.add(Integer.valueOf(paramInt));
      return paramView;
    case 3:
      a(localbw2, localak, locale1, i);
      return paramView;
    case 1:
      a(localbw2, locale1, false);
      return paramView;
    case 2:
      a(localbw2, locale1, true);
      return paramView;
    case 4:
    }
    a(localbw2);
    paramView.invalidate();
    return paramView;
  }

  public final void nX(int paramInt)
  {
    aa.i("MicroMsg.ImageGalleryAdapter", "viewHdImg, pos = " + paramInt);
    ak localak = (ak)getItem(paramInt);
    e locale = S(localak);
    if ((localak == null) || (localak.Bo() == 0L) || (locale == null) || (locale.AG() == 0L))
    {
      StringBuilder localStringBuilder1 = new StringBuilder("viewHdImg fail, msgLocalId = ");
      Object localObject1;
      StringBuilder localStringBuilder2;
      if (localak == null)
      {
        localObject1 = "null";
        localStringBuilder2 = localStringBuilder1.append(localObject1).append(", imgLocalId = ");
        if (locale != null)
          break label132;
      }
      label132: for (Object localObject2 = "null"; ; localObject2 = Long.valueOf(locale.AG()))
      {
        aa.e("MicroMsg.ImageGalleryAdapter", localObject2);
        return;
        localObject1 = Long.valueOf(localak.Bo());
        break;
      }
    }
    this.cqM[paramInt] = 2;
    this.hjm.ep(false);
    this.hjm.az(false);
    notifyDataSetChanged();
    this.hjo.a(locale.AG(), localak.Bo(), 1, paramInt);
  }

  public final void nY(int paramInt)
  {
    ak localak = (ak)getItem(paramInt);
    a(localak, S(localak));
  }

  public final void nZ(int paramInt)
  {
    ak localak = (ak)getItem(paramInt);
    e locale = S(localak);
    if ((localak == null) || (localak.Bo() == 0L) || (locale == null) || (locale.AG() == 0L))
    {
      StringBuilder localStringBuilder1 = new StringBuilder("doRestransmitMsg fail, msgLocalId = ");
      Object localObject1;
      StringBuilder localStringBuilder2;
      if (localak == null)
      {
        localObject1 = "null";
        localStringBuilder2 = localStringBuilder1.append(localObject1).append(", imgLocalId = ");
        if (locale != null)
          break label109;
      }
      label109: for (Object localObject2 = "null"; ; localObject2 = Long.valueOf(locale.AG()))
      {
        aa.e("MicroMsg.ImageGalleryAdapter", localObject2);
        return;
        localObject1 = Long.valueOf(localak.Bo());
        break;
      }
    }
    String str = b(localak, locale);
    if ((str == null) || (str.length() == 0))
    {
      aa.e("MicroMsg.ImageGalleryAdapter", "doRestransmitMsg fail, bigImgPath is null, msgLocalId = " + localak.Bo() + ", imgLocalId = " + locale.AG());
      return;
    }
    s.f(str, this.hjm);
  }

  public final void oa(int paramInt)
  {
    ak localak = (ak)getItem(paramInt);
    com.tencent.mm.c.a.x localx = new com.tencent.mm.c.a.x();
    if (b.a(localx, localak))
    {
      a.ayH().f(localx);
      if (localx.bMm.ret == 0)
        com.tencent.mm.ui.base.h.an(this.hjm, this.hjm.getString(2131167821));
      return;
    }
    com.tencent.mm.ui.base.h.c(this.hjm, localx.bMl.type, 2131167946);
  }

  public final boolean ob(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.cqM.length));
    while ((this.cqM[paramInt] != 3) && (this.cqM[paramInt] != 0))
      return false;
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bs
 * JD-Core Version:    0.6.2
 */