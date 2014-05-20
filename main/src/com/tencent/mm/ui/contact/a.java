package com.tencent.mm.ui.contact;

import android.content.Context;
import android.database.Cursor;
import android.os.Looper;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;
import java.util.LinkedList;
import java.util.List;

public class a extends bc
{
  private String cIs = "";
  protected List cKz = null;
  protected cz cPN = MMSlideDelView.aHp();
  private com.tencent.mm.ui.applet.b cqO = null;
  private com.tencent.mm.ui.applet.f cqP = null;
  private int dKE = 0;
  private List dKF;
  protected String dKG = null;
  protected int[] dKH;
  private String[] dKI;
  private boolean dKJ = true;
  private boolean dkP = false;
  private String[] gKD = null;
  protected String gRX = null;
  private List gRY;
  private int gRZ = 0;
  protected m gSa;
  private f gSb;
  private boolean gSc = false;
  private boolean gSd = false;
  private int type;

  public a(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, (byte)0);
  }

  private a(Context paramContext, String paramString1, String paramString2, byte paramByte)
  {
    this(paramContext, paramString1, paramString2, '\000');
  }

  private a(Context paramContext, String paramString1, String paramString2, char paramChar)
  {
    super(paramContext, new i());
    this.context = paramContext;
    this.dKG = paramString1;
    this.gRX = paramString2;
    this.type = 0;
    this.gSc = false;
    this.dKF = new LinkedList();
    this.gRY = new LinkedList();
    this.cqO = new com.tencent.mm.ui.applet.b(new b(this));
  }

  private int a(i parami, int paramInt)
  {
    if (paramInt < this.dKE)
      return 32;
    return parami.rl();
  }

  private boolean aKn()
  {
    return (this.dKG.equals("@micromsg.qq.com")) || (this.dKG.equals("@all.contact.without.chatroom"));
  }

  private String b(i parami, int paramInt)
  {
    if (paramInt < this.dKE)
      return this.context.getString(2131166196);
    if (parami.rl() == 31)
      return "";
    if (parami.rl() == 123)
      return "#";
    if (parami.rl() == 33)
      return this.context.getString(2131166199);
    if (parami.rl() == 43)
      return this.context.getString(2131167554);
    if (parami.rl() == 32)
      return this.context.getString(2131166196);
    return String.valueOf((char)parami.rl());
  }

  public void FZ()
  {
    while (true)
    {
      try
      {
        int i;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
          i = 1;
          long l1 = System.currentTimeMillis();
          if (this.gKD != null)
          {
            localCursor = be.uz().su().a(this.gKD, this.dKG, this.gRX, this.cKz);
            if (aKn())
              this.dKE = 0;
            if (i == 0)
              break label282;
            h(localCursor);
            aa.d("MicroMsg.AddressAdapter", "kevin resetCursor" + (System.currentTimeMillis() - l1));
          }
        }
        else
        {
          i = 0;
          continue;
        }
        if ((this.cIs == null) || (this.cIs.length() <= 0))
        {
          long l2 = System.currentTimeMillis();
          LinkedList localLinkedList = new LinkedList();
          localLinkedList.add("weixin");
          localCursor = be.uz().su().c(this.dKG, this.gRX, this.cKz, localLinkedList, aKn(), this.gSc);
          if (aKn())
            this.dKE = be.uz().su().c(this.cKz, this.gSc);
          aa.d("MicroMsg.AddressAdapter", "kevin setCursor : " + (System.currentTimeMillis() - l2));
          continue;
        }
      }
      finally
      {
      }
      Cursor localCursor = be.uz().su().d(this.cIs, this.dKG, this.gRX, this.cKz);
      if (aKn())
      {
        this.dKE = 0;
        continue;
        label282: an.i(new c(this, localCursor));
      }
    }
  }

  protected void Ga()
  {
    FZ();
  }

  public i a(i parami, Cursor paramCursor)
  {
    i locali = be.uz().su().tI(i.f(paramCursor));
    if (locali == null)
    {
      locali = new i();
      locali.convertFrom(paramCursor);
      be.uz().su().y(locali);
    }
    return locali;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    if (paramObject != null)
      if (this.gSd)
      {
        if (this.gSa != null)
          this.gSa.aKv();
        aa.d("MicroMsg.AddressAdapter", "ADDRESS onNotifyChange");
      }
    do
    {
      return;
      if (this.gmO != null)
        this.gmO.FX();
      FZ();
    }
    while (this.gmO == null);
    an.i(new d(this));
  }

  public int getCount()
  {
    long l = System.currentTimeMillis();
    int i = getCursor().getCount();
    if (System.currentTimeMillis() - l > 5L)
      aa.d("MicroMsg.AddressAdapter", "kevin getCursor().getCount() : " + (System.currentTimeMillis() - l));
    return i;
  }

  // ERROR //
  public android.view.View getView(int paramInt, android.view.View paramView, android.view.ViewGroup paramViewGroup)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 82	com/tencent/mm/ui/contact/a:cqP	Lcom/tencent/mm/ui/applet/f;
    //   4: ifnonnull +15 -> 19
    //   7: aload_0
    //   8: new 303	com/tencent/mm/ui/contact/e
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 304	com/tencent/mm/ui/contact/e:<init>	(Lcom/tencent/mm/ui/contact/a;)V
    //   16: putfield 82	com/tencent/mm/ui/contact/a:cqP	Lcom/tencent/mm/ui/applet/f;
    //   19: aload_0
    //   20: getfield 80	com/tencent/mm/ui/contact/a:cqO	Lcom/tencent/mm/ui/applet/b;
    //   23: ifnull +15 -> 38
    //   26: aload_0
    //   27: getfield 80	com/tencent/mm/ui/contact/a:cqO	Lcom/tencent/mm/ui/applet/b;
    //   30: iload_1
    //   31: aload_0
    //   32: getfield 82	com/tencent/mm/ui/contact/a:cqP	Lcom/tencent/mm/ui/applet/f;
    //   35: invokevirtual 307	com/tencent/mm/ui/applet/b:a	(ILcom/tencent/mm/ui/applet/f;)V
    //   38: aload_2
    //   39: ifnonnull +391 -> 430
    //   42: aload_0
    //   43: getfield 92	com/tencent/mm/ui/contact/a:context	Landroid/content/Context;
    //   46: ldc_w 308
    //   49: aconst_null
    //   50: invokestatic 314	android/view/View:inflate	(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    //   53: astore_2
    //   54: new 316	com/tencent/mm/ui/contact/h
    //   57: dup
    //   58: invokespecial 317	com/tencent/mm/ui/contact/h:<init>	()V
    //   61: astore 40
    //   63: aload 40
    //   65: aload_2
    //   66: ldc_w 318
    //   69: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   72: checkcast 324	android/widget/TextView
    //   75: putfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   78: aload 40
    //   80: aload_2
    //   81: ldc_w 329
    //   84: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   87: checkcast 331	com/tencent/mm/ui/base/MaskLayout
    //   90: putfield 335	com/tencent/mm/ui/contact/h:cTU	Lcom/tencent/mm/ui/base/MaskLayout;
    //   93: aload 40
    //   95: aload_2
    //   96: ldc_w 336
    //   99: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   102: checkcast 324	android/widget/TextView
    //   105: putfield 339	com/tencent/mm/ui/contact/h:cMU	Landroid/widget/TextView;
    //   108: aload 40
    //   110: aload_2
    //   111: ldc_w 340
    //   114: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   117: checkcast 342	android/widget/CheckBox
    //   120: putfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   123: aload 40
    //   125: aload_2
    //   126: ldc_w 347
    //   129: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   132: checkcast 324	android/widget/TextView
    //   135: putfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   138: aload 40
    //   140: aload_2
    //   141: ldc_w 351
    //   144: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   147: checkcast 324	android/widget/TextView
    //   150: putfield 354	com/tencent/mm/ui/contact/h:dKL	Landroid/widget/TextView;
    //   153: aload 40
    //   155: aload_2
    //   156: ldc_w 355
    //   159: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   162: checkcast 324	android/widget/TextView
    //   165: putfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   168: aload 40
    //   170: aload_2
    //   171: ldc_w 359
    //   174: invokevirtual 322	android/view/View:findViewById	(I)Landroid/view/View;
    //   177: checkcast 361	android/widget/ImageView
    //   180: putfield 365	com/tencent/mm/ui/contact/h:gSh	Landroid/widget/ImageView;
    //   183: aload_2
    //   184: aload 40
    //   186: invokevirtual 369	android/view/View:setTag	(Ljava/lang/Object;)V
    //   189: aload 40
    //   191: astore 4
    //   193: aload_0
    //   194: iload_1
    //   195: iconst_1
    //   196: isub
    //   197: invokevirtual 373	com/tencent/mm/ui/contact/a:getItem	(I)Ljava/lang/Object;
    //   200: checkcast 46	com/tencent/mm/storage/i
    //   203: astore 5
    //   205: aload 5
    //   207: ifnonnull +235 -> 442
    //   210: iconst_m1
    //   211: istore 6
    //   213: aload_0
    //   214: iload_1
    //   215: invokevirtual 373	com/tencent/mm/ui/contact/a:getItem	(I)Ljava/lang/Object;
    //   218: checkcast 46	com/tencent/mm/storage/i
    //   221: astore 7
    //   223: aload_0
    //   224: getfield 78	com/tencent/mm/ui/contact/a:dKJ	Z
    //   227: ifeq +57 -> 284
    //   230: iload_1
    //   231: ifne +259 -> 490
    //   234: aload_0
    //   235: aload 7
    //   237: iload_1
    //   238: invokespecial 375	com/tencent/mm/ui/contact/a:b	(Lcom/tencent/mm/storage/i;I)Ljava/lang/String;
    //   241: astore 38
    //   243: aload 38
    //   245: invokestatic 381	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   248: ifeq +208 -> 456
    //   251: iconst_2
    //   252: anewarray 383	java/lang/Object
    //   255: astore 39
    //   257: aload 39
    //   259: iconst_0
    //   260: aload 7
    //   262: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   265: aastore
    //   266: aload 39
    //   268: iconst_1
    //   269: iload_1
    //   270: invokestatic 391	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   273: aastore
    //   274: ldc 192
    //   276: ldc_w 393
    //   279: aload 39
    //   281: invokestatic 396	com/tencent/mm/sdk/platformtools/aa:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   284: aload 4
    //   286: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   289: bipush 8
    //   291: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   294: aload 4
    //   296: getfield 339	com/tencent/mm/ui/contact/h:cMU	Landroid/widget/TextView;
    //   299: astore 8
    //   301: aload_0
    //   302: getfield 92	com/tencent/mm/ui/contact/a:context	Landroid/content/Context;
    //   305: astore 9
    //   307: aload 7
    //   309: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   312: invokestatic 405	com/tencent/mm/model/w:db	(Ljava/lang/String;)Z
    //   315: ifne +316 -> 631
    //   318: ldc_w 406
    //   321: istore 10
    //   323: aload 8
    //   325: aload 9
    //   327: iload 10
    //   329: invokestatic 412	com/tencent/mm/an/a:j	(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    //   332: invokevirtual 416	android/widget/TextView:setTextColor	(Landroid/content/res/ColorStateList;)V
    //   335: aload_0
    //   336: getfield 94	com/tencent/mm/ui/contact/a:type	I
    //   339: iconst_1
    //   340: if_icmpeq +27 -> 367
    //   343: aload_0
    //   344: getfield 94	com/tencent/mm/ui/contact/a:type	I
    //   347: ifeq +20 -> 367
    //   350: aload_0
    //   351: getfield 94	com/tencent/mm/ui/contact/a:type	I
    //   354: iconst_3
    //   355: if_icmpeq +12 -> 367
    //   358: aload_0
    //   359: getfield 94	com/tencent/mm/ui/contact/a:type	I
    //   362: bipush 10
    //   364: if_icmpne +772 -> 1136
    //   367: aload 7
    //   369: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   372: astore 11
    //   374: aconst_null
    //   375: astore 12
    //   377: aload_0
    //   378: getfield 99	com/tencent/mm/ui/contact/a:dKF	Ljava/util/List;
    //   381: invokeinterface 422 1 0
    //   386: astore 13
    //   388: aload 13
    //   390: invokeinterface 427 1 0
    //   395: ifeq +244 -> 639
    //   398: aload 13
    //   400: invokeinterface 431 1 0
    //   405: checkcast 433	com/tencent/mm/ui/contact/g
    //   408: astore 35
    //   410: aload 35
    //   412: getfield 436	com/tencent/mm/ui/contact/g:bPx	Ljava/lang/String;
    //   415: aload 11
    //   417: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   420: ifeq +848 -> 1268
    //   423: aload 35
    //   425: astore 12
    //   427: goto -39 -> 388
    //   430: aload_2
    //   431: invokevirtual 439	android/view/View:getTag	()Ljava/lang/Object;
    //   434: checkcast 316	com/tencent/mm/ui/contact/h
    //   437: astore 4
    //   439: goto -246 -> 193
    //   442: aload_0
    //   443: aload 5
    //   445: iload_1
    //   446: iconst_1
    //   447: isub
    //   448: invokespecial 441	com/tencent/mm/ui/contact/a:a	(Lcom/tencent/mm/storage/i;I)I
    //   451: istore 6
    //   453: goto -240 -> 213
    //   456: aload 4
    //   458: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   461: iconst_0
    //   462: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   465: aload 4
    //   467: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   470: aload 38
    //   472: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   475: aload 4
    //   477: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   480: iconst_0
    //   481: iconst_0
    //   482: iconst_0
    //   483: iconst_0
    //   484: invokevirtual 449	android/widget/TextView:setCompoundDrawablesWithIntrinsicBounds	(IIII)V
    //   487: goto -193 -> 294
    //   490: iload_1
    //   491: ifle -207 -> 284
    //   494: aload_0
    //   495: aload 7
    //   497: iload_1
    //   498: invokespecial 441	com/tencent/mm/ui/contact/a:a	(Lcom/tencent/mm/storage/i;I)I
    //   501: iload 6
    //   503: if_icmpeq -219 -> 284
    //   506: aload_0
    //   507: aload 7
    //   509: iload_1
    //   510: invokespecial 375	com/tencent/mm/ui/contact/a:b	(Lcom/tencent/mm/storage/i;I)Ljava/lang/String;
    //   513: astore 36
    //   515: aload 36
    //   517: invokestatic 381	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   520: ifeq +39 -> 559
    //   523: iconst_2
    //   524: anewarray 383	java/lang/Object
    //   527: astore 37
    //   529: aload 37
    //   531: iconst_0
    //   532: aload 7
    //   534: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   537: aastore
    //   538: aload 37
    //   540: iconst_1
    //   541: iload_1
    //   542: invokestatic 391	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   545: aastore
    //   546: ldc 192
    //   548: ldc_w 393
    //   551: aload 37
    //   553: invokestatic 396	com/tencent/mm/sdk/platformtools/aa:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   556: goto -272 -> 284
    //   559: aload 4
    //   561: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   564: iconst_0
    //   565: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   568: aload 4
    //   570: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   573: aload 36
    //   575: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   578: aload_0
    //   579: aload 7
    //   581: iload_1
    //   582: invokespecial 441	com/tencent/mm/ui/contact/a:a	(Lcom/tencent/mm/storage/i;I)I
    //   585: bipush 32
    //   587: if_icmpne +29 -> 616
    //   590: aload 4
    //   592: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   595: ldc_w 450
    //   598: iconst_0
    //   599: iconst_0
    //   600: iconst_0
    //   601: invokevirtual 449	android/widget/TextView:setCompoundDrawablesWithIntrinsicBounds	(IIII)V
    //   604: aload 4
    //   606: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   609: iconst_2
    //   610: invokevirtual 453	android/widget/TextView:setCompoundDrawablePadding	(I)V
    //   613: goto -319 -> 294
    //   616: aload 4
    //   618: getfield 328	com/tencent/mm/ui/contact/h:cMT	Landroid/widget/TextView;
    //   621: iconst_0
    //   622: iconst_0
    //   623: iconst_0
    //   624: iconst_0
    //   625: invokevirtual 449	android/widget/TextView:setCompoundDrawablesWithIntrinsicBounds	(IIII)V
    //   628: goto -334 -> 294
    //   631: ldc_w 454
    //   634: istore 10
    //   636: goto -313 -> 323
    //   639: aload 12
    //   641: ifnull +401 -> 1042
    //   644: iconst_1
    //   645: istore 14
    //   647: aload_0
    //   648: getfield 101	com/tencent/mm/ui/contact/a:gRY	Ljava/util/List;
    //   651: aload 7
    //   653: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   656: invokeinterface 457 2 0
    //   661: istore 15
    //   663: aload_0
    //   664: getfield 84	com/tencent/mm/ui/contact/a:dkP	Z
    //   667: ifeq +411 -> 1078
    //   670: aload 4
    //   672: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   675: bipush 8
    //   677: invokevirtual 458	android/widget/CheckBox:setVisibility	(I)V
    //   680: iload 15
    //   682: ifne +373 -> 1055
    //   685: aload 4
    //   687: getfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   690: astore 33
    //   692: iload 14
    //   694: ifeq +354 -> 1048
    //   697: iconst_0
    //   698: istore 34
    //   700: aload 33
    //   702: iload 34
    //   704: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   707: aload 4
    //   709: getfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   712: ldc_w 459
    //   715: invokevirtual 461	android/widget/TextView:setText	(I)V
    //   718: aload_0
    //   719: getfield 54	com/tencent/mm/ui/contact/a:dKG	Ljava/lang/String;
    //   722: ldc_w 463
    //   725: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   728: ifeq +431 -> 1159
    //   731: aload 4
    //   733: getfield 335	com/tencent/mm/ui/contact/h:cTU	Lcom/tencent/mm/ui/base/MaskLayout;
    //   736: bipush 8
    //   738: invokevirtual 464	com/tencent/mm/ui/base/MaskLayout:setVisibility	(I)V
    //   741: aload 4
    //   743: getfield 354	com/tencent/mm/ui/contact/h:dKL	Landroid/widget/TextView;
    //   746: aload 7
    //   748: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   751: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   754: aload 7
    //   756: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   759: invokestatic 467	com/tencent/mm/model/w:cT	(Ljava/lang/String;)Z
    //   762: ifne +14 -> 776
    //   765: aload 7
    //   767: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   770: invokestatic 470	com/tencent/mm/model/w:cU	(Ljava/lang/String;)Z
    //   773: ifeq +418 -> 1191
    //   776: aload 4
    //   778: getfield 365	com/tencent/mm/ui/contact/h:gSh	Landroid/widget/ImageView;
    //   781: iconst_0
    //   782: invokevirtual 471	android/widget/ImageView:setVisibility	(I)V
    //   785: aload 7
    //   787: invokevirtual 474	com/tencent/mm/storage/i:rJ	()I
    //   790: ifeq +425 -> 1215
    //   793: invokestatic 480	com/tencent/mm/model/ar:ub	()Lcom/tencent/mm/model/av;
    //   796: aload 7
    //   798: invokevirtual 474	com/tencent/mm/storage/i:rJ	()I
    //   801: invokeinterface 485 2 0
    //   806: astore 31
    //   808: aload 31
    //   810: ifnull +394 -> 1204
    //   813: aload 31
    //   815: invokestatic 491	com/tencent/mm/p/u:eN	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   818: astore 32
    //   820: aload 4
    //   822: getfield 335	com/tencent/mm/ui/contact/h:cTU	Lcom/tencent/mm/ui/base/MaskLayout;
    //   825: aload 32
    //   827: getstatic 497	com/tencent/mm/ui/base/dv:gCR	Lcom/tencent/mm/ui/base/dv;
    //   830: invokevirtual 500	com/tencent/mm/ui/base/MaskLayout:a	(Landroid/graphics/Bitmap;Lcom/tencent/mm/ui/base/dv;)V
    //   833: aload 7
    //   835: invokevirtual 503	com/tencent/mm/storage/i:rB	()Ljava/lang/String;
    //   838: invokestatic 507	com/tencent/mm/platformtools/au:hW	(Ljava/lang/String;)Ljava/lang/String;
    //   841: astore 16
    //   843: aload 16
    //   845: invokevirtual 216	java/lang/String:length	()I
    //   848: ifle +393 -> 1241
    //   851: aload 4
    //   853: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   856: invokevirtual 510	android/widget/CheckBox:getVisibility	()I
    //   859: ifeq +382 -> 1241
    //   862: aload_0
    //   863: getfield 84	com/tencent/mm/ui/contact/a:dkP	Z
    //   866: ifne +375 -> 1241
    //   869: aload 4
    //   871: getfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   874: iconst_0
    //   875: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   878: aload 4
    //   880: getfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   883: astore 29
    //   885: aload 4
    //   887: getfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   890: pop
    //   891: aload 29
    //   893: aload_0
    //   894: getfield 92	com/tencent/mm/ui/contact/a:context	Landroid/content/Context;
    //   897: aload 16
    //   899: aload 4
    //   901: getfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   904: invokevirtual 514	android/widget/TextView:getTextSize	()F
    //   907: f2i
    //   908: invokestatic 520	com/tencent/mm/ao/b:e	(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    //   911: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   914: aload 4
    //   916: getfield 339	com/tencent/mm/ui/contact/h:cMU	Landroid/widget/TextView;
    //   919: astore 18
    //   921: aload 4
    //   923: getfield 339	com/tencent/mm/ui/contact/h:cMU	Landroid/widget/TextView;
    //   926: pop
    //   927: aload_0
    //   928: getfield 92	com/tencent/mm/ui/contact/a:context	Landroid/content/Context;
    //   931: astore 20
    //   933: aload 7
    //   935: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   938: pop
    //   939: aload 7
    //   941: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   944: invokestatic 523	com/tencent/mm/model/w:cu	(Ljava/lang/String;)Ljava/lang/String;
    //   947: astore 22
    //   949: ldc 62
    //   951: invokevirtual 216	java/lang/String:length	()I
    //   954: ifle +65 -> 1019
    //   957: ldc 62
    //   959: aload 22
    //   961: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   964: ifne +55 -> 1019
    //   967: new 194	java/lang/StringBuilder
    //   970: dup
    //   971: bipush 32
    //   973: invokespecial 525	java/lang/StringBuilder:<init>	(I)V
    //   976: astore 23
    //   978: aload 23
    //   980: aload 22
    //   982: invokevirtual 528	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: pop
    //   986: aload 23
    //   988: ldc_w 530
    //   991: invokevirtual 528	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   994: pop
    //   995: aload 23
    //   997: ldc 62
    //   999: invokevirtual 528	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1002: pop
    //   1003: aload 23
    //   1005: ldc_w 532
    //   1008: invokevirtual 528	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1011: pop
    //   1012: aload 23
    //   1014: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1017: astore 22
    //   1019: aload 18
    //   1021: aload 20
    //   1023: aload 22
    //   1025: aload 4
    //   1027: getfield 339	com/tencent/mm/ui/contact/h:cMU	Landroid/widget/TextView;
    //   1030: invokevirtual 514	android/widget/TextView:getTextSize	()F
    //   1033: f2i
    //   1034: invokestatic 520	com/tencent/mm/ao/b:e	(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    //   1037: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1040: aload_2
    //   1041: areturn
    //   1042: iconst_0
    //   1043: istore 14
    //   1045: goto -398 -> 647
    //   1048: bipush 8
    //   1050: istore 34
    //   1052: goto -352 -> 700
    //   1055: aload 4
    //   1057: getfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   1060: iconst_0
    //   1061: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   1064: aload 4
    //   1066: getfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   1069: ldc_w 533
    //   1072: invokevirtual 461	android/widget/TextView:setText	(I)V
    //   1075: goto -357 -> 718
    //   1078: aload 4
    //   1080: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   1083: iconst_0
    //   1084: invokevirtual 458	android/widget/CheckBox:setVisibility	(I)V
    //   1087: iload 15
    //   1089: ifne +26 -> 1115
    //   1092: aload 4
    //   1094: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   1097: iload 14
    //   1099: invokevirtual 537	android/widget/CheckBox:setChecked	(Z)V
    //   1102: aload 4
    //   1104: getfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   1107: bipush 8
    //   1109: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   1112: goto -394 -> 718
    //   1115: aload 4
    //   1117: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   1120: iconst_1
    //   1121: invokevirtual 537	android/widget/CheckBox:setChecked	(Z)V
    //   1124: aload 4
    //   1126: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   1129: iconst_0
    //   1130: invokevirtual 540	android/widget/CheckBox:setEnabled	(Z)V
    //   1133: goto -31 -> 1102
    //   1136: aload 4
    //   1138: getfield 346	com/tencent/mm/ui/contact/h:cMW	Landroid/widget/CheckBox;
    //   1141: bipush 8
    //   1143: invokevirtual 458	android/widget/CheckBox:setVisibility	(I)V
    //   1146: aload 4
    //   1148: getfield 350	com/tencent/mm/ui/contact/h:dKM	Landroid/widget/TextView;
    //   1151: bipush 8
    //   1153: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   1156: goto -438 -> 718
    //   1159: aload 4
    //   1161: getfield 335	com/tencent/mm/ui/contact/h:cTU	Lcom/tencent/mm/ui/base/MaskLayout;
    //   1164: invokevirtual 544	com/tencent/mm/ui/base/MaskLayout:getContentView	()Landroid/view/View;
    //   1167: checkcast 361	android/widget/ImageView
    //   1170: aload 7
    //   1172: invokevirtual 386	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   1175: invokestatic 549	com/tencent/mm/pluginsdk/ui/c:a	(Landroid/widget/ImageView;Ljava/lang/String;)V
    //   1178: aload 4
    //   1180: getfield 354	com/tencent/mm/ui/contact/h:dKL	Landroid/widget/TextView;
    //   1183: bipush 8
    //   1185: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   1188: goto -434 -> 754
    //   1191: aload 4
    //   1193: getfield 365	com/tencent/mm/ui/contact/h:gSh	Landroid/widget/ImageView;
    //   1196: bipush 8
    //   1198: invokevirtual 471	android/widget/ImageView:setVisibility	(I)V
    //   1201: goto -416 -> 785
    //   1204: aload 4
    //   1206: getfield 335	com/tencent/mm/ui/contact/h:cTU	Lcom/tencent/mm/ui/base/MaskLayout;
    //   1209: invokevirtual 552	com/tencent/mm/ui/base/MaskLayout:aHz	()V
    //   1212: goto -379 -> 833
    //   1215: aload 4
    //   1217: getfield 335	com/tencent/mm/ui/contact/h:cTU	Lcom/tencent/mm/ui/base/MaskLayout;
    //   1220: invokevirtual 552	com/tencent/mm/ui/base/MaskLayout:aHz	()V
    //   1223: goto -390 -> 833
    //   1226: astore 28
    //   1228: aload 4
    //   1230: getfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   1233: ldc 62
    //   1235: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1238: goto -324 -> 914
    //   1241: aload 4
    //   1243: getfield 358	com/tencent/mm/ui/contact/h:gSg	Landroid/widget/TextView;
    //   1246: bipush 8
    //   1248: invokevirtual 400	android/widget/TextView:setVisibility	(I)V
    //   1251: goto -337 -> 914
    //   1254: astore 17
    //   1256: aload 4
    //   1258: getfield 339	com/tencent/mm/ui/contact/h:cMU	Landroid/widget/TextView;
    //   1261: ldc 62
    //   1263: invokevirtual 445	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1266: aload_2
    //   1267: areturn
    //   1268: aload 12
    //   1270: astore 35
    //   1272: goto -849 -> 423
    //
    // Exception table:
    //   from	to	target	type
    //   878	914	1226	java/lang/Exception
    //   914	1019	1254	java/lang/Exception
    //   1019	1040	1254	java/lang/Exception
  }

  public final void h(Cursor paramCursor)
  {
    closeCursor();
    setCursor(paramCursor);
    notifyDataSetChanged();
    long l1 = System.currentTimeMillis();
    if (this.gmO != null)
      this.gmO.FW();
    aa.d("MicroMsg.AddressAdapter", "kevin onPostReset" + (System.currentTimeMillis() - l1));
    long l2 = System.currentTimeMillis();
    if ((this.cIs != null) && (this.gSb != null))
      paramCursor.getCount();
    aa.d("MicroMsg.AddressAdapter", "kevin onTextSearchChange" + (System.currentTimeMillis() - l2));
    long l3 = System.currentTimeMillis();
    if (this.gKD != null)
    {
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.gKD);
      this.dKI = w.a(this.dKG, this.gRX, this.gKD, this.cKz);
    }
    while (true)
    {
      aa.d("MicroMsg.AddressAdapter", "kevin resetShowHead" + (System.currentTimeMillis() - l3));
      return;
      long l4 = System.currentTimeMillis();
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.cIs);
      this.dKI = w.a(this.dKG, this.gRX, this.cIs, this.cKz);
      aa.d("MicroMsg.AddressAdapter", "kevin resetShowHead part1 : " + (System.currentTimeMillis() - l4));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.a
 * JD-Core Version:    0.6.2
 */