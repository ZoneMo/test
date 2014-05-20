package com.tencent.mm.ui.tools;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.w.e;
import java.util.ArrayList;
import java.util.Date;
import junit.framework.Assert;

public class ImageGalleryUI extends MMActivity
{
  private String bNl;
  private String cWi;
  private MMGestureGallery dka;
  private ay dna;
  private boolean dnc = true;
  private AdapterView.OnItemSelectedListener dnd = new cq(this);
  private AdapterView.OnItemClickListener dne = new co(this);
  Handler handler;
  int hjK;
  int hjL;
  float hjM;
  float hjN;
  private final boolean hjs = false;
  private bs hka;
  private TextView hkb;
  private TextView hkc;
  private TextView hkd;
  private Button hke;
  private FrameLayout hkf;
  ColorDrawable hkg;
  ArrayList hkh = new ArrayList();
  private boolean hki = true;
  private boolean hkj = false;
  private boolean hkk = false;
  private boolean hkl = false;
  Bundle hkm;

  private String aNp()
  {
    if ((this.cWi != null) && (this.cWi.length() > 0))
      return this.cWi;
    return this.bNl;
  }

  private boolean e(ak paramak, e parame)
  {
    try
    {
      int i = bs.d(paramak, parame);
      boolean bool1 = false;
      if (i == 0)
      {
        boolean bool2 = parame.AM();
        bool1 = false;
        if (bool2)
          bool1 = true;
      }
      return bool1;
    }
    catch (NullPointerException localNullPointerException)
    {
      aa.e("MicroMsg.ImageGalleryUI", "error:" + localNullPointerException);
    }
    return false;
  }

  private void eq(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      getWindow().setFlags(1024, 1024);
      return;
    }
    aa.d("MicroMsg.ImageGalleryUI", "request custom title");
    getWindow().clearFlags(1024);
  }

  private boolean oe(int paramInt)
  {
    try
    {
      ak localak = (ak)this.hka.getItem(paramInt);
      e locale = bs.S(localak);
      if (bs.d(localak, locale) == 0)
      {
        boolean bool = locale.AM();
        if (bool)
          return true;
      }
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
      aa.e("MicroMsg.ImageGalleryUI", "error:" + localNullPointerException);
    }
    return false;
  }

  private void of(int paramInt)
  {
    if (!this.hkj)
      finish();
    Intent localIntent = new Intent();
    localIntent.setClass(aal(), ImageGalleryGridUI.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("kintent_intent_source", paramInt);
    localIntent.putExtra("kintent_talker", aNp());
    localIntent.putExtra("kintent_image_count", this.hka.getCount());
    localIntent.putExtra("kintent_image_index", this.dka.getSelectedItemPosition());
    localIntent.putIntegerArrayListExtra("kintent_downloaded_index_list", this.hkh);
    startActivity(localIntent);
    overridePendingTransition(2130968616, 0);
  }

  protected final void FR()
  {
    this.hkl = false;
    this.bNl = getIntent().getStringExtra("img_gallery_talker");
    this.hkj = getIntent().getBooleanExtra("img_gallery_enter_from_grid", false);
    String str1 = "MicroMsg.ImageGalleryUI initView, talker is null, stack = " + cj.azV();
    boolean bool1;
    boolean bool2;
    String str2;
    long l;
    boolean bool3;
    label189: ak localak;
    String str4;
    if (this.bNl != null)
    {
      bool1 = true;
      Assert.assertTrue(str1, bool1);
      this.cWi = getIntent().getStringExtra("img_gallery_chatroom_name");
      bool2 = getIntent().getBooleanExtra("img_gallery_is_restransmit_after_download", false);
      str2 = getIntent().getStringExtra("img_gallery_directly_send_name");
      l = getIntent().getLongExtra("img_gallery_msg_id", 0L);
      int i = getIntent().getIntExtra("img_gallery_msg_svr_id", 0);
      String str3 = "MicroMsg.ImageGalleryUI initView, msgId is invalid, msgId = " + l + ", msgSvrId = " + i + ", stack = " + cj.azV();
      if ((l <= 0L) && (i <= 0))
        break label609;
      bool3 = true;
      Assert.assertTrue(str3, bool3);
      if (l == 0L)
      {
        localak = be.uz().sw().ae(aNp(), i);
        str4 = "MicroMsg.ImageGalleryUI initView, msg does not exist, msgSvrId = " + i + ", stack = " + cj.azV();
        if ((localak == null) || (localak.Bo() <= 0L))
          break label615;
      }
    }
    label609: label615: for (boolean bool4 = true; ; bool4 = false)
    {
      Assert.assertTrue(str4, bool4);
      l = localak.Bo();
      this.hka = new bs(this, l, aNp(), bool2, str2);
      this.hka.aNk();
      this.hka.eo(getIntent().getBooleanExtra("start_chatting_ui", true));
      this.dka = ((MMGestureGallery)findViewById(2131362427));
      this.dka.setVerticalFadingEdgeEnabled(false);
      this.dka.setHorizontalFadingEdgeEnabled(false);
      this.dka.setOnItemSelectedListener(this.dnd);
      this.dka.setOnItemClickListener(this.dne);
      this.dka.setAdapter(this.hka);
      this.hkb = ((TextView)findViewById(2131362862));
      this.hkd = ((TextView)findViewById(2131362864));
      this.hkc = ((TextView)findViewById(2131362863));
      this.hke = ((Button)findViewById(2131362471));
      this.hke.setOnClickListener(new ce(this));
      this.hke.setVisibility(4);
      int j = be.uz().sw().j(aNp(), l);
      vT(j + 1 + " / " + this.hka.getCount());
      this.dka.setSelection(j);
      a(new cg(this));
      a(0, 2130838841, new ch(this));
      ((LinearLayout)findViewById(2131362470)).getBackground().setAlpha(178);
      ((LinearLayout)findViewById(2131362865)).setOnClickListener(new cn(this));
      return;
      bool1 = false;
      break;
      bool3 = false;
      break label189;
    }
  }

  protected final int Iw()
  {
    return -1;
  }

  protected final void aEN()
  {
    ((ViewGroup)aES().getParent()).removeView(aES());
    ((ViewGroup)getWindow().getDecorView()).addView(aES(), 0);
  }

  @TargetApi(16)
  public final void aNq()
  {
    if (Build.VERSION.SDK_INT < 12)
      return;
    this.dka.setPivotX(0.0F);
    this.dka.setPivotY(0.0F);
    this.dka.setScaleX(this.hjM);
    this.dka.setScaleY(this.hjN);
    this.dka.setTranslationX(this.hjK);
    this.dka.setTranslationY(this.hjL);
    this.dka.setAlpha(0.0F);
    if (Build.VERSION.SDK_INT >= 16)
      this.dka.animate().setDuration(500L).scaleX(1.0F).scaleY(1.0F).alpha(1.0F).translationX(0.0F).translationY(0.0F).withLayer();
    while (true)
    {
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this.hkg, "alpha", new int[] { 0, 255 });
      localObjectAnimator.setDuration(500L);
      localObjectAnimator.start();
      return;
      this.dka.animate().setDuration(500L).scaleX(1.0F).scaleY(1.0F).alpha(1.0F).translationX(0.0F).translationY(0.0F);
    }
  }

  final int aNr()
  {
    return this.dka.getSelectedItemPosition();
  }

  public final void az(boolean paramBoolean)
  {
    int i = 8;
    View localView = findViewById(2131362470);
    if (((paramBoolean) && (localView.getVisibility() == 0)) || ((!paramBoolean) && (localView.getVisibility() == i)))
      return;
    if (paramBoolean)
      i = 0;
    localView.setVisibility(i);
    Activity localActivity = aal();
    if (paramBoolean);
    for (int j = 2130968582; ; j = 2130968584)
    {
      localView.startAnimation(AnimationUtils.loadAnimation(localActivity, j));
      return;
    }
  }

  public final void ep(boolean paramBoolean)
  {
    dg(paramBoolean);
  }

  final void g(boolean paramBoolean, int paramInt)
  {
    ak localak;
    e locale;
    if (paramBoolean)
    {
      if (this.hka == null)
      {
        aa.e("MicroMsg.ImageGalleryUI", "setTitleFooterVisible fail, adapter is null, position = " + paramInt);
        return;
      }
      eq(false);
      aFe();
      localak = (ak)this.hka.getItem(paramInt);
      if (localak == null)
      {
        aa.e("MicroMsg.ImageGalleryUI", "setTitleFooterVisible fail, msg is null, position = " + paramInt);
        return;
      }
      locale = bs.S(localak);
      if (locale == null)
      {
        aa.e("MicroMsg.ImageGalleryUI", "setTitleFooterVisible fail, img is null, position = " + paramInt);
        return;
      }
      boolean bool = this.hka.ob(paramInt);
      dg(bool);
      if (!bool)
      {
        az(false);
        return;
      }
      az(true);
      if (localak.rO() > 0)
        this.hkb.setText(getString(2131167425));
    }
    try
    {
      Date localDate = new Date(localak.DL());
      this.hkc.setText(DateFormat.format("MM-dd", localDate));
      this.hkd.setText(DateFormat.format("kk:mm", localDate));
      label212: this.dka.getSelectedItemPosition();
      if (e(localak, locale))
      {
        this.hke.setVisibility(0);
        return;
        String str1;
        String str2;
        if ((this.cWi != null) && (this.cWi.length() > 0))
        {
          localObject = w.q(this.bNl, this.cWi);
          int i = bv.dw(localak.getContent());
          if (i != -1)
          {
            str1 = localak.getContent().substring(0, i).trim();
            str2 = localak.aCl();
            if ((str1 == null) || (str1.length() <= 0));
          }
        }
        for (Object localObject = w.q(str1, str2); ; localObject = w.cu(this.bNl))
        {
          SpannableString localSpannableString = com.tencent.mm.ao.b.e(aal(), (String)localObject, (int)this.hkb.getTextSize());
          TextView localTextView = this.hkb;
          if ((localSpannableString != null) && (localSpannableString.length() > 0))
            localObject = localSpannableString;
          localTextView.setText((CharSequence)localObject);
          break;
        }
      }
      this.hke.setVisibility(4);
      return;
      aFd();
      eq(true);
      az(false);
      return;
    }
    catch (Exception localException)
    {
      break label212;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903366;
  }

  final View getSelectedView()
  {
    return this.dka.getSelectedView();
  }

  public void onBackPressed()
  {
    if (this.hkj)
    {
      of(1);
      return;
    }
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.hkg = new ColorDrawable(-16777216);
    FR();
    this.hkm = paramBundle;
    this.handler = new cd(this);
  }

  protected void onDestroy()
  {
    if (this.hka != null)
    {
      this.hka.detach();
      this.hka = null;
    }
    if (this.dna != null)
    {
      this.dna.azn();
      this.dna = null;
    }
    this.handler.removeMessages(1);
    this.handler = null;
    super.onDestroy();
  }

  public void onStart()
  {
    this.hkk = getIntent().getBooleanExtra("img_gallery_back_from_grid", false);
    Bundle localBundle;
    if (!this.hkk)
    {
      localBundle = this.hkm;
      if ((this.hkj) && (!this.hkl))
        break label46;
    }
    label46: label192: 
    while (true)
    {
      super.onStart();
      return;
      this.hkl = true;
      if (Build.VERSION.SDK_INT >= 12)
      {
        this.hkf = ((FrameLayout)findViewById(2131362463));
        int i = getIntent().getIntExtra("img_gallery_top", 0);
        int j = getIntent().getIntExtra("img_gallery_left", 0);
        int k = getIntent().getIntExtra("img_gallery_width", 0);
        int m = getIntent().getIntExtra("img_gallery_height", 0);
        if (Build.VERSION.SDK_INT >= 16)
        {
          this.hkg.setAlpha(0);
          this.hkf.setBackground(this.hkg);
        }
        while (true)
        {
          if (localBundle != null)
            break label192;
          this.dka.getViewTreeObserver().addOnPreDrawListener(new cf(this, j, i, k, m));
          break;
          this.hkf.setBackgroundColor(-16777216);
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ImageGalleryUI
 * JD-Core Version:    0.6.2
 */