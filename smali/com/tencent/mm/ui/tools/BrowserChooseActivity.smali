.class public Lcom/tencent/mm/ui/tools/BrowserChooseActivity;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private gya:Landroid/content/DialogInterface$OnDismissListener;

.field private hgR:Lcom/tencent/mm/ui/tools/r;

.field private hgS:Ljava/lang/String;

.field private hgT:Landroid/content/Intent;

.field private hgU:Lcom/tencent/mm/ui/tools/t;

.field private hgV:Lcom/tencent/mm/ui/tools/t;

.field private hgW:Ljava/util/List;

.field private hgX:Lcom/tencent/mm/ui/tools/v;

.field private hgY:Z

.field private hgZ:Ljava/lang/String;

.field private hha:I

.field private hhb:I

.field private hhc:Z

.field private hhd:Z

.field private hhe:J

.field private hhf:Z

.field private hhg:Landroid/widget/AdapterView$OnItemClickListener;

.field private hhh:Landroid/view/View$OnClickListener;

.field private hhi:Landroid/view/View$OnClickListener;

.field private hhj:Landroid/view/View$OnClickListener;

.field private hhk:Lcom/tencent/mm/pluginsdk/model/downloader/n;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgU:Lcom/tencent/mm/ui/tools/t;

    .line 72
    new-instance v0, Lcom/tencent/mm/ui/tools/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/t;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhb:I

    .line 85
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    .line 92
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhf:Z

    .line 94
    new-instance v0, Lcom/tencent/mm/ui/tools/l;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/l;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhg:Landroid/widget/AdapterView$OnItemClickListener;

    .line 117
    new-instance v0, Lcom/tencent/mm/ui/tools/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/m;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhh:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/tencent/mm/ui/tools/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/n;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhi:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Lcom/tencent/mm/ui/tools/o;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/o;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhj:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/tencent/mm/ui/tools/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/p;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->gya:Landroid/content/DialogInterface$OnDismissListener;

    .line 168
    new-instance v0, Lcom/tencent/mm/ui/tools/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/q;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhk:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    .line 742
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhe:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method private static a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 470
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    .line 472
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->b(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/r;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Lcom/tencent/mm/ui/tools/t;)Lcom/tencent/mm/ui/tools/t;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgU:Lcom/tencent/mm/ui/tools/t;

    return-object p1
.end method

.method private a(Landroid/content/Intent;Z)Ljava/util/List;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 407
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 409
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/h;->afg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/t;->hht:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->btm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/t;->hhs:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iput-boolean v11, v0, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    iput-boolean v1, v0, Lcom/tencent/mm/ui/tools/t;->hhv:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iput-boolean v11, v0, Lcom/tencent/mm/ui/tools/t;->doL:Z

    .line 411
    :cond_0
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 412
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v3

    .line 413
    :goto_0
    if-ge v2, v6, :cond_10

    .line 414
    const-string v1, "MicroMsg.BrowserChooseActivity"

    const-string v7, "cpan name:%s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v0, v8, v3

    invoke-static {v1, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 416
    if-eqz v0, :cond_1

    .line 417
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 418
    invoke-static {v1}, Lcom/a/a/a;->R(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iput-boolean v11, v0, Lcom/tencent/mm/ui/tools/t;->doL:Z

    .line 413
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 422
    :cond_2
    new-instance v7, Lcom/tencent/mm/ui/tools/t;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_4

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-direct {v7, p0, v0, v1}, Lcom/tencent/mm/ui/tools/t;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 423
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_4
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.qihoo.browser"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v1, "360\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_5
    const-string v9, "com.mx.browser"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v1, "\u9068\u6e38\u4e91\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_6
    const-string v9, "com.dolphin.browser.xf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v1, "\u6d77\u8c5a\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_7
    const-string v9, "com.UCMobile"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v1, "UC\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_8
    const-string v9, "com.baidu.browser.apps"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v1, "\u767e\u5ea6\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_9
    const-string v9, "sogou.mobile.explorer"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v1, "\u641c\u72d7\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_a
    const-string v9, "com.ijinshan.browser"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v1, "\u730e\u8c79\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_b
    const-string v9, "com.mediawoz.xbrowser"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v1, "GO\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_c
    const-string v9, "com.oupeng.browser"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v1, "\u6b27\u9e4f\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_d
    const-string v9, "com.tiantianmini.android.browser"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v1, "\u5929\u5929\u6d4f\u89c8\u5668"

    goto :goto_2

    :cond_e
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\(.*\u63a8\u8350.*\\)"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_f
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 430
    :cond_10
    if-eqz p2, :cond_11

    .line 431
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    invoke-interface {v4, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 435
    :cond_11
    if-nez p2, :cond_12

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-nez v0, :cond_13

    :cond_12
    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/t;->doL:Z

    if-eqz v0, :cond_14

    .line 436
    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    invoke-interface {v4, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 439
    :cond_14
    return-object v4
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Lcom/tencent/mm/ui/tools/t;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/t;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/mm/ui/tools/t;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x8

    const/16 v6, 0x2af6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 445
    iget-boolean v1, p1, Lcom/tencent/mm/ui/tools/t;->hhu:Z

    if-eqz v1, :cond_2

    .line 446
    iget-boolean v1, p1, Lcom/tencent/mm/ui/tools/t;->hhv:Z

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 454
    :goto_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 463
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    .line 464
    return-void

    .line 449
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 451
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 456
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/ui/tools/t;->hhr:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 458
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v6, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    .line 481
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v0

    .line 487
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 488
    if-eqz v0, :cond_2

    .line 489
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 490
    if-nez v0, :cond_0

    .line 497
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v1, "MicroMsg.BrowserChooseActivity"

    const-string v2, "Couldn\'t find resources for package"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/v;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Lcom/tencent/mm/ui/tools/t;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgU:Lcom/tencent/mm/ui/tools/t;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhe:J

    return-wide v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhj:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final cj(J)V
    .locals 5
    .parameter

    .prologue
    .line 386
    invoke-static {p1, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->bw(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p1, p2}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->by(J)Lcom/tencent/mm/storage/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/storage/ah;->field_filePath:Ljava/lang/String;

    .line 388
    const-string v1, "MicroMsg.BrowserChooseActivity"

    const-string v2, "filepath:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 392
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhC:Lcom/tencent/mm/ui/tools/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/r;->a(Lcom/tencent/mm/ui/tools/w;)V

    .line 394
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/r;->notifyDataSetChanged()V

    .line 398
    :cond_0
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, -0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onBackPressed()V

    .line 371
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    .line 372
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/16 v7, 0x2af6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 228
    const-string v0, "com.tencent.mm.extra.INTENT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 229
    const-string v4, "com.tencent.mm.extra.URL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgS:Ljava/lang/String;

    .line 230
    instance-of v3, v0, Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 231
    const-string v1, "ChooseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Target is not an intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    .line 238
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v0

    const-string v3, "ShowSecurityEntry"

    invoke-virtual {v0, v3}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v3, "MicroMsg.BrowserChooseActivity"

    const-string v4, "mSuggestQQBrowserShow %s, return"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 241
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhf:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhf:Z

    if-nez v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->startActivity(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v3, "MicroMsg.BrowserChooseActivity"

    const-string v4, "exception in mSuggestQQBrowserShow, %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_4
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 257
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 258
    new-instance v0, Lcom/tencent/mm/ui/tools/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/r;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    .line 261
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, 0x43060

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgZ:Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v3, 0x43040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hha:I

    .line 264
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->qq()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhb:I

    .line 265
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgZ:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tencent/mm/pluginsdk/model/app/u;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgY:Z

    .line 271
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    .line 273
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgY:Z

    if-eqz v0, :cond_8

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/a;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 275
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-eqz v0, :cond_6

    .line 276
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgS:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 282
    :goto_2
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v7, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 289
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    goto/16 :goto_0

    .line 268
    :cond_5
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgY:Z

    goto :goto_1

    .line 278
    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 279
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgZ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 284
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 285
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgZ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->startActivity(Landroid/content/Intent;)V

    .line 287
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v7, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_3

    .line 291
    :cond_8
    iget v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hha:I

    iget v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhb:I

    if-lt v0, v3, :cond_c

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    .line 292
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    if-eqz v0, :cond_d

    move v0, v2

    :goto_5
    invoke-direct {p0, v3, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    .line 294
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    if-nez v0, :cond_f

    .line 295
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-eqz v0, :cond_e

    .line 296
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 307
    :cond_9
    :goto_6
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    if-eqz v0, :cond_a

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/t;

    .line 310
    if-eqz v0, :cond_a

    .line 311
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgS:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Lcom/tencent/mm/ui/tools/t;Landroid/content/Intent;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 317
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->mB(I)V

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/r;->M(Ljava/util/List;)V

    .line 319
    new-instance v0, Lcom/tencent/mm/ui/tools/v;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/tencent/mm/ui/tools/v;-><init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    sget v2, Lcom/tencent/mm/n;->bhh:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/v;->setTitle(I)V

    .line 321
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhg:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/v;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/v;->q(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/v;->p(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/v;->a(Landroid/widget/BaseAdapter;)V

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->gya:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/v;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/v;->show()V

    .line 327
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    if-nez v0, :cond_b

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgU:Lcom/tencent/mm/ui/tools/t;

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/v;->en(Z)V

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhk:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->a(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V

    .line 333
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x43040

    iget v2, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hha:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 291
    goto/16 :goto_4

    :cond_d
    move v0, v1

    .line 292
    goto/16 :goto_5

    .line 298
    :cond_e
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 301
    :cond_f
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-eqz v0, :cond_9

    .line 302
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v7, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 359
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhk:Lcom/tencent/mm/pluginsdk/model/downloader/n;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/downloader/FileDownloadManger;->b(Lcom/tencent/mm/pluginsdk/model/downloader/n;)V

    .line 360
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 342
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 343
    iget v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hha:I

    iget v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhb:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    .line 344
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgT:Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhd:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    .line 346
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hhc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgU:Lcom/tencent/mm/ui/tools/t;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgV:Lcom/tencent/mm/ui/tools/t;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgU:Lcom/tencent/mm/ui/tools/t;

    .line 348
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgX:Lcom/tencent/mm/ui/tools/v;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/v;->en(Z)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgW:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/r;->M(Ljava/util/List;)V

    .line 352
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->hgR:Lcom/tencent/mm/ui/tools/r;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/r;->notifyDataSetChanged()V

    .line 354
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 343
    goto :goto_0

    :cond_3
    move v2, v1

    .line 345
    goto :goto_1
.end method
