.class public final Lcom/tencent/mm/sdk/platformtools/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bRA:Z


# instance fields
.field private eSY:Landroid/telephony/PhoneStateListener;

.field private gep:Landroid/telephony/TelephonyManager;

.field private geq:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->geq:Ljava/util/List;

    .line 18
    return-void
.end method

.method static synthetic M(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 10
    sput-boolean p0, Lcom/tencent/mm/sdk/platformtools/bg;->bRA:Z

    return p0
.end method

.method static synthetic a(Lcom/tencent/mm/sdk/platformtools/bg;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->geq:Ljava/util/List;

    return-object v0
.end method

.method public static wD()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/tencent/mm/sdk/platformtools/bg;->bRA:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/platformtools/bi;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->geq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public final bz(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->gep:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->gep:Landroid/telephony/TelephonyManager;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->eSY:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/bh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/sdk/platformtools/bh;-><init>(Lcom/tencent/mm/sdk/platformtools/bg;)V

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->eSY:Landroid/telephony/PhoneStateListener;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/bg;->gep:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/bg;->eSY:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 71
    return-void
.end method
