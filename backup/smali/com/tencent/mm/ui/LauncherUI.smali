.class public Lcom/tencent/mm/ui/LauncherUI;
.super Lcom/tencent/mm/ui/MMFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/app/ac;
.implements Lcom/tencent/mm/sdk/e/ar;


# static fields
.field private static glA:Z

.field private static glD:Lcom/tencent/mm/ui/LauncherUI;

.field private static glE:Z

.field private static glK:Z

.field private static gma:I

.field private static gmi:Ljava/util/HashMap;


# instance fields
.field private bLh:Z

.field private final bZy:Ljava/util/HashMap;

.field private cOt:Landroid/content/Intent;

.field private cYm:Landroid/view/View;

.field private dLe:Landroid/view/LayoutInflater;

.field private fbx:Ljava/lang/String;

.field private glB:Z

.field private glC:Z

.field private glF:Z

.field private glG:Z

.field private glH:Z

.field private glI:Z

.field private glJ:Ljava/util/HashSet;

.field private glL:Lcom/tencent/mm/ui/account/WelcomeView;

.field private glM:Z

.field private glN:Z

.field private glO:Lcom/tencent/mm/ui/LauncherUITabView;

.field private glP:Lcom/tencent/mm/ui/base/CustomViewPager;

.field private glQ:Lcom/tencent/mm/ui/au;

.field private glR:Lcom/tencent/mm/ui/dm;

.field private glS:Z

.field private glT:Ljava/lang/Runnable;

.field private glU:Landroid/widget/PopupWindow$OnDismissListener;

.field private glV:Landroid/view/View;

.field private glW:Landroid/widget/ImageView;

.field private glX:Landroid/view/View;

.field private glY:I

.field private glZ:I

.field private gmb:Lcom/tencent/mm/n/m;

.field private gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

.field private gmd:Lcom/tencent/mm/i/c;

.field private gme:Lcom/tencent/mm/sdk/e/ar;

.field private gmf:Lcom/tencent/mm/sdk/b/g;

.field gmg:Landroid/os/MessageQueue$IdleHandler;

.field private gmh:Landroid/support/v7/app/d;

.field private gmj:Ljava/util/HashMap;

.field private ha:Landroid/support/v7/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    sput-boolean v3, Lcom/tencent/mm/ui/LauncherUI;->glE:Z

    .line 925
    sput v2, Lcom/tencent/mm/ui/LauncherUI;->gma:I

    .line 1660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1663
    sput-object v0, Lcom/tencent/mm/ui/LauncherUI;->gmi:Ljava/util/HashMap;

    const-string v1, "tab_main"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->gmi:Ljava/util/HashMap;

    const-string v1, "tab_address"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->gmi:Ljava/util/HashMap;

    const-string v1, "tab_find_friend"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->gmi:Ljava/util/HashMap;

    const-string v1, "tab_settings"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMFragmentActivity;-><init>()V

    .line 130
    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    .line 136
    iput-boolean v3, p0, Lcom/tencent/mm/ui/LauncherUI;->glC:Z

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glJ:Ljava/util/HashSet;

    .line 155
    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    .line 157
    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glM:Z

    .line 161
    iput-boolean v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glN:Z

    .line 170
    iput-boolean v3, p0, Lcom/tencent/mm/ui/LauncherUI;->glS:Z

    .line 248
    new-instance v0, Lcom/tencent/mm/ui/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ae;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glT:Ljava/lang/Runnable;

    .line 464
    new-instance v0, Lcom/tencent/mm/ui/al;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/al;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glU:Landroid/widget/PopupWindow$OnDismissListener;

    .line 855
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->bZy:Ljava/util/HashMap;

    .line 921
    iput v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glZ:I

    .line 931
    iput-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->gmb:Lcom/tencent/mm/n/m;

    .line 934
    new-instance v0, Lcom/tencent/mm/ui/ap;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ap;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmd:Lcom/tencent/mm/i/c;

    .line 960
    new-instance v0, Lcom/tencent/mm/ui/aq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/aq;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gme:Lcom/tencent/mm/sdk/e/ar;

    .line 985
    new-instance v0, Lcom/tencent/mm/ui/ar;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ar;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmf:Lcom/tencent/mm/sdk/b/g;

    .line 1077
    new-instance v0, Lcom/tencent/mm/ui/as;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/as;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    .line 1646
    new-instance v0, Lcom/tencent/mm/ui/ag;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ag;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmh:Landroid/support/v7/app/d;

    .line 1669
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/LauncherUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/tencent/mm/ui/LauncherUI;->glZ:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/LauncherUI;)Lcom/tencent/mm/ui/LauncherUITabView;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    return-object v0
.end method

.method private aDN()V
    .locals 1

    .prologue
    .line 1891
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->moveTaskToBack(Z)Z

    .line 1896
    invoke-static {}, Lcom/tencent/mm/app/f;->nC()Lcom/tencent/mm/app/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/f;->start()V

    .line 1897
    return-void
.end method

.method public static aEA()Lcom/tencent/mm/ui/LauncherUI;
    .locals 1

    .prologue
    .line 999
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->glD:Lcom/tencent/mm/ui/LauncherUI;

    return-object v0
.end method

.method private aEB()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1198
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/LauncherUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1199
    const-string v1, "settings_landscape_mode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1200
    if-eqz v0, :cond_0

    .line 1201
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->setRequestedOrientation(I)V

    .line 1205
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1206
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->glD:Lcom/tencent/mm/ui/LauncherUI;

    if-nez v0, :cond_1

    .line 1224
    :goto_1
    return-void

    .line 1203
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1211
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1212
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/LauncherUI;->gme:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1213
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/LauncherUI;->gmd:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/i/a;->a(Lcom/tencent/mm/i/c;)V

    .line 1215
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v3, "UnreadChange"

    iget-object v4, p0, Lcom/tencent/mm/ui/LauncherUI;->gmf:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v3, v4}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 1217
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/MainUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->aKs()V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLF()V

    .line 1219
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aED()V

    .line 1220
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glT:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->p(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glT:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 1221
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEy()V

    .line 1223
    const-string v0, "MicroMsg.LauncherUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN MainTabUI onResume:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private aED()V
    .locals 1

    .prologue
    .line 1775
    new-instance v0, Lcom/tencent/mm/ui/ah;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ah;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 1783
    return-void
.end method

.method static synthetic aEF()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method static synthetic aEG()V
    .locals 3

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private aEr()V
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    .line 189
    const-string v0, "tab_main"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->vS(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method private aEt()V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->bLh:Z

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/d/c/m;->Zl()V

    .line 240
    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->oN()V

    .line 241
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->bLh:Z

    goto :goto_0
.end method

.method private aEx()V
    .locals 3

    .prologue
    const v2, 0x41001

    .line 428
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->dismiss()V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glU:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/dm;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 436
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->cB()Z

    .line 437
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40001

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->y(II)V

    .line 438
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40004

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->y(II)V

    goto :goto_0
.end method

.method private aEy()V
    .locals 8

    .prologue
    const v7, 0x41001

    const/4 v6, 0x0

    .line 443
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "want update more menu new tips, but mmcore not ready"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x32011

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 451
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x32014

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 452
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v2

    const v3, 0x40004

    invoke-virtual {v2, v3, v7}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    .line 453
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/tencent/mm/i/a;->cc(I)Z

    move-result v3

    .line 454
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v4

    const v5, 0x40001

    invoke-virtual {v4, v5, v7}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v4

    .line 457
    if-gtz v1, :cond_3

    if-gtz v0, :cond_3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glX:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glX:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private aEz()V
    .locals 14

    .prologue
    .line 589
    sget-boolean v0, Lcom/tencent/mm/ui/LauncherUI;->glK:Z

    if-eqz v0, :cond_1

    .line 592
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v1, "login_user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/account/LoginHistoryUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    .line 596
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    .line 598
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/LauncherUI;->glK:Z

    .line 599
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hB(I)V

    .line 627
    :goto_0
    return-void

    .line 603
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glB:Z

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 605
    invoke-static {}, Lcom/tencent/mm/m/ac;->wg()V

    .line 607
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    const-string v3, "absolutely_exit"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "exit absolutely!!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    const-string v1, "exit_and_view"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string v1, "MicroMsg.LauncherUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jump to exit:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->aFk()V

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hB(I)V

    goto :goto_0

    .line 612
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    const-string v3, "can_finish"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 613
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "exit obviously"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->T(Z)V

    .line 615
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system_config_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 616
    const-string v1, "settings_fully_exit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 617
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/booter/CoreService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 619
    :cond_4
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hB(I)V

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.ui.ACTION_FORCE_DEACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tencent.mm.permission.MM_MESSAGE"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    goto/16 :goto_0

    .line 625
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v3, "login_user_name"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/be;->uE()Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "LauncherUI.enter_from_reg"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glN:Z

    const-string v0, "system_config_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/LauncherUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    const-string v6, "Intro_Switch"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/tencent/mm/model/be;->uG()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "pushcontent_notification"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "nofification_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "Main_FromUserName"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "Main_FromUserName"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "MainUI_User_Last_Msg_Type"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "MicroMsg.LauncherUI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "launch report, fromUserName = %s, msgType = %d"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v8, 0x2a68

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v0, v9, v6

    const/4 v0, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "LauncherUI.Shortcut.LaunchType"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v6, "launch_type_voip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "MicroMsg.LauncherUI"

    const-string v6, "launch, LaunchTypeVOIP"

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/tencent/mm/ui/contact/VoipAddressUI;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "LauncherUI.Shortcut.LaunchType"

    const-string v7, "launch_type_voip"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v6, 0x2b1a

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "LauncherUI.From.Biz.Shortcut"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "LauncherUI.Shortcut.Username"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_b

    const-string v0, "MicroMsg.LauncherUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "launch, fromBizShortcut, bizUsername = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "MicroMsg.LauncherUI"

    const-string v6, "launch, username is contact, go to chattingui"

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "Chat_User"

    iget-object v7, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    :cond_a
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "LauncherUI_From_Biz_Shortcut"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "LauncherUI.From.Biz.Shortcut"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    :cond_b
    const-string v0, "MicroMsg.LauncherUI"

    const-string v6, "[Launching Application]"

    invoke-static {v0, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "settings_fully_exit"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glC:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-nez v0, :cond_16

    const-string v0, "show_whatsnew"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    sget-object v8, Lcom/tencent/mm/ui/e;->gks:Ljava/lang/String;

    const-string v9, "com.tencent.mm.booter.MMReceivers$ToolsProcessReceiver"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "tools_process_action_code_key"

    const-string v8, "com.tencent.mm.intent.ACTION_START_TOOLS_PROCESS"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEr()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEB()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    :goto_3
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ac;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/tencent/mm/ui/ac;->aDR()V

    :cond_d
    const-string v0, "MicroMsg.LauncherUI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KEVIN dispatch resume "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    :cond_e
    :goto_4
    const-string v0, "MicroMsg.LauncherUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KEVIN LaucherUI lauch last : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "preferred_tab"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "MicroMsg.LauncherUI"

    const-string v4, "KEVIN onNewIntent, tabIdx = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->mq(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "preferred_tab"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    :cond_f
    const-string v0, "MicroMsg.LauncherUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KEVIN onresume "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "instance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/ui/LauncherUI;->gma:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    :cond_10
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "LauncherUI_From_Biz_Shortcut"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/mm/ui/LauncherUI;->fbx:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FH()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/tencent/mm/ui/base/dn;->bX(Landroid/content/Context;)V

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {p0}, Lcom/tencent/mm/ui/MMActivity;->bO(Landroid/content/Context;)Ljava/util/Locale;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v11, "qqmail"

    const v12, 0x7f07000d

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "fmessage"

    const v12, 0x7f070010

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "tmessage"

    const v12, 0x7f070013

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "qmessage"

    const v12, 0x7f070016

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "qqsync"

    const v12, 0x7f070019

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "floatbottle"

    const v12, 0x7f07001c

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "lbsapp"

    const v12, 0x7f07001f

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "shakeapp"

    const v12, 0x7f070022

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "medianote"

    const v12, 0x7f070025

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "qqfriend"

    const v12, 0x7f07002b

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "newsapp"

    const v12, 0x7f07003f

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "blogapp"

    const v12, 0x7f07004b

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "facebookapp"

    const v12, 0x7f070028

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "masssendapp"

    const v12, 0x7f070037

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "meishiapp"

    const v12, 0x7f07003a

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "feedsapp"

    const v12, 0x7f070d6f

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "voipapp"

    const v12, 0x7f070042

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "weixin"

    const v12, 0x7f070005

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "filehelper"

    const v12, 0x7f070057

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "cardpackage"

    const v12, 0x7f070045

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "officialaccounts"

    const v12, 0x7f070031

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "voicevoipapp"

    const v12, 0x7f07004e

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "helper_entry"

    const v12, 0x7f070034

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "voiceinputapp"

    const v12, 0x7f070051

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "linkedinplugin"

    const v12, 0x7f070054

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "googlecontact"

    const v12, 0x7f07002e

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/mm/f/a;->b(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v11, "weixin"

    const v12, 0x7f070006

    invoke-virtual {p0, v12}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/mm/f/a;->c(Ljava/util/Map;)V

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v11, 0x7f070608

    invoke-virtual {p0, v11}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/mm/model/w;->a(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const-string v0, "MicroMsg.LauncherUI"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KEVIN MainTabUI onCreate initLanguage: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v9, v12, v9

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->dLe:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->dLe:Landroid/view/LayoutInflater;

    const v11, 0x7f03016e

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cYm:Landroid/view/View;

    const-string v0, "MicroMsg.LauncherUI"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KEVIN MainTabUI onCreate inflater.inflate(R.layout.main_tab, null);"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v9

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cYm:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->setContentView(Landroid/view/View;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v11, p0, Lcom/tencent/mm/ui/LauncherUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v11}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glI:Z

    const v0, 0x7f0a0490

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/high16 v11, 0x42c8

    invoke-static {p0, v11}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->kj(I)V

    const v0, 0x7f0a0428

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/CustomViewPager;

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/CustomViewPager;->n(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/ay;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/LauncherUITabView;->setVisibility(I)V

    :cond_13
    const v0, 0x7f0a048f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/LauncherUITabView;

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/CustomViewPager;->da(Z)V

    new-instance v0, Lcom/tencent/mm/ui/au;

    iget-object v11, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    invoke-direct {v0, p0, p0, v11}, Lcom/tencent/mm/ui/au;-><init>(Lcom/tencent/mm/ui/LauncherUI;Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glQ:Lcom/tencent/mm/ui/au;

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/LauncherUITabView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    iget-object v11, p0, Lcom/tencent/mm/ui/LauncherUI;->glQ:Lcom/tencent/mm/ui/au;

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/LauncherUITabView;->a(Lcom/tencent/mm/ui/ay;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    iget-object v11, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v11}, Landroid/support/v7/app/ActionBar;->aV()Landroid/support/v7/app/c;

    move-result-object v11

    const-string v12, "main"

    invoke-virtual {v11, v12}, Landroid/support/v7/app/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/c;

    move-result-object v11

    iget-object v12, p0, Lcom/tencent/mm/ui/LauncherUI;->gmh:Landroid/support/v7/app/d;

    invoke-virtual {v11, v12}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/d;)Landroid/support/v7/app/c;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/app/c;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    iget-object v11, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v11}, Landroid/support/v7/app/ActionBar;->aV()Landroid/support/v7/app/c;

    move-result-object v11

    const-string v12, "add"

    invoke-virtual {v11, v12}, Landroid/support/v7/app/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/c;

    move-result-object v11

    iget-object v12, p0, Lcom/tencent/mm/ui/LauncherUI;->gmh:Landroid/support/v7/app/d;

    invoke-virtual {v11, v12}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/d;)Landroid/support/v7/app/c;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/app/c;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    iget-object v11, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v11}, Landroid/support/v7/app/ActionBar;->aV()Landroid/support/v7/app/c;

    move-result-object v11

    const-string v12, "find"

    invoke-virtual {v11, v12}, Landroid/support/v7/app/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/c;

    move-result-object v11

    iget-object v12, p0, Lcom/tencent/mm/ui/LauncherUI;->gmh:Landroid/support/v7/app/d;

    invoke-virtual {v11, v12}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/d;)Landroid/support/v7/app/c;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->a(Landroid/support/v7/app/c;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->mq(I)V

    const-string v0, "MicroMsg.LauncherUI"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KEVIN MainTabUI onCreate initView(); "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v9, v12, v9

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->s(Landroid/content/Intent;)V

    const-string v0, "MicroMsg.LauncherUI"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KEVIN handleJump(getIntent()); "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v9, v12, v9

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glN:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMAppMgr;->i(Landroid/app/Activity;I)V

    :cond_14
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/mm/plugin/b;->eS(I)V

    const-string v0, "MicroMsg.LauncherUI"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KEVIN syncAddrBookAndUpload checkLastLbsroomAndQuitIt "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v9, v12, v9

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    const-string v0, "MicroMsg.LauncherUI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "KEVIN MainTabUI onCreate : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v7

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.LauncherUI"

    const-string v7, "onMainTabCreate, send refresh broadcast"

    invoke-static {v0, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.tencent.mm.plugin.openapi.Intent.ACTION_REFRESH_WXAPP"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_15
    sget-boolean v0, Lcom/tencent/mm/ui/LauncherUI;->glA:Z

    goto/16 :goto_6

    :cond_16
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEr()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEB()V

    goto/16 :goto_3

    :cond_17
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v5, "login_user_name"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_18
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/d/c/m;->hB(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v5, Lcom/tencent/mm/model/cb;

    new-instance v6, Lcom/tencent/mm/ui/an;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/an;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    const-string v7, "reset accinfo"

    invoke-direct {v5, v6, v7}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    const-string v0, "MicroMsg.LauncherUI"

    const-string v5, "launch mainTabHasCreate:%b needResetLaunchUI:%b formNotification:%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-boolean v8, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    if-nez v0, :cond_e

    :cond_19
    invoke-static {}, Lcom/tencent/mm/model/be;->uH()V

    invoke-static {}, Lcom/tencent/mm/plugin/backup/model/d;->reset()V

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/be;->dt(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/mm/ui/LauncherUI;->glK:Z

    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/mm/ui/LauncherUI;->glA:Z

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uI()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5
.end method

.method static synthetic b(Lcom/tencent/mm/ui/LauncherUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEx()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEt()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/LauncherUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glB:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEz()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEy()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aED()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/ui/LauncherUI;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->dLe:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/LauncherUI;)I
    .locals 1
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glZ:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/LauncherUI;)I
    .locals 1
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aDN()V

    return-void
.end method

.method private mq(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1712
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "change tab to %d, cur tab %d, has init tab %B, tab cache size %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-boolean v3, p0, Lcom/tencent/mm/ui/LauncherUI;->glI:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1713
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glI:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glQ:Lcom/tencent/mm/ui/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glQ:Lcom/tencent/mm/ui/au;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/au;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    if-eq p1, v6, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    if-ne v0, v6, :cond_3

    .line 1717
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x23102

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1720
    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    :cond_4
    iput p1, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    .line 1725
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    if-eqz v0, :cond_5

    .line 1726
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    iget v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUITabView;->mu(I)V

    .line 1728
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    iget v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/ui/base/CustomViewPager;->a(IZ)V

    .line 1730
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->mp(I)V

    goto :goto_0
.end method

.method private s(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x22

    const/4 v6, -0x1

    const/high16 v5, 0x400

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1286
    const-string v0, "MicroMsg.LauncherUI"

    const-string v3, "handleJump"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Intro_Switch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    .line 1290
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    new-instance v0, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v3, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    const/4 v4, 0x4

    iput v4, v3, Lcom/tencent/mm/c/a/ib;->bNk:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/ic;->bRB:Z

    if-nez v0, :cond_0

    .line 1297
    const-string v0, "talkroom_notification"

    const-string v3, "nofification_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1299
    const-string v0, "enter_chat_usrname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1303
    const-string v2, "enter_room_username"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1305
    const-string v0, "talkroom"

    const-string v2, ".ui.TalkRoomUI"

    invoke-static {p0, v0, v2, v1}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 1310
    :cond_2
    const-string v0, "show_update_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1311
    if-eqz v0, :cond_3

    .line 1312
    const-string v0, "update_type"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_4

    const-string v0, "MicroMsg.LauncherUI"

    const-string v3, "showUpdateDialog is true, but updateType is -1"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_3
    :goto_1
    const-string v0, "Main_User"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1317
    if-eqz v3, :cond_a

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1318
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1319
    if-eqz v0, :cond_a

    .line 1320
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v0

    .line 1324
    :goto_2
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->nJ()V

    .line 1325
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/LauncherUI;->mq(I)V

    .line 1327
    const-string v4, "Intro_Is_Muti_Talker"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1328
    if-nez v4, :cond_8

    if-lez v0, :cond_8

    .line 1330
    const-string v0, "Intro_Bottle_unread_count"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1331
    if-lez v0, :cond_5

    .line 1333
    const-string v0, "bottle"

    const-string v2, ".ui.BottleConversationUI"

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :goto_3
    const-string v0, "kstyle_show_bind_mobile_afterauth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1369
    if-lez v0, :cond_0

    .line 1370
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/account/bind/BindMobileUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1371
    const-string v2, "kstyle_bind_recommend_show"

    const-string v3, "kstyle_bind_recommend_show"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1372
    const-string v1, "kstyle_bind_wording"

    const-string v2, "kstyle_bind_wording"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1373
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1312
    :cond_4
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/tencent/mm/sandbox/updater/Updater;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/sandbox/updater/Updater;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/af;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/af;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    invoke-virtual {v3, v0}, Lcom/tencent/mm/sandbox/updater/Updater;->lA(I)V

    goto :goto_1

    .line 1335
    :cond_5
    invoke-static {v3}, Lcom/tencent/mm/model/w;->cL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1337
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1338
    const-string v2, "type"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1339
    const-string v2, "readerapp"

    const-string v3, ".ui.ReaderAppUI"

    invoke-static {p0, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 1342
    :cond_6
    invoke-static {v3}, Lcom/tencent/mm/model/w;->cS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1344
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1345
    const-string v2, "type"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1346
    const-string v2, "readerapp"

    const-string v3, ".ui.ReaderAppUI"

    invoke-static {p0, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 1355
    :cond_7
    const-string v0, "MainUI_User_Last_Msg_Type"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1357
    if-ne v0, v7, :cond_9

    .line 1358
    const/4 v0, 0x2

    .line 1360
    :goto_4
    iput-boolean v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glS:Z

    .line 1361
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Chat_User"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Chat_Mode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1365
    :cond_8
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/LauncherUI;->mq(I)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2049
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 2050
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "Launcherui onNotifyChange event type %d, username %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEu()V

    .line 2059
    :cond_0
    return-void
.end method

.method public final aEC()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1750
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.UnreadCountHelper"

    const-string v4, "getMainTabUnreadCount, but mmcore not ready"

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1751
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->ms(I)V

    .line 1752
    const-string v4, "MicroMsg.LauncherUI"

    const-string v5, "unRead setConversationTagUnread  last time %d, unread %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    return v0

    .line 1750
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    const v4, 0x8000

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "floatbottle"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/tencent/mm/model/x;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const-string v4, "MicroMsg.LauncherUI"

    const-string v5, "unRead no bottole getMainTabUnreadCount  unread %d "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/x;->dk(Ljava/lang/String;)I

    move-result v0

    const-string v4, "MicroMsg.LauncherUI"

    const-string v5, "unRead with bottole getMainTabUnreadCount  unread %d "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final aEE()V
    .locals 2

    .prologue
    .line 2038
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-nez v0, :cond_0

    .line 2043
    :goto_0
    return-void

    .line 2040
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glM:Z

    .line 2041
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2042
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->arP()V

    goto :goto_0
.end method

.method public final aEq()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    return v0
.end method

.method public final aEs()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glC:Z

    return v0
.end method

.method protected final aEu()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glT:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->p(Ljava/lang/Runnable;)V

    .line 301
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glT:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    .line 302
    return-void
.end method

.method public final aEv()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 335
    instance-of v2, v0, Lcom/tencent/mm/ui/conversation/MainUI;

    if-nez v2, :cond_0

    .line 336
    check-cast v0, Lcom/tencent/mm/ui/ac;

    invoke-interface {v0}, Lcom/tencent/mm/ui/ac;->aDP()V

    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method public final aEw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ac;

    invoke-interface {v0}, Lcom/tencent/mm/ui/ac;->aDP()V

    .line 349
    :cond_0
    return-void
.end method

.method public final aY(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1425
    if-ne p1, p2, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    .line 1430
    invoke-virtual {p0, p2}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    goto :goto_0
.end method

.method public final da(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/CustomViewPager;->da(Z)V

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/LauncherUITabView;->setVisibility(I)V

    .line 1464
    :cond_1
    return-void

    .line 1462
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1791
    const-string v0, "MicroMsg.LauncherUI"

    const-string v3, "ui group onKeyDown"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->dismiss()V

    move v0, v1

    .line 1882
    :goto_0
    return v0

    .line 1802
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1805
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEx()V

    move v0, v1

    .line 1806
    goto :goto_0

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glQ:Lcom/tencent/mm/ui/au;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1810
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glQ:Lcom/tencent/mm/ui/au;

    iget-object v3, p0, Lcom/tencent/mm/ui/LauncherUI;->glP:Lcom/tencent/mm/ui/base/CustomViewPager;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/CustomViewPager;->ak()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/au;->f(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    .line 1811
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/tencent/mm/ui/cy;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1812
    goto :goto_0

    .line 1816
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 1818
    invoke-static {}, Lcom/tencent/mm/app/c;->ny()Lcom/tencent/mm/app/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/c;->nz()Z

    move-result v0

    .line 1819
    if-eqz v0, :cond_3

    move v0, v1

    .line 1820
    goto :goto_0

    .line 1823
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    if-eqz v0, :cond_4

    .line 1824
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1825
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->arK()V

    move v0, v1

    .line 1826
    goto :goto_0

    .line 1831
    :cond_4
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/ba;->br(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/tencent/mm/ui/ai;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/ai;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    move v0, v1

    .line 1840
    goto :goto_0

    .line 1831
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x5

    if-lt v4, v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    const-string v0, "show_wap_adviser"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    const v0, 0x7f030216

    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0a060d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f070786

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0709bb

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/base/aa;->mR(I)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    const v5, 0x7f0709c4

    new-instance v6, Lcom/tencent/mm/ui/cd;

    invoke-direct {v6, v4}, Lcom/tencent/mm/ui/cd;-><init>(I)V

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    const v4, 0x7f070781

    new-instance v5, Lcom/tencent/mm/ui/ce;

    invoke-direct {v5}, Lcom/tencent/mm/ui/ce;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    new-instance v4, Lcom/tencent/mm/ui/cf;

    invoke-direct {v4, v3}, Lcom/tencent/mm/ui/cf;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/aa;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    move v0, v1

    goto :goto_1

    .line 1843
    :cond_8
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/ba;->bv(Landroid/content/Context;)I

    move-result v3

    .line 1844
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/ba;->lK(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1845
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x4001

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1846
    new-instance v0, Lcom/tencent/mm/ui/aj;

    invoke-direct {v0, p0, v3}, Lcom/tencent/mm/ui/aj;-><init>(Lcom/tencent/mm/ui/LauncherUI;I)V

    new-instance v4, Lcom/tencent/mm/ui/ak;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/ak;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    invoke-static {p0, v3, v0, v4}, Lcom/tencent/mm/ui/MMAppMgr;->b(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    .line 1868
    if-eqz v0, :cond_9

    move v0, v1

    .line 1869
    goto/16 :goto_0

    .line 1875
    :cond_9
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aDN()V

    .line 1879
    :cond_a
    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    const-string v3, "MicroMsg.LauncherUI"

    const-string v4, "dispatch key event catch exception %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 1882
    goto/16 :goto_0
.end method

.method public final mp(I)V
    .locals 2
    .parameter

    .prologue
    .line 1443
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/LauncherUI;->mr(I)Lcom/tencent/mm/ui/cy;

    move-result-object v0

    .line 1444
    if-nez v0, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    instance-of v1, v0, Lcom/tencent/mm/ui/ac;

    if-eqz v1, :cond_0

    .line 1447
    check-cast v0, Lcom/tencent/mm/ui/ac;

    invoke-interface {v0}, Lcom/tencent/mm/ui/ac;->aDS()V

    .line 1448
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->reset()V

    goto :goto_0
.end method

.method public final mr(I)Lcom/tencent/mm/ui/cy;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1735
    const-string v1, "MicroMsg.LauncherUI"

    const-string v2, "get tab %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    if-gez p1, :cond_0

    .line 1743
    :goto_0
    return-object v0

    .line 1738
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    goto :goto_0

    .line 1741
    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    const-string v1, "MicroMsg.LauncherUI"

    const-string v2, "createFragment index:%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/cy;->a(Landroid/support/v7/app/ActionBarActivity;)V

    .line 1742
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1741
    :pswitch_0
    const-class v1, Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Need_Voice_Search"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "favour_include_biz"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v1, Lcom/tencent/mm/ui/contact/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    goto :goto_1

    :pswitch_2
    const-class v1, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    const-class v1, Lcom/tencent/mm/ui/setting/MoreTabUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final ms(I)V
    .locals 1
    .parameter

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glO:Lcom/tencent/mm/ui/LauncherUITabView;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/LauncherUITabView;->mw(I)V

    .line 1758
    return-void
.end method

.method public final nZ()V
    .locals 2

    .prologue
    .line 899
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "KEVIN onInit"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    new-instance v0, Lcom/tencent/mm/ui/ao;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ao;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 720
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 721
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "edw on activity result"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-eqz v0, :cond_0

    .line 724
    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3023

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v3}, Lcom/tencent/mm/platformtools/ag;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "welcome_page_show"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    const-string v0, "system_config_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->nJ()V

    invoke-static {p0, v3}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 199
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "KEVIN onCreate "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->glD:Lcom/tencent/mm/ui/LauncherUI;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "finish last mainTabUI"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->glD:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    :cond_0
    sput-object p0, Lcom/tencent/mm/ui/LauncherUI;->glD:Lcom/tencent/mm/ui/LauncherUI;

    sget v0, Lcom/tencent/mm/ui/LauncherUI;->gma:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/ui/LauncherUI;->gma:I

    .line 201
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/app/WorkerProfile;->a(Lcom/tencent/mm/app/ac;)V

    .line 204
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    .line 205
    const v0, 0x7f0708e5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_2

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 209
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->aR()V

    .line 212
    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->ha:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 216
    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/dm;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/dm;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    .line 218
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/al;->r(Landroid/app/Activity;)V

    .line 221
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v1, "login_user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    sget-boolean v1, Lcom/tencent/mm/ui/LauncherUI;->glE:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/app/WorkerProfile;->nW()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 223
    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEt()V

    .line 228
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/LauncherUI;->glE:Z

    .line 229
    return-void

    .line 225
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->setRequestedOrientation(I)V

    .line 226
    invoke-static {}, Lcom/tencent/mm/app/c;->ny()Lcom/tencent/mm/app/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/app/c;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    .line 495
    if-nez v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 497
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    .line 504
    :goto_0
    const v0, 0x7f0708d8

    invoke-interface {p1, v3, v7, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 505
    const v2, 0x7f02006a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 506
    invoke-static {v0, v6}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 508
    const v0, 0x7f0708d9

    invoke-interface {p1, v3, v6, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 509
    const v2, 0x7f02005a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 511
    invoke-static {v0, v6}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 513
    const/4 v0, 0x3

    const-string v2, ""

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 514
    const/16 v0, 0x38

    invoke-static {p0, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v3

    .line 515
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    if-nez v0, :cond_0

    .line 516
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 517
    const v0, 0x7f03001b

    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    const v5, 0x7f0a0044

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glW:Landroid/widget/ImageView;

    .line 519
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    const v5, 0x7f0a006e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glX:Landroid/view/View;

    .line 520
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    const v4, 0x7f020067

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 522
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 523
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 524
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glW:Landroid/widget/ImageView;

    const v4, 0x7f020068

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    new-instance v4, Lcom/tencent/mm/ui/am;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/am;-><init>(Lcom/tencent/mm/ui/LauncherUI;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEy()V

    .line 536
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 537
    invoke-static {v2, v6}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 538
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 539
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 540
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 542
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return v7

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_2
    move v1, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 669
    invoke-super {p0}, Lcom/tencent/mm/ui/MMFragmentActivity;->onDestroy()V

    .line 670
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/app/WorkerProfile;->b(Lcom/tencent/mm/app/ac;)V

    .line 672
    sget v0, Lcom/tencent/mm/ui/LauncherUI;->gma:I

    add-int/lit8 v0, v0, -0x1

    .line 673
    sput v0, Lcom/tencent/mm/ui/LauncherUI;->gma:I

    if-nez v0, :cond_0

    .line 674
    sput-object v3, Lcom/tencent/mm/ui/LauncherUI;->glD:Lcom/tencent/mm/ui/LauncherUI;

    .line 675
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/al;->r(Landroid/app/Activity;)V

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmb:Lcom/tencent/mm/n/m;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUI;->gmb:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->gmg:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    if-eqz v0, :cond_3

    .line 681
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->a(Lcom/tencent/mm/pluginsdk/ui/bi;)V

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 684
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x400

    const/4 v2, 0x0

    .line 306
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    .line 309
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/LauncherUI;->setIntent(Landroid/content/Intent;)V

    .line 312
    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/WorkerProfile;->nN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "KEVIN clearTop"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->cOt:Landroid/content/Intent;

    const-string v1, "Intro_Need_Clear_Top "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glG:Z

    .line 324
    const-string v0, "Intro_Notify"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glH:Z

    .line 326
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-eqz v0, :cond_3

    .line 327
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on new intent"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/WorkerProfile;->nN()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/LauncherUI;->s(Landroid/content/Intent;)V

    .line 330
    :cond_3
    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/LauncherUI;->mq(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 548
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 549
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2aa7

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glU:Landroid/widget/PopupWindow$OnDismissListener;

    new-instance v2, Lcom/tencent/mm/ui/tools/dl;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tencent/mm/ui/dk;

    invoke-direct {v3}, Lcom/tencent/mm/ui/dk;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    new-instance v3, Lcom/tencent/mm/ui/dl;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/dl;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/tools/dl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    .line 569
    :goto_0
    return v1

    .line 551
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 552
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "from_tab_index"

    iget v5, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "MMActivity.OverrideEnterAnimation"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "MMActivity.OverrideExitAnimation"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 556
    const-string v4, "search"

    const-string v5, ".ui.SearchContactUI"

    invoke-static {p0, v4, v5, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 561
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    if-nez v0, :cond_1

    move v0, v1

    .line 563
    :goto_1
    sget-object v4, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x2aef

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    .line 567
    :cond_2
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 644
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "edw onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-super {p0}, Lcom/tencent/mm/ui/MMFragmentActivity;->onPause()V

    .line 646
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->bLh:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/WorkerProfile;->nN()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glC:Z

    .line 653
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glF:Z

    if-eqz v0, :cond_3

    .line 654
    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/app/WorkerProfile;->nN()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/MainUI;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->aLG()V

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->gme:Lcom/tencent/mm/sdk/e/ar;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/o;->b(Lcom/tencent/mm/sdk/e/ar;)V

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/LauncherUI;->gmd:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->b(Lcom/tencent/mm/i/c;)V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "UnreadChange"

    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUI;->gmf:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glR:Lcom/tencent/mm/ui/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/dm;->dismiss()V

    .line 661
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    if-eqz v0, :cond_5

    .line 662
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/WelcomeView;->onPause()V

    .line 664
    :cond_5
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "KEVIN Launcher onPause "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1067
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1069
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 399
    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onResume start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-boolean v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glS:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ap;->Rz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "launcher onResume end track %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/mm/c/a/aa;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/aa;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/aa;->bMq:Lcom/tencent/mm/c/a/ab;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/ab;->username:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->gmj:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/mm/ui/LauncherUI;->glY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/cy;

    check-cast v0, Lcom/tencent/mm/ui/ac;

    invoke-interface {v0}, Lcom/tencent/mm/ui/ac;->aDQ()V

    .line 404
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 405
    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/account/WelcomeView;->onResume()V

    .line 409
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/mm/ui/LauncherUI;->bLh:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/mm/app/WorkerProfile;->nM()Lcom/tencent/mm/app/WorkerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/app/WorkerProfile;->nN()Z

    move-result v2

    if-nez v2, :cond_4

    .line 410
    :cond_3
    const-string v2, "MicroMsg.LauncherUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LauncherUI onResume : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-super {p0}, Lcom/tencent/mm/ui/MMFragmentActivity;->onResume()V

    .line 425
    :goto_0
    return-void

    .line 414
    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/LauncherUI;->aEz()V

    .line 415
    iget-boolean v2, p0, Lcom/tencent/mm/ui/LauncherUI;->glM:Z

    if-eqz v2, :cond_5

    .line 416
    iput-boolean v4, p0, Lcom/tencent/mm/ui/LauncherUI;->glM:Z

    .line 417
    iput-boolean v4, p0, Lcom/tencent/mm/ui/LauncherUI;->glM:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/LauncherUI;->gmc:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->reset()V

    .line 419
    :cond_5
    invoke-static {}, Lcom/tencent/mm/app/f;->nC()Lcom/tencent/mm/app/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/app/f;->resume()V

    .line 420
    invoke-super {p0}, Lcom/tencent/mm/ui/MMFragmentActivity;->onResume()V

    .line 421
    const-string v2, "MicroMsg.LauncherUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LauncherUI Launcher onResume end: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput-boolean v6, p0, Lcom/tencent/mm/ui/LauncherUI;->glS:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 1075
    return-void
.end method

.method public final s(Landroid/app/Activity;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 868
    invoke-static {}, Lcom/tencent/mm/model/be;->uD()Z

    move-result v2

    .line 871
    sget-object v3, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v4, "login_user_name"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 872
    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 873
    :goto_0
    if-nez v2, :cond_1

    .line 874
    sput-boolean v0, Lcom/tencent/mm/sdk/platformtools/j;->gcp:Z

    .line 894
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 872
    goto :goto_0

    .line 879
    :cond_1
    invoke-static {}, Lcom/tencent/mm/app/c;->ny()Lcom/tencent/mm/app/c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/app/c;->bKN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/account/fj;

    invoke-direct {v2}, Lcom/tencent/mm/ui/account/fj;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 881
    new-instance v0, Lcom/tencent/mm/ui/account/WelcomeSelectView_5_2;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/account/WelcomeSelectView_5_2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    .line 885
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 886
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/WelcomeView;->aGn()V

    .line 888
    sget-boolean v0, Lcom/tencent/mm/sdk/platformtools/j;->gcq:Z

    if-eqz v0, :cond_3

    .line 889
    invoke-static {p1}, Lcom/tencent/mm/ui/MMAppMgr;->f(Landroid/app/Activity;)V

    :goto_3
    move v0, v1

    .line 894
    goto :goto_1

    .line 883
    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->glL:Lcom/tencent/mm/ui/account/WelcomeView;

    goto :goto_2

    .line 891
    :cond_3
    invoke-static {p1}, Lcom/tencent/mm/ui/MMAppMgr;->u(Landroid/content/Context;)V

    goto :goto_3
.end method

.method public final vS(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1672
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1675
    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/LauncherUI;->gmi:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->mq(I)V

    goto :goto_0
.end method
