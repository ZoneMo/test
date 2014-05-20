.class public final Lcom/tencent/mm/app/WorkerProfile;
.super Lcom/tencent/mm/compatible/loader/h;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ak;
.implements Lcom/tencent/mm/model/an;
.implements Lcom/tencent/mm/model/bc;
.implements Lcom/tencent/mm/n/m;


# static fields
.field public static final bKY:Ljava/lang/String;

.field private static bLe:Lcom/tencent/mm/booter/i;

.field private static bLg:Lcom/tencent/mm/app/WorkerProfile;


# instance fields
.field private final bKZ:Lcom/tencent/mm/console/Shell;

.field private final bLf:Lcom/tencent/mm/console/a;

.field private bLh:Z

.field private bLi:Lcom/tencent/mm/model/ap;

.field private bLj:Lcom/tencent/mm/storage/s;

.field private bLk:Lcom/tencent/mm/model/al;

.field private bLl:Lcom/tencent/mm/model/ah;

.field private bLm:Z

.field private bLn:Z

.field private final bLo:Lcom/tencent/mm/ui/MMAppMgr;

.field private final bLp:Ljava/util/HashSet;

.field private bLq:Lcom/tencent/mm/d/b;

.field private final bLr:Lcom/tencent/mm/app/b;

.field private final bLs:Lcom/tencent/mm/app/ad;

.field private final bLt:Lcom/tencent/mm/app/k;

.field protected locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/app/WorkerProfile;->bKY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/compatible/loader/h;-><init>()V

    .line 148
    new-instance v0, Lcom/tencent/mm/console/Shell;

    invoke-direct {v0}, Lcom/tencent/mm/console/Shell;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bKZ:Lcom/tencent/mm/console/Shell;

    .line 149
    new-instance v0, Lcom/tencent/mm/console/a;

    invoke-direct {v0}, Lcom/tencent/mm/console/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLf:Lcom/tencent/mm/console/a;

    .line 159
    new-instance v0, Lcom/tencent/mm/ui/MMAppMgr;

    invoke-direct {v0}, Lcom/tencent/mm/ui/MMAppMgr;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLo:Lcom/tencent/mm/ui/MMAppMgr;

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLp:Ljava/util/HashSet;

    .line 184
    new-instance v0, Lcom/tencent/mm/app/b;

    invoke-direct {v0}, Lcom/tencent/mm/app/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLr:Lcom/tencent/mm/app/b;

    .line 186
    new-instance v0, Lcom/tencent/mm/app/ad;

    invoke-direct {v0}, Lcom/tencent/mm/app/ad;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    .line 187
    new-instance v0, Lcom/tencent/mm/app/k;

    invoke-direct {v0}, Lcom/tencent/mm/app/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    .line 1091
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/app/WorkerProfile;)Landroid/app/Application;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/app/WorkerProfile;)Lcom/tencent/mm/app/b;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLr:Lcom/tencent/mm/app/b;

    return-object v0
.end method

.method public static nM()Lcom/tencent/mm/app/WorkerProfile;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/tencent/mm/app/WorkerProfile;->bLg:Lcom/tencent/mm/app/WorkerProfile;

    return-object v0
.end method

.method private nP()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 738
    const-string v0, "system_property_key_locale"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cg;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 740
    const-string v1, "language_default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 741
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    .line 754
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/MMActivity;->bO(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 755
    const-string v2, "MicroMsg.WorkerProfile"

    const-string v3, "onConfigurationChanged, locale = %s, n = %s, lang = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    const-string v0, "MicroMsg.WorkerProfile"

    const-string v1, "language changed, restart process"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 760
    :cond_1
    return-void

    .line 743
    :cond_2
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lt v2, v8, :cond_3

    .line 745
    const-string v2, "MicroMsg.WorkerProfile"

    const-string v3, "initLanguage arr.length = %s"

    new-array v4, v7, [Ljava/lang/Object;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v6

    aget-object v1, v1, v7

    invoke-direct {v2, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 748
    :cond_3
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method static synthetic nX()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->ov()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v3, v2, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v1, v3, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v2, v2, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/mm/model/ao;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 886
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1031
    :goto_0
    return-object v0

    .line 889
    :cond_1
    new-instance v0, Lcom/tencent/mm/model/ao;

    invoke-direct {v0}, Lcom/tencent/mm/model/ao;-><init>()V

    .line 891
    const-string v2, "qqsync"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 892
    const v1, 0x7f070019

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 893
    const v1, 0x7f07001a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 894
    const v1, 0x7f07001b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto :goto_0

    .line 897
    :cond_2
    const-string v2, "floatbottle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 898
    const v1, 0x7f07001c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 899
    const v1, 0x7f07001d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 900
    const v1, 0x7f07001e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto :goto_0

    .line 903
    :cond_3
    const-string v2, "shakeapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 904
    const v1, 0x7f070022

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 905
    const v1, 0x7f070023

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 906
    const v1, 0x7f070024

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto :goto_0

    .line 909
    :cond_4
    const-string v2, "lbsapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 910
    const v1, 0x7f07001f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 911
    const v1, 0x7f070020

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 912
    const v1, 0x7f070021

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 915
    :cond_5
    const-string v2, "medianote"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 916
    const v1, 0x7f070025

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 917
    const v1, 0x7f070026

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 918
    const v1, 0x7f070027

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 921
    :cond_6
    const-string v2, "newsapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 922
    const v1, 0x7f07003f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 923
    const v1, 0x7f070040

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 924
    const v1, 0x7f070041

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 927
    :cond_7
    const-string v2, "blogapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 928
    const v1, 0x7f07004b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 929
    const v1, 0x7f07004c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 930
    const v1, 0x7f07004d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 933
    :cond_8
    const-string v2, "facebookapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 934
    const v1, 0x7f070028

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 935
    const v1, 0x7f070029

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 936
    const v1, 0x7f07002a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 939
    :cond_9
    const-string v2, "qqfriend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 940
    const v1, 0x7f07002b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 941
    const v1, 0x7f07002c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 942
    const v1, 0x7f07002d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 945
    :cond_a
    const-string v2, "googlecontact"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 946
    const v1, 0x7f07002e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 947
    const v1, 0x7f07002f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 948
    const v1, 0x7f070030

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 951
    :cond_b
    const-string v2, "masssendapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 952
    const v1, 0x7f070037

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 953
    const v1, 0x7f070038

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 954
    const v1, 0x7f070039

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 957
    :cond_c
    const-string v2, "feedsapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 958
    const v1, 0x7f070d6f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 959
    const v1, 0x7f07003d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 960
    const v1, 0x7f07003e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 963
    :cond_d
    const-string v2, "tmessage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 964
    const v1, 0x7f070013

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 965
    const v1, 0x7f070014

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 966
    const v1, 0x7f070015

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 969
    :cond_e
    const-string v2, "qmessage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 970
    const v1, 0x7f070016

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 971
    const v1, 0x7f070017

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 972
    const v1, 0x7f070018

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 975
    :cond_f
    const-string v2, "fmessage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 976
    const v1, 0x7f070010

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 977
    const v1, 0x7f070011

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 978
    const v1, 0x7f070012

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 981
    :cond_10
    const-string v2, "voipapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 982
    const v1, 0x7f070042

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 983
    const v1, 0x7f070043

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 984
    const v1, 0x7f070044

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 987
    :cond_11
    const-string v2, "officialaccounts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 988
    const v1, 0x7f070031

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 989
    const v1, 0x7f070032

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 990
    const v1, 0x7f070033

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 993
    :cond_12
    const-string v2, "helper_entry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 994
    const v1, 0x7f070034

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 995
    const v1, 0x7f070035

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 996
    const v1, 0x7f070036

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 1000
    :cond_13
    const-string v2, "cardpackage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1001
    const v1, 0x7f070045

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 1002
    const v1, 0x7f070046

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 1003
    const v1, 0x7f070047

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 1006
    :cond_14
    const-string v2, "voicevoipapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1007
    const v1, 0x7f07004e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 1008
    const v1, 0x7f07004f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 1009
    const v1, 0x7f070050

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 1012
    :cond_15
    const-string v2, "voiceinputapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1013
    const v1, 0x7f070051

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 1014
    const v1, 0x7f070052

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 1015
    const v1, 0x7f070053

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 1018
    :cond_16
    const-string v2, "qqmail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1019
    const v1, 0x7f07000d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 1020
    const v1, 0x7f07000e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 1021
    const v1, 0x7f07000f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    .line 1024
    :cond_17
    const-string v2, "linkedinplugin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1025
    const v1, 0x7f070054

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cie:Ljava/lang/String;

    .line 1026
    const v1, 0x7f070055

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cid:Ljava/lang/String;

    .line 1027
    const v1, 0x7f070056

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/ao;->cif:Ljava/lang/String;

    goto/16 :goto_0

    :cond_18
    move-object v0, v1

    .line 1031
    goto/16 :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x1000

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 1050
    const-string v0, "MicroMsg.WorkerProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "broadcast "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Lcom/tencent/mm/c/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/m;-><init>()V

    .line 1053
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput v3, v1, Lcom/tencent/mm/c/a/n;->type:I

    .line 1054
    iget-object v1, v0, Lcom/tencent/mm/c/a/m;->bLU:Lcom/tencent/mm/c/a/n;

    iput-object p3, v1, Lcom/tencent/mm/c/a/n;->bLW:Ljava/lang/String;

    .line 1055
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1058
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    const/4 v0, -0x6

    if-ne p2, v0, :cond_3

    .line 1059
    invoke-static {}, Lcom/tencent/mm/ui/tools/NewTaskUI;->aNC()Lcom/tencent/mm/ui/tools/NewTaskUI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1084
    :cond_1
    :goto_0
    return-void

    .line 1062
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1063
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/tools/NewTaskUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1064
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1068
    :cond_3
    if-ne p1, v4, :cond_1

    const/16 v0, -0xd5

    if-ne p2, v0, :cond_1

    .line 1069
    new-instance v0, Lcom/tencent/mm/c/a/dg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dg;-><init>()V

    .line 1070
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/mm/c/a/dh;->status:I

    .line 1071
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v3, v1, Lcom/tencent/mm/c/a/dh;->bOo:I

    .line 1072
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1074
    invoke-static {}, Lcom/tencent/mm/ui/tools/AccountDeletedAlphaAlertUI;->aMG()Lcom/tencent/mm/ui/tools/AccountDeletedAlphaAlertUI;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1077
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1078
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/tools/AccountDeletedAlphaAlertUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1079
    const-string v1, "errmsg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/app/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public final b(Lcom/tencent/mm/app/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public final bc()V
    .locals 2

    .prologue
    .line 722
    const-string v0, "system_property_key_locale"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cg;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 724
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    .line 727
    :cond_0
    monitor-enter p0

    .line 728
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLh:Z

    if-nez v0, :cond_1

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLm:Z

    .line 730
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :goto_0
    return-void

    .line 732
    :cond_1
    monitor-exit p0

    .line 734
    invoke-direct {p0}, Lcom/tencent/mm/app/WorkerProfile;->nP()V

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final nL()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/app/ac;

    .line 173
    invoke-interface {v0}, Lcom/tencent/mm/app/ac;->nZ()V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public final declared-synchronized nN()Z
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final nO()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLh:Z

    if-nez v0, :cond_8

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    .line 251
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/at;->azE()Lcom/tencent/mm/sdk/platformtools/at;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/app/m;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/m;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    sget-object v4, Lcom/tencent/mm/app/WorkerProfile;->bKY:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/at;->a(Lcom/tencent/mm/sdk/platformtools/ax;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/tencent/mm/sdk/b/b;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/b/b;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/sdk/b/a;->a(Lcom/tencent/mm/sdk/b/f;)V

    .line 281
    invoke-static {}, Lcom/tencent/mm/platformtools/as;->FB()V

    .line 283
    const-string v0, "mmdb"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/u;->load(Ljava/lang/String;)V

    .line 287
    const-string v0, "MMProtocalJni"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/u;->load(Ljava/lang/String;)V

    .line 288
    const-string v0, "voice"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/u;->load(Ljava/lang/String;)V

    .line 289
    const-string v0, "ImgTools"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/u;->load(Ljava/lang/String;)V

    .line 291
    const-string v0, "AmmCommon"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/u;->load(Ljava/lang/String;)V

    .line 292
    const-string v0, "cdntran"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/u;->load(Ljava/lang/String;)V

    .line 294
    sget v0, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMProtocalJni;->setClientPackVersion(I)Z

    .line 295
    new-instance v0, Lcom/tencent/mm/xlog/Xlog;

    invoke-direct {v0}, Lcom/tencent/mm/xlog/Xlog;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/xlog/Xlog;->getLogLevel()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMProtocalJni;->setProtocalJniLogLevel(I)Z

    .line 296
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMProtocalJni;->setIsLite(Z)V

    .line 301
    new-instance v0, Lcom/tencent/mm/app/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/t;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/model/an;Lcom/tencent/mm/n/ak;)V

    .line 346
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 347
    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->oN()V

    .line 348
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    invoke-static {p0}, Lcom/tencent/mm/model/dr;->a(Lcom/tencent/mm/model/bc;)V

    .line 349
    invoke-static {p0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/model/ak;)V

    .line 354
    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/j;->bi(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/j;->bj(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/b/a;->ax(Ljava/lang/String;)Lcom/tencent/mm/b/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "MicroMsg.WorkerProfile"

    const-string v4, "apk external info not null"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->ni()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->nh()I

    move-result v3

    sput v3, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I

    const-string v3, "MicroMsg.WorkerProfile"

    const-string v4, "read channelId from apk external"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->nm()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->nl()I

    move-result v3

    sput v3, Lcom/tencent/mm/sdk/platformtools/j;->bKs:I

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->no()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->nn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/tencent/mm/sdk/platformtools/j;->gcm:I

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->nq()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->np()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/mm/sdk/platformtools/j;->gcn:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/b/c;->nk()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/b/a;->nd()Lcom/tencent/mm/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/b/c;->nj()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    .line 357
    :cond_4
    sget v0, Lcom/tencent/mm/sdk/platformtools/j;->gcm:I

    if-lez v0, :cond_5

    .line 358
    sput-boolean v1, Lcom/tencent/mm/sdk/platformtools/j;->gco:Z

    .line 361
    :cond_5
    sget v0, Lcom/tencent/mm/sdk/platformtools/j;->bKs:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 362
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "system_config_prefs"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "recomended_update_ignore"

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    :cond_6
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "android-"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/MMActivity;->bO(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->locale:Ljava/util/Locale;

    .line 380
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLf:Lcom/tencent/mm/console/a;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    const-string v4, "CommandProcessor"

    invoke-interface {v3, v4, v0}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 383
    new-instance v0, Lcom/tencent/mm/app/a;

    invoke-direct {v0}, Lcom/tencent/mm/app/a;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Lcom/tencent/mm/pluginsdk/ui/ae;)V

    new-instance v0, Lcom/tencent/mm/app/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/p;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/h;->a(Lcom/tencent/mm/pluginsdk/p;)V

    const-string v0, "mutidex"

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mutidex"

    invoke-static {v3, v4}, Lcom/tencent/mm/compatible/loader/g;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/compatible/loader/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nearby"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "qqsync"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "brandservice"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "favorite"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "scanner"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "shake"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "wallet"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "mall"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "voip"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "radar"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "sns"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "ext"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "accountsync"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "traceroute"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "qqmail"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "readerapp"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "talkroom"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "shoot"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "emoticon"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "sandbox"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "webview"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "shootstub"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "bottle"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "masssend"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "emoji"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "qmessage"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "tmessage"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "game"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "location"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "clean"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "watch"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "chatroom"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "safedevice"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "card"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "search"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    const-string v0, "extqlauncher"

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLs:Lcom/tencent/mm/app/ad;

    iget-object v4, p0, Lcom/tencent/mm/app/WorkerProfile;->bLt:Lcom/tencent/mm/app/k;

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/ak/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/e;Lcom/tencent/mm/pluginsdk/d;)V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v3, "ExtAgentLife"

    new-instance v4, Lcom/tencent/mm/plugin/ext/e;

    invoke-direct {v4}, Lcom/tencent/mm/plugin/ext/e;-><init>()V

    invoke-interface {v0, v3, v4}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 384
    new-instance v0, Lcom/tencent/mm/booter/w;

    iget-object v3, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-direct {v0, v3}, Lcom/tencent/mm/booter/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLi:Lcom/tencent/mm/model/ap;

    .line 388
    new-instance v0, Lcom/tencent/mm/d/b;

    invoke-direct {v0}, Lcom/tencent/mm/d/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLq:Lcom/tencent/mm/d/b;

    .line 389
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLq:Lcom/tencent/mm/d/b;

    invoke-virtual {v0}, Lcom/tencent/mm/d/b;->init()V

    .line 391
    iget-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLm:Z

    if-eqz v0, :cond_7

    .line 392
    invoke-direct {p0}, Lcom/tencent/mm/app/WorkerProfile;->nP()V

    .line 393
    iput-boolean v2, p0, Lcom/tencent/mm/app/WorkerProfile;->bLm:Z

    .line 396
    :cond_7
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "NeedVerifyQQ"

    new-instance v3, Lcom/tencent/mm/ui/bindqq/f;

    invoke-direct {v3}, Lcom/tencent/mm/ui/bindqq/f;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 398
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "Logout"

    new-instance v3, Lcom/tencent/mm/app/v;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/v;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 433
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "StartLauncherUI"

    new-instance v3, Lcom/tencent/mm/app/w;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/w;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 456
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "TraceOperation"

    new-instance v3, Lcom/tencent/mm/app/x;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/x;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 466
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "SendMsg"

    new-instance v3, Lcom/tencent/mm/app/y;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/y;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 477
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "SendAppMsg"

    new-instance v3, Lcom/tencent/mm/app/z;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/z;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 492
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "SetLocalQQMobile"

    new-instance v3, Lcom/tencent/mm/app/aa;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/aa;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 501
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "AccountExpired"

    new-instance v3, Lcom/tencent/mm/app/ab;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/ab;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 512
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "StartWebView"

    new-instance v3, Lcom/tencent/mm/app/n;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/n;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 532
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v2, "Launch3RdApp"

    new-instance v3, Lcom/tencent/mm/app/o;

    invoke-direct {v3, p0}, Lcom/tencent/mm/app/o;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 547
    new-instance v0, Lcom/tencent/mm/app/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/q;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/h;->a(Lcom/tencent/mm/pluginsdk/o;)V

    new-instance v0, Lcom/tencent/mm/app/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/r;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/h;->a(Lcom/tencent/mm/pluginsdk/q;)V

    new-instance v0, Lcom/tencent/mm/ui/transmit/ai;

    invoke-direct {v0}, Lcom/tencent/mm/ui/transmit/ai;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/h;->a(Lcom/tencent/mm/pluginsdk/r;)V

    .line 549
    invoke-virtual {p0}, Lcom/tencent/mm/app/WorkerProfile;->nL()V

    move v0, v1

    .line 550
    :goto_2
    return v0

    .line 246
    :cond_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_2

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :catch_0
    move-exception v3

    const-string v3, "MicroMsg.WorkerProfile"

    const-string v4, "NameNotFoundException"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :cond_9
    sget-object v0, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public final nQ()Lcom/tencent/mm/model/ap;
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLi:Lcom/tencent/mm/model/ap;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lcom/tencent/mm/booter/w;

    iget-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/tencent/mm/booter/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLi:Lcom/tencent/mm/model/ap;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLi:Lcom/tencent/mm/model/ap;

    return-object v0
.end method

.method public final nR()Lcom/tencent/mm/storage/s;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLj:Lcom/tencent/mm/storage/s;

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Lcom/tencent/mm/app/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/app/s;-><init>(Lcom/tencent/mm/app/WorkerProfile;)V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLj:Lcom/tencent/mm/storage/s;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLj:Lcom/tencent/mm/storage/s;

    return-object v0
.end method

.method public final nS()Lcom/tencent/mm/model/al;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLk:Lcom/tencent/mm/model/al;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Lcom/tencent/mm/booter/k;

    invoke-direct {v0}, Lcom/tencent/mm/booter/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLk:Lcom/tencent/mm/model/al;

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLk:Lcom/tencent/mm/model/al;

    return-object v0
.end method

.method public final nT()Lcom/tencent/mm/model/ah;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLl:Lcom/tencent/mm/model/ah;

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Lcom/tencent/mm/booter/a;

    invoke-direct {v0}, Lcom/tencent/mm/booter/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLl:Lcom/tencent/mm/model/ah;

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLl:Lcom/tencent/mm/model/ah;

    return-object v0
.end method

.method public final nU()Ljava/util/Map;
    .locals 3

    .prologue
    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 815
    const-class v1, Lcom/tencent/mm/m/af;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/m/af;

    invoke-direct {v2}, Lcom/tencent/mm/m/af;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-class v1, Lcom/tencent/mm/w/ag;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/w/ag;

    invoke-direct {v2}, Lcom/tencent/mm/w/ag;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-class v1, Lcom/tencent/mm/ab/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ab/r;

    invoke-direct {v2}, Lcom/tencent/mm/ab/r;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-class v1, Lcom/tencent/mm/modelstat/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelstat/r;

    invoke-direct {v2}, Lcom/tencent/mm/modelstat/r;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-class v1, Lcom/tencent/mm/t/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/t/l;

    invoke-direct {v2}, Lcom/tencent/mm/t/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-class v1, Lcom/tencent/mm/ah/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ah/k;

    invoke-direct {v2}, Lcom/tencent/mm/ah/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-class v1, Lcom/tencent/mm/ai/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ai/m;

    invoke-direct {v2}, Lcom/tencent/mm/ai/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-class v1, Lcom/tencent/mm/modelvoice/bc;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelvoice/bc;

    invoke-direct {v2}, Lcom/tencent/mm/modelvoice/bc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-class v1, Lcom/tencent/mm/i/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/i/i;

    invoke-direct {v2}, Lcom/tencent/mm/i/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-class v1, Lcom/tencent/mm/e/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/e/d;

    invoke-direct {v2}, Lcom/tencent/mm/e/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-class v1, Lcom/tencent/mm/pluginsdk/model/app/ba;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/model/app/ba;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/model/app/ba;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-class v1, Lcom/tencent/mm/plugin/d/c/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/d/c/p;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/d/c/p;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-class v1, Lcom/tencent/mm/ac/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ac/f;

    invoke-direct {v2}, Lcom/tencent/mm/ac/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-class v1, Lcom/tencent/mm/plugin/webwx/a/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/webwx/a/e;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/webwx/a/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-class v1, Lcom/tencent/mm/p/ab;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/p/ab;

    invoke-direct {v2}, Lcom/tencent/mm/p/ab;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-class v1, Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/voicereminder/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-class v1, Lcom/tencent/mm/u/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/u/e;

    invoke-direct {v2}, Lcom/tencent/mm/u/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-class v1, Lcom/tencent/mm/modelcdntran/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelcdntran/j;

    invoke-direct {v2}, Lcom/tencent/mm/modelcdntran/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-class v1, Lcom/tencent/mm/ag/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ag/a;

    invoke-direct {v2}, Lcom/tencent/mm/ag/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-class v1, Lcom/tencent/mm/modelfriend/ax;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/ax;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/ax;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v1, "nearby"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 848
    const-string v1, "brandservice"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 849
    const-string v1, "wallet"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 850
    const-string v1, "mall"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 851
    const-string v1, "qqsync"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 852
    const-string v1, "favorite"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 853
    const-string v1, "scanner"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 854
    const-string v1, "shake"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 855
    const-string v1, "voip"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 856
    const-string v1, "radar"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 857
    const-string v1, "sns"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 858
    const-string v1, "ext"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 859
    const-string v1, "emoji"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 860
    const-string v1, "emoticon"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 861
    const-string v1, "accountsync"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 862
    const-string v1, "qqmail"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 863
    const-string v1, "readerapp"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 864
    const-string v1, "talkroom"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 865
    const-string v1, "shootstub"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 866
    const-string v1, "shoot"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 867
    const-string v1, "game"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 868
    const-string v1, "bottle"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 869
    const-string v1, "masssend"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 870
    const-string v1, "qmessage"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 871
    const-string v1, "tmessage"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 872
    const-string v1, "chatroom"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 873
    const-string v1, "location"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 874
    const-string v1, "clean"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 875
    const-string v1, "watch"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 876
    const-string v1, "safedevice"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 877
    const-string v1, "card"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 878
    const-string v1, "search"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 880
    const-string v1, "extqlauncher"

    invoke-static {v1, v0}, Lcom/tencent/mm/ak/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 881
    return-object v0
.end method

.method public final nV()Ljava/util/List;
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    new-instance v1, Lcom/tencent/mm/r/c;

    invoke-direct {v1}, Lcom/tencent/mm/r/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v1, Lcom/tencent/mm/r/f;

    invoke-direct {v1}, Lcom/tencent/mm/r/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Lcom/tencent/mm/r/d;

    invoke-direct {v1}, Lcom/tencent/mm/r/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v1, Lcom/tencent/mm/r/e;

    invoke-direct {v1}, Lcom/tencent/mm/r/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v1, Lcom/tencent/mm/r/a;

    invoke-direct {v1}, Lcom/tencent/mm/r/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v1, Lcom/tencent/mm/r/b;

    invoke-direct {v1}, Lcom/tencent/mm/r/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v1, Lcom/tencent/mm/r/g;

    invoke-direct {v1}, Lcom/tencent/mm/r/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    return-object v0
.end method

.method public final nW()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLn:Z

    return v0
.end method

.method public final onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLo:Lcom/tencent/mm/ui/MMAppMgr;

    iget-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->bP(Landroid/content/Context;)V

    .line 196
    sget-object v0, Lcom/tencent/mm/app/WorkerProfile;->bLe:Lcom/tencent/mm/booter/i;

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/tencent/mm/model/bd;->cik:Lcom/tencent/mm/model/bd;

    const-string v1, "login_user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/bd;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/tencent/mm/booter/i;

    iget-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/tencent/mm/booter/i;-><init>(Landroid/content/Context;)V

    .line 201
    sput-object v0, Lcom/tencent/mm/app/WorkerProfile;->bLe:Lcom/tencent/mm/booter/i;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/i;->ol()V

    .line 204
    :cond_0
    invoke-static {v3}, Lcom/tencent/mm/booter/al;->J(Z)V

    .line 206
    const-string v0, "MicroMsg.WorkerProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN onCreate proc:%s pid:%d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/app/WorkerProfile;->bKY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sput-object p0, Lcom/tencent/mm/app/WorkerProfile;->bLg:Lcom/tencent/mm/app/WorkerProfile;

    .line 209
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 211
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iput-boolean v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLn:Z

    .line 219
    :goto_1
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 215
    iput-boolean v3, p0, Lcom/tencent/mm/app/WorkerProfile;->bLn:Z

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/app/WorkerProfile;->nO()Z

    goto :goto_1
.end method

.method public final onTerminate()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Lcom/tencent/mm/compatible/loader/h;->onTerminate()V

    .line 575
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLq:Lcom/tencent/mm/d/b;

    invoke-virtual {v0}, Lcom/tencent/mm/d/b;->oV()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLq:Lcom/tencent/mm/d/b;

    .line 577
    iget-object v0, p0, Lcom/tencent/mm/app/WorkerProfile;->bLo:Lcom/tencent/mm/ui/MMAppMgr;

    iget-object v1, p0, Lcom/tencent/mm/app/WorkerProfile;->cfq:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->bQ(Landroid/content/Context;)V

    .line 578
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/tencent/mm/app/WorkerProfile;->bKY:Ljava/lang/String;

    return-object v0
.end method
